import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// 侧边抽屉弹出位置 [FluentDrawerPosition]
enum FluentDrawerPosition {
  /// 左侧弹出 (导航菜单)
  left,

  /// 右侧弹出 (筛选/详情 SideSheet)
  right,

  /// 顶部弹出
  top,

  /// 底部弹出
  bottom,
}

/// Fluent 2 侧边抽屉组件 [FluentDrawer]
///
/// 符合 Fluent 2 Design System 规范，支持单侧圆角与 Surface 阴影。
/// 可在 [Scaffold.drawer] / [Scaffold.endDrawer] 中直接使用，
/// 也可通过 [showFluentDrawer] 便捷弹出。
class FluentDrawer extends StatelessWidget {
  /// 抽屉自定义主体内容 Widget
  final Widget? child;

  /// 抽屉顶部/头部 Widget (可选)
  final Widget? header;

  /// 抽屉列表项列表 (可选，与 [child] 配合或独立组装)
  final List<Widget>? items;

  /// 抽屉底部 Widget (可选)
  final Widget? footer;

  /// 弹出位置 (left / right / top / bottom)
  final FluentDrawerPosition position;

  /// 抽屉宽度 (仅对 left / right 生效，默认 280.0dp)
  final double? width;

  /// 抽屉高度 (仅对 top / bottom 生效，默认 320.0dp)
  final double? height;

  /// 背景颜色 (默认使用 [FluentTheme.backgroundColor])
  final Color? backgroundColor;

  /// 阴影高度 (默认使用 [FluentGlobalTokens.shadow28])
  final double? elevation;

  /// 阴影颜色
  final Color? shadowColor;

  /// 圆角半径 (默认遵循 Fluent 2 抽屉规范)
  final BorderRadius? borderRadius;

  /// 内边距
  final EdgeInsetsGeometry? padding;

  /// 外边距
  final EdgeInsetsGeometry? margin;

  /// 是否启用 SafeArea 防遮挡 (默认 true)
  final bool useSafeArea;

  /// 剪裁行为 (默认 Clip.antiAlias)
  final Clip clipBehavior;

  const FluentDrawer({
    super.key,
    this.child,
    this.header,
    this.items,
    this.footer,
    this.position = FluentDrawerPosition.left,
    this.width = 280.0,
    this.height = 320.0,
    this.backgroundColor,
    this.elevation,
    this.shadowColor,
    this.borderRadius,
    this.padding,
    this.margin,
    this.useSafeArea = true,
    this.clipBehavior = Clip.antiAlias,
  });

  BorderRadius _resolveBorderRadius(FluentThemeData theme) {
    if (borderRadius != null) return borderRadius!;
    final double radius = theme.cornerRadius * 2;
    switch (position) {
      case FluentDrawerPosition.left:
        return BorderRadius.only(
          topRight: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        );
      case FluentDrawerPosition.right:
        return BorderRadius.only(
          topLeft: Radius.circular(radius),
          bottomLeft: Radius.circular(radius),
        );
      case FluentDrawerPosition.top:
        return BorderRadius.only(
          bottomLeft: Radius.circular(radius),
          bottomRight: Radius.circular(radius),
        );
      case FluentDrawerPosition.bottom:
        return BorderRadius.only(
          topLeft: Radius.circular(radius),
          topRight: Radius.circular(radius),
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final effectiveBgColor = backgroundColor ?? theme.backgroundColor;
    final effectiveElevation = elevation ?? FluentGlobalTokens.shadow28;
    final effectiveShadowColor = shadowColor ?? Colors.black.withAlpha(80);
    final effectiveRadius = _resolveBorderRadius(theme);

    Widget content;

    if (child != null) {
      content = child!;
    } else {
      content = Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          if (header != null) ...[header!],
          if (items != null)
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: items!.length,
                itemBuilder: (context, index) => items![index],
              ),
            ),
          if (footer != null) ...[
            Divider(height: 1.0, color: theme.dividerColor),
            footer!,
          ],
        ],
      );
    }

    if (padding != null) {
      content = Padding(padding: padding!, child: content);
    }

    if (useSafeArea) {
      content = SafeArea(child: content);
    }

    final isHorizontal =
        position == FluentDrawerPosition.left ||
        position == FluentDrawerPosition.right;

    final containerWidth = isHorizontal ? width : double.infinity;
    final containerHeight = isHorizontal ? double.infinity : height;

    Widget result = Container(
      width: containerWidth,
      height: containerHeight,
      margin: margin,
      decoration: BoxDecoration(
        color: effectiveBgColor,
        borderRadius: effectiveRadius,
      ),
      child: content,
    );

    return FluentMaterial(
      color: effectiveBgColor,
      elevation: effectiveElevation,
      shadowColor: effectiveShadowColor,
      borderRadius: effectiveRadius,
      clipBehavior: clipBehavior,
      child: result,
    );
  }
}

/// 符合 Flutter 操作习惯的侧边抽屉便捷弹出函数 [showFluentDrawer<T>]
///
/// 支持 [builder] 或 [child] 入参。
/// 支持手势拖拽滑动关闭 ([enableDrag] = true)。
Future<T?> showFluentDrawer<T>({
  required BuildContext context,
  WidgetBuilder? builder,
  Widget? child,
  FluentDrawerPosition position = FluentDrawerPosition.left,
  double? width = 280.0,
  double? height = 320.0,
  Color? backgroundColor,
  Color barrierColor = Colors.black54,
  bool barrierDismissible = true,
  String? barrierLabel,
  bool useRootNavigator = true,
  RouteSettings? routeSettings,
  bool enableDrag = true,
}) {
  assert(
    builder != null || child != null,
    'Either builder or child must be provided to showFluentDrawer.',
  );

  final fluentTheme = FluentTheme.of(context);
  final navigator = Navigator.of(context, rootNavigator: useRootNavigator);

  return navigator.push<T>(
    PageRouteBuilder<T>(
      opaque: false,
      barrierDismissible: barrierDismissible,
      barrierColor: barrierColor,
      barrierLabel: barrierLabel,
      settings: routeSettings,
      transitionDuration: const Duration(milliseconds: 250),
      reverseTransitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (pageContext, anim, secondaryAnim) {
        final contentWidget = builder != null ? builder(pageContext) : child!;

        final Widget rawDrawer = contentWidget is FluentDrawer
            ? contentWidget
            : FluentDrawer(
                position: position,
                width: width,
                height: height,
                backgroundColor: backgroundColor,
                child: contentWidget,
              );

        return FluentTheme(
          themeData: fluentTheme,
          child: _FluentDrawerDismissibleWrapper(
            position: position,
            animation: anim,
            enableDrag: enableDrag,
            onDismissed: () => Navigator.of(pageContext).pop(),
            child: rawDrawer,
          ),
        );
      },
    ),
  );
}

class _FluentDrawerDismissibleWrapper extends StatefulWidget {
  final FluentDrawerPosition position;
  final Animation<double> animation;
  final bool enableDrag;
  final VoidCallback onDismissed;
  final Widget child;

  const _FluentDrawerDismissibleWrapper({
    required this.position,
    required this.animation,
    required this.enableDrag,
    required this.onDismissed,
    required this.child,
  });

  @override
  State<_FluentDrawerDismissibleWrapper> createState() =>
      __FluentDrawerDismissibleWrapperState();
}

class __FluentDrawerDismissibleWrapperState
    extends State<_FluentDrawerDismissibleWrapper> {
  double _dragOffset = 0.0;
  bool _isDragging = false;

  Alignment _resolveAlignment() {
    switch (widget.position) {
      case FluentDrawerPosition.left:
        return Alignment.centerLeft;
      case FluentDrawerPosition.right:
        return Alignment.centerRight;
      case FluentDrawerPosition.top:
        return Alignment.topCenter;
      case FluentDrawerPosition.bottom:
        return Alignment.bottomCenter;
    }
  }

  Offset _getBeginOffset() {
    switch (widget.position) {
      case FluentDrawerPosition.left:
        return const Offset(-1.0, 0.0);
      case FluentDrawerPosition.right:
        return const Offset(1.0, 0.0);
      case FluentDrawerPosition.top:
        return const Offset(0.0, -1.0);
      case FluentDrawerPosition.bottom:
        return const Offset(0.0, 1.0);
    }
  }

  @override
  Widget build(BuildContext context) {
    final beginOffset = _getBeginOffset();

    Widget result = SlideTransition(
      position: Tween<Offset>(
        begin: beginOffset,
        end: Offset.zero,
      ).animate(
        CurvedAnimation(
          parent: widget.animation,
          curve: Curves.easeOutCubic,
          reverseCurve: Curves.easeInCubic,
        ),
      ),
      child: Transform.translate(
        offset: _computeDragOffset(),
        child: widget.child,
      ),
    );

    if (widget.enableDrag) {
      result = GestureDetector(
        onHorizontalDragUpdate:
            (widget.position == FluentDrawerPosition.left ||
                    widget.position == FluentDrawerPosition.right)
                ? _handleDragUpdate
                : null,
        onHorizontalDragEnd:
            (widget.position == FluentDrawerPosition.left ||
                    widget.position == FluentDrawerPosition.right)
                ? _handleDragEnd
                : null,
        onVerticalDragUpdate:
            (widget.position == FluentDrawerPosition.top ||
                    widget.position == FluentDrawerPosition.bottom)
                ? _handleDragUpdate
                : null,
        onVerticalDragEnd:
            (widget.position == FluentDrawerPosition.top ||
                    widget.position == FluentDrawerPosition.bottom)
                ? _handleDragEnd
                : null,
        behavior: HitTestBehavior.translucent,
        child: result,
      );
    }

    return Align(
      alignment: _resolveAlignment(),
      child: result,
    );
  }

  Offset _computeDragOffset() {
    if (!_isDragging && _dragOffset == 0.0) return Offset.zero;
    switch (widget.position) {
      case FluentDrawerPosition.left:
        return Offset(_dragOffset.clamp(-300.0, 0.0), 0.0);
      case FluentDrawerPosition.right:
        return Offset(_dragOffset.clamp(0.0, 300.0), 0.0);
      case FluentDrawerPosition.top:
        return Offset(0.0, _dragOffset.clamp(-300.0, 0.0));
      case FluentDrawerPosition.bottom:
        return Offset(0.0, _dragOffset.clamp(0.0, 300.0));
    }
  }

  void _handleDragUpdate(DragUpdateDetails details) {
    setState(() {
      _isDragging = true;
      if (widget.position == FluentDrawerPosition.left ||
          widget.position == FluentDrawerPosition.right) {
        _dragOffset += details.delta.dx;
      } else {
        _dragOffset += details.delta.dy;
      }
    });
  }

  void _handleDragEnd(DragEndDetails details) {
    final bool shouldDismiss;
    const double threshold = 80.0;
    const double velocityThreshold = 200.0;

    switch (widget.position) {
      case FluentDrawerPosition.left:
        shouldDismiss =
            _dragOffset < -threshold ||
            (details.primaryVelocity ?? 0) < -velocityThreshold;
        break;
      case FluentDrawerPosition.right:
        shouldDismiss =
            _dragOffset > threshold ||
            (details.primaryVelocity ?? 0) > velocityThreshold;
        break;
      case FluentDrawerPosition.top:
        shouldDismiss =
            _dragOffset < -threshold ||
            (details.primaryVelocity ?? 0) < -velocityThreshold;
        break;
      case FluentDrawerPosition.bottom:
        shouldDismiss =
            _dragOffset > threshold ||
            (details.primaryVelocity ?? 0) > velocityThreshold;
        break;
    }

    if (shouldDismiss) {
      widget.onDismissed();
    } else {
      setState(() {
        _isDragging = false;
        _dragOffset = 0.0;
      });
    }
  }
}
