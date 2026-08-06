import 'dart:ui';
import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 官方亚克力磨砂玻璃面板 [FluentAcrylic]
///
/// 移植自 Android Kotlin V2AcrylicPaneActivity.kt 与 AcrylicPane.kt
class FluentAcrylic extends StatelessWidget {
  /// 子组件 Content
  final Widget child;

  /// 模糊半径 (默认 12.0)
  final double blur;

  /// 透明度 (默认 0.75)
  final double opacity;

  /// 边框圆角 (默认 12.0)
  final double borderRadius;

  /// 自定义外边距
  final EdgeInsetsGeometry? margin;

  /// 自定义内边距
  final EdgeInsetsGeometry padding;

  const FluentAcrylic({
    super.key,
    required this.child,
    this.blur = 12.0,
    this.opacity = 0.75,
    this.borderRadius = 12.0,
    this.margin,
    this.padding = const EdgeInsets.all(16.0),
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final Color overlayColor = isDark
        ? const Color(0xFF1E1E1E).withAlpha((255 * opacity).toInt())
        : const Color(0xFFFFFFFF).withAlpha((255 * opacity).toInt());

    return Container(
      margin: margin,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(borderRadius),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: blur, sigmaY: blur),
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              color: overlayColor,
              borderRadius: BorderRadius.circular(borderRadius),
              border: Border.all(
                color: isDark
                    ? Colors.white.withAlpha(30)
                    : Colors.black.withAlpha(20),
                width: 1.0,
              ),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
