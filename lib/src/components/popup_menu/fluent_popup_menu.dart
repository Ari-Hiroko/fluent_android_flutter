import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import '../../theme/fluent_theme_data.dart';
import 'popup_menu_item.dart';
import 'popup_menu_item_view.dart';

/// 弹出菜单核心 Widget [FluentPopupMenu<T>]
class FluentPopupMenu<T> extends StatefulWidget {
  /// 菜单项列表
  final List<FluentPopupMenuItem<T>> items;

  /// 选择指示器行为模式 (none, single, all)
  final FluentItemCheckableBehavior checkableBehavior;

  /// 点击菜单项时的回调通知 (传回 item.value)
  final ValueChanged<T?>? onSelected;

  /// 菜单项变动时的状态通知 (例如在多选/单选模式下状态改变)
  final ValueChanged<List<FluentPopupMenuItem<T>>>? onItemsChanged;

  /// 点击菜单项后是否自动关闭菜单 (默认为: non/single 自动关闭，all 不关闭)
  final bool? autoDismiss;

  /// 关闭菜单的回调
  final VoidCallback? onDismiss;

  const FluentPopupMenu({
    super.key,
    required this.items,
    this.checkableBehavior = FluentItemCheckableBehavior.none,
    this.onSelected,
    this.onItemsChanged,
    this.autoDismiss,
    this.onDismiss,
  });

  @override
  State<FluentPopupMenu<T>> createState() => _FluentPopupMenuState<T>();
}

class _FluentPopupMenuState<T> extends State<FluentPopupMenu<T>> {
  late List<FluentPopupMenuItem<T>> _items;

  @override
  void initState() {
    super.initState();
    _items = List.of(widget.items);
  }

  @override
  void didUpdateWidget(covariant FluentPopupMenu<T> oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.items != widget.items) {
      _items = List.of(widget.items);
    }
  }

  void _handleItemClick(int index) {
    final item = _items[index];
    if (!item.enabled) return;

    setState(() {
      if (widget.checkableBehavior == FluentItemCheckableBehavior.single) {
        // 单选模式：只将当前项设为 checked，其余取消
        for (int i = 0; i < _items.length; i++) {
          _items[i].isChecked = (i == index);
        }
      } else if (widget.checkableBehavior == FluentItemCheckableBehavior.all) {
        // 多选模式：反转当前项状态
        item.isChecked = !item.isChecked;
      }
    });

    item.onTap?.call();
    widget.onSelected?.call(item.value);
    widget.onItemsChanged?.call(_items);

    // 默认关闭规则: single/none 自动 dismiss, all 保持开启
    final shouldDismiss =
        widget.autoDismiss ??
        (widget.checkableBehavior != FluentItemCheckableBehavior.all);

    if (shouldDismiss) {
      widget.onDismiss?.call();
    }
  }

  /// 依据 FluentUI dimens.xml 规范计算菜单最小宽度
  double _calculateMinWidth() {
    final hasIcon = _items.any((it) => it.icon != null);
    // min_width_icon = 172dp, min_width_no_icon = 132dp
    return hasIcon ? 172.0 : 132.0;
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final minWidth = _calculateMinWidth();

    return Material(
      color: Colors.transparent,
      elevation: theme.elevation,
      shadowColor: Colors.black.withAlpha(64),
      borderRadius: BorderRadius.circular(theme.cornerRadius),
      child: Container(
        constraints: BoxConstraints(minWidth: minWidth, maxWidth: 280.0),
        decoration: BoxDecoration(
          color: theme.popupMenuBackgroundColor,
          borderRadius: BorderRadius.circular(theme.cornerRadius),
          border: Border.all(
            color: theme.dividerColor.withAlpha(64),
            width: 1.0,
          ),
        ),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(theme.cornerRadius),
          child: IntrinsicWidth(
            child: SingleChildScrollView(
              padding: const EdgeInsets.symmetric(vertical: 4.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(_items.length, (index) {
                  return FluentPopupMenuItemView<T>(
                    item: _items[index],
                    checkableBehavior: widget.checkableBehavior,
                    onItemClicked: () => _handleItemClick(index),
                  );
                }),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// 全局便捷函数 [showFluentPopupMenu<T>]
///
/// 符合 Flutter 原生 `showMenu<T>` 操作习惯，弹出 Fluent 风格菜单
Future<T?> showFluentPopupMenu<T>({
  required BuildContext context,
  Rect? targetRect,
  Offset? offset,
  required List<FluentPopupMenuItem<T>> items,
  FluentItemCheckableBehavior checkableBehavior =
      FluentItemCheckableBehavior.none,
}) async {
  final RenderBox? button = context.findRenderObject() as RenderBox?;
  final OverlayState overlay = Overlay.of(context);
  final RenderBox overlayBox = overlay.context.findRenderObject() as RenderBox;

  Rect rect;
  if (targetRect != null) {
    rect = targetRect;
  } else if (button != null) {
    final position = button.localToGlobal(Offset.zero, ancestor: overlayBox);
    rect = position & button.size;
  } else {
    rect = Rect.fromLTWH(0, 0, overlayBox.size.width, overlayBox.size.height);
  }

  if (offset != null) {
    rect = rect.shift(offset);
  }

  final fluentTheme = FluentTheme.of(context);
  T? selectedValue;

  await Navigator.of(context).push(
    _FluentPopupMenuRoute<void>(
      anchorRect: rect,
      overlaySize: overlayBox.size,
      themeData: fluentTheme,
      builder: (dismiss) {
        return FluentPopupMenu<T>(
          items: items,
          checkableBehavior: checkableBehavior,
          onSelected: (val) {
            selectedValue = val;
          },
          onDismiss: dismiss,
        );
      },
    ),
  );

  return selectedValue;
}

/// 弹出菜单路由与 CustomSingleChildLayout 定位机制
class _FluentPopupMenuRoute<R> extends PopupRoute<R> {
  final Rect anchorRect;
  final Size overlaySize;
  final Fluent2ThemeData themeData;
  final Widget Function(VoidCallback dismiss) builder;

  _FluentPopupMenuRoute({
    required this.anchorRect,
    required this.overlaySize,
    required this.themeData,
    required this.builder,
  });

  @override
  Duration get transitionDuration => const Duration(milliseconds: 150);

  @override
  bool get barrierDismissible => true;

  @override
  Color? get barrierColor => Colors.transparent;

  @override
  String? get barrierLabel => 'Dismiss';

  @override
  Widget buildPage(
    BuildContext context,
    Animation<double> animation,
    Animation<double> secondaryAnimation,
  ) {
    return FluentTheme(
      data: themeData,
      child: CustomSingleChildLayout(
        delegate: _FluentPopupMenuLayoutDelegate(
          anchorRect: anchorRect,
          overlaySize: overlaySize,
        ),
        child: ScaleTransition(
          scale: CurvedAnimation(parent: animation, curve: Curves.easeOutCubic),
          alignment: Alignment.topLeft,
          child: FadeTransition(
            opacity: animation,
            child: builder(() => Navigator.of(context).pop()),
          ),
        ),
      ),
    );
  }
}

/// 精确计算 PopupMenu 在屏幕 overlay 中坐标的 LayoutDelegate
class _FluentPopupMenuLayoutDelegate extends SingleChildLayoutDelegate {
  final Rect anchorRect;
  final Size overlaySize;

  _FluentPopupMenuLayoutDelegate({
    required this.anchorRect,
    required this.overlaySize,
  });

  @override
  BoxConstraints getConstraintsForChild(BoxConstraints constraints) {
    return BoxConstraints.loose(
      overlaySize,
    ).deflate(const EdgeInsets.all(12.0));
  }

  @override
  Offset getPositionForChild(Size size, Size childSize) {
    // 1. 计算纵向 Y 坐标
    double y;

    // 若 anchor 覆盖全屏 (如由页面 root context 触发)，则在屏幕上半区域居中显示
    if (anchorRect.height >= overlaySize.height * 0.7) {
      y = 100.0;
    } else {
      final double spaceBelow = overlaySize.height - anchorRect.bottom - 12.0;
      final double spaceAbove = anchorRect.top - 12.0;

      if (spaceBelow >= childSize.height || spaceBelow >= spaceAbove) {
        y = anchorRect.bottom + 4.0;
      } else {
        y = anchorRect.top - childSize.height - 4.0;
      }
    }

    y = y.clamp(12.0, overlaySize.height - childSize.height - 12.0);

    // 2. 计算横向 X 坐标
    double x;
    if (anchorRect.width >= overlaySize.width * 0.7) {
      x = (overlaySize.width - childSize.width) / 2;
    } else {
      x = anchorRect.left;
      if (x + childSize.width > overlaySize.width - 12.0) {
        x = overlaySize.width - childSize.width - 12.0;
      }
    }

    x = x.clamp(12.0, overlaySize.width - childSize.width - 12.0);

    return Offset(x, y);
  }

  @override
  bool shouldRelayout(_FluentPopupMenuLayoutDelegate oldDelegate) {
    return anchorRect != oldDelegate.anchorRect ||
        overlaySize != oldDelegate.overlaySize;
  }
}
