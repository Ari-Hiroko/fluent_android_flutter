import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Tokenized 风格的 Fluent 2 气泡菜单容器组件 [FluentMenu]
///
/// 对应 Jetpack Compose 版本的 Menu / MenuContent 实现，
/// 包含 scale (0.8 -> 1.0) 与 alpha 进场/出场动画及屏幕避让能力。
class FluentMenu extends StatefulWidget {
  /// 菜单内部内容组件 (如 List, Action 组等)
  final Widget child;

  /// 菜单外边距与内边距
  final EdgeInsetsGeometry padding;

  /// 自定义圆角
  final double? cornerRadius;

  /// 自定义阴影高度
  final double? elevation;

  const FluentMenu({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.symmetric(vertical: 8.0),
    this.cornerRadius,
    this.elevation,
  });

  @override
  State<FluentMenu> createState() => _FluentMenuState();
}

class _FluentMenuState extends State<FluentMenu>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    // 对应 Kotlin 代码中 InTransitionDuration (120ms)
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 120),
      reverseDuration: const Duration(milliseconds: 75),
    );

    _scaleAnimation = Tween<double>(
      begin: 0.8,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutCubic));
    _fadeAnimation = Tween<double>(
      begin: 0.0,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOut));

    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final radius = widget.cornerRadius ?? theme.cornerRadius;
    final shadowElevation = widget.elevation ?? theme.elevation;

    return AnimatedBuilder(
      animation: _controller,
      builder: (context, child) {
        return Transform.scale(
          scale: _scaleAnimation.value,
          child: Opacity(
            opacity: _fadeAnimation.value,
            child: FluentMaterial(
              color: Colors.transparent,
              elevation: shadowElevation,
              shadowColor: Colors.black.withAlpha(48),
              borderRadius: BorderRadius.circular(radius),
              child: Container(
                decoration: BoxDecoration(
                  color: theme.popupMenuBackgroundColor,
                  borderRadius: BorderRadius.circular(radius),
                  border: Border.all(
                    color: theme.dividerColor.withAlpha(48),
                    width: 1.0,
                  ),
                ),
                padding: widget.padding,
                child: widget.child,
              ),
            ),
          ),
        );
      },
    );
  }
}

/// 便捷弹出 [FluentMenu] 的全局函数
Future<T?> showFluentMenu<T>({
  required BuildContext context,
  required Widget child,
  Offset? offset,
}) {
  final RenderBox? button = context.findRenderObject() as RenderBox?;
  final OverlayState overlay = Overlay.of(context);
  final RenderBox overlayBox = overlay.context.findRenderObject() as RenderBox;

  Rect rect;
  if (button != null) {
    final position = button.localToGlobal(Offset.zero, ancestor: overlayBox);
    rect = position & button.size;
  } else {
    rect = Rect.fromLTWH(0, 0, overlayBox.size.width, overlayBox.size.height);
  }

  if (offset != null) {
    rect = rect.shift(offset);
  }

  final fluentTheme = FluentTheme.of(context);

  return Navigator.of(context).push<T>(
    PageRouteBuilder<T>(
      opaque: false,
      barrierDismissible: true,
      barrierColor: Colors.black12,
      transitionDuration: const Duration(milliseconds: 120),
      reverseTransitionDuration: const Duration(milliseconds: 75),
      pageBuilder: (context, anim, secondaryAnim) {
        final topPos = (rect.bottom + 6.0).clamp(
          12.0,
          overlayBox.size.height - 100.0,
        );
        final leftPos = rect.left.clamp(12.0, overlayBox.size.width - 220.0);

        return FluentTheme(
          themeData: fluentTheme,
          child: Stack(
            children: [
              Positioned(
                left: leftPos,
                top: topPos,
                child: FluentMenu(child: child),
              ),
            ],
          ),
        );
      },
    ),
  );
}
