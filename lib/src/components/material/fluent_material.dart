import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Microsoft Fluent 2 规范 Surface 容器控件 [FluentMaterial]
///
/// 映射 Flutter 原生 [Material]，为下级组件提供自适应 Fluent 背景底色、阴影与圆角剪裁
class FluentMaterial extends StatelessWidget {
  final Widget? child;
  final Color? color;
  final double? elevation;
  final Color? shadowColor;
  final BorderRadius? borderRadius;
  final Clip clipBehavior;
  final ShapeBorder? shape;

  const FluentMaterial({
    super.key,
    this.child,
    this.color,
    this.elevation,
    this.shadowColor,
    this.borderRadius,
    this.clipBehavior = Clip.none,
    this.shape,
  });

  @override
  Widget build(BuildContext context) {
    final fluentTheme = FluentTheme.of(context);
    final isDark = fluentTheme.brightness == Brightness.dark;

    final Color effColor = color ?? fluentTheme.backgroundColor;
    final double effElevation = elevation ?? 0.0;
    final Color effShadowColor =
        shadowColor ?? (isDark ? Colors.black54 : Colors.black26);

    final bool isTransparent = effColor == Colors.transparent;

    return Material(
      color: effColor,
      elevation: isTransparent ? 0.0 : effElevation,
      shadowColor: isTransparent ? Colors.transparent : effShadowColor,
      borderRadius: shape == null ? borderRadius : null,
      shape: shape,
      clipBehavior: clipBehavior,
      child: child,
    );
  }
}
