import 'package:flutter/material.dart';
import 'fluent_popup_menu.dart';
import 'popup_menu_item.dart';

/// 符合 Flutter 原生 [PopupMenuButton] 使用习惯的 [FluentPopupMenuButton<T>]
class FluentPopupMenuButton<T> extends StatelessWidget {
  /// 构建菜单项列表的回调
  final List<FluentPopupMenuItem<T>> Function(BuildContext context) itemBuilder;

  /// 选中某项时的回调
  final ValueChanged<T?>? onSelected;

  /// 选择框指示器行为模式
  final FluentItemCheckableBehavior checkableBehavior;

  /// 自定义触发器图标
  final Widget? icon;

  /// 自定义触发器 Child Widget (如果提供 child，则优先渲染 child)
  final Widget? child;

  /// 菜单相对 Offset 偏移
  final Offset offset;

  /// 按钮 Tooltip 提示
  final String? tooltip;

  const FluentPopupMenuButton({
    super.key,
    required this.itemBuilder,
    this.onSelected,
    this.checkableBehavior = FluentItemCheckableBehavior.none,
    this.icon,
    this.child,
    this.offset = Offset.zero,
    this.tooltip,
  });

  void _showMenu(BuildContext context) {
    final items = itemBuilder(context);
    showFluentPopupMenu<T>(
      context: context,
      items: items,
      checkableBehavior: checkableBehavior,
      offset: offset,
    ).then((selected) {
      if (selected != null) {
        onSelected?.call(selected);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    if (child != null) {
      return InkWell(
        onTap: () => _showMenu(context),
        child: child,
      );
    }

    return IconButton(
      icon: icon ?? const Icon(Icons.more_vert),
      tooltip: tooltip ?? 'Show Menu',
      onPressed: () => _showMenu(context),
    );
  }
}
