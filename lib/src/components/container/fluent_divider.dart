import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 分割线组件 [FluentDivider]
///
/// 移植自 Android Kotlin Divider.kt 与 ListItemDivider.kt
class FluentDivider extends StatelessWidget {
  /// 分割线高度/厚度 (默认 1.0)
  final double thickness;

  /// 左侧/前置缩进距离 (Inset)
  final double startIndent;

  /// 右侧/后置缩进距离 (Inset)
  final double endIndent;

  /// 颜色 (默认使用主题 dividerColor)
  final Color? color;

  const FluentDivider({
    super.key,
    this.thickness = 1.0,
    this.startIndent = 0.0,
    this.endIndent = 0.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final dividerColor = color ?? theme.dividerColor;

    return Divider(
      height: thickness,
      thickness: thickness,
      indent: startIndent,
      endIndent: endIndent,
      color: dividerColor,
    );
  }
}
