import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 字体样式枚举 [FluentLabelStyle]
enum FluentLabelStyle {
  display,
  largeTitle,
  title1,
  title2,
  title3,
  body1Strong,
  body1,
  body2Strong,
  body2,
  caption1Strong,
  caption1,
  caption2,
}

/// Fluent 2 官方 Label 文本标签组件 [FluentLabel]
///
/// 完全移植自 Android Kotlin Label.kt 与 V2LabelUITest.kt
class FluentLabel extends StatelessWidget {
  /// 文本内容
  final String text;

  /// 字体样式风格 (对应 TypographyTokens)
  final FluentLabelStyle style;

  /// 自定义文本颜色
  final Color? color;

  /// 最大行数
  final int? maxLines;

  /// 文本对齐
  final TextAlign? textAlign;

  /// 文本截断方式
  final TextOverflow? overflow;

  const FluentLabel({
    super.key,
    required this.text,
    this.style = FluentLabelStyle.body1,
    this.color,
    this.maxLines,
    this.textAlign,
    this.overflow,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final Color textColor = color ?? theme.foregroundColor;

    TextStyle textStyle;

    switch (style) {
      case FluentLabelStyle.display:
        textStyle = TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold, height: 1.25);
        break;
      case FluentLabelStyle.largeTitle:
        textStyle = TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold, height: 1.25);
        break;
      case FluentLabelStyle.title1:
        textStyle = TextStyle(fontSize: 24.0, fontWeight: FontWeight.bold, height: 1.25);
        break;
      case FluentLabelStyle.title2:
        textStyle = TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold, height: 1.25);
        break;
      case FluentLabelStyle.title3:
        textStyle = TextStyle(fontSize: 16.0, fontWeight: FontWeight.w600, height: 1.3);
        break;
      case FluentLabelStyle.body1Strong:
        textStyle = TextStyle(fontSize: 15.0, fontWeight: FontWeight.w600, height: 1.35);
        break;
      case FluentLabelStyle.body1:
        textStyle = TextStyle(fontSize: 15.0, fontWeight: FontWeight.normal, height: 1.35);
        break;
      case FluentLabelStyle.body2Strong:
        textStyle = TextStyle(fontSize: 13.0, fontWeight: FontWeight.w600, height: 1.35);
        break;
      case FluentLabelStyle.body2:
        textStyle = TextStyle(fontSize: 13.0, fontWeight: FontWeight.normal, height: 1.35);
        break;
      case FluentLabelStyle.caption1Strong:
        textStyle = TextStyle(fontSize: 12.0, fontWeight: FontWeight.w600, height: 1.35);
        break;
      case FluentLabelStyle.caption1:
        textStyle = TextStyle(fontSize: 12.0, fontWeight: FontWeight.normal, height: 1.35);
        break;
      case FluentLabelStyle.caption2:
        textStyle = TextStyle(fontSize: 11.0, fontWeight: FontWeight.normal, height: 1.35);
        break;
    }

    return Text(
      text,
      style: textStyle.copyWith(color: textColor),
      maxLines: maxLines,
      textAlign: textAlign,
      overflow: overflow,
    );
  }
}
