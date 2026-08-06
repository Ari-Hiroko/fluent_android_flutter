import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 环形加载指示器 [FluentCircularProgressIndicator]
class FluentCircularProgressIndicator extends StatelessWidget {
  final double? value;
  final double strokeWidth;
  final Color? color;
  final double size;

  const FluentCircularProgressIndicator({
    super.key,
    this.value,
    this.strokeWidth = 3.0,
    this.color,
    this.size = 28.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final indicatorColor = color ?? theme.primaryColor;

    return SizedBox(
      width: size,
      height: size,
      child: CircularProgressIndicator(
        value: value,
        strokeWidth: strokeWidth,
        valueColor: AlwaysStoppedAnimation<Color>(indicatorColor),
        backgroundColor: indicatorColor.withAlpha(40),
      ),
    );
  }
}

/// Fluent 2 条形进度条组件 [FluentLinearProgressIndicator]
class FluentLinearProgressIndicator extends StatelessWidget {
  final double? value;
  final double height;
  final Color? color;

  const FluentLinearProgressIndicator({
    super.key,
    this.value,
    this.height = 4.0,
    this.color,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final indicatorColor = color ?? theme.primaryColor;

    return ClipRRect(
      borderRadius: BorderRadius.circular(FluentGlobalTokens.cornerRadiusCircular),
      child: SizedBox(
        height: height,
        child: LinearProgressIndicator(
          value: value,
          valueColor: AlwaysStoppedAnimation<Color>(indicatorColor),
          backgroundColor: indicatorColor.withAlpha(40),
        ),
      ),
    );
  }
}
