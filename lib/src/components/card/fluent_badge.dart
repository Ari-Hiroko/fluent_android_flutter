import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// 徽章款式 [FluentBadgeStyle]
enum FluentBadgeStyle {
  /// 品牌蓝风格 (Brand)
  brand,

  /// 中性灰色风格 (Neutral)
  neutral,

  /// 危险红警示风格 (Danger Red)
  danger,
}

/// Fluent 2 官方徽章组件 [FluentBadge]
///
/// 移植自 Android Kotlin Badge.kt 与 V2BadgeActivity.kt
class FluentBadge extends StatelessWidget {
  /// 徽章文本 (为 null 时呈现纯圆点 Dot Badge)
  final String? text;

  /// 徽章款式
  final FluentBadgeStyle style;

  /// 包裹的 Target Child 组件 (可选，为 null 时独立展示)
  final Widget? child;

  /// 偏移量 (当包裹 child 时生效)
  final Alignment alignment;

  const FluentBadge({
    super.key,
    this.text,
    this.style = FluentBadgeStyle.danger,
    this.child,
    this.alignment = Alignment.topRight,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    Color bgColor;
    Color textColor = Colors.white;

    switch (style) {
      case FluentBadgeStyle.brand:
        bgColor = theme.primaryColor;
        textColor = Colors.white;
        break;
      case FluentBadgeStyle.neutral:
        bgColor = theme.brightness == Brightness.dark
            ? const Color(0xFF484848)
            : const Color(0xFFD1D1D1);
        textColor = theme.foregroundColor;
        break;
      case FluentBadgeStyle.danger:
        bgColor = FluentGlobalTokens.sharedRed;
        textColor = Colors.white;
        break;
    }

    final bool isDot = text == null || text!.isEmpty;

    Widget badgeContent = Container(
      constraints: isDot
          ? const BoxConstraints(minWidth: 8.0, minHeight: 8.0)
          : const BoxConstraints(minWidth: 18.0, minHeight: 18.0),
      padding: isDot
          ? EdgeInsets.zero
          : const EdgeInsets.symmetric(horizontal: 5.0, vertical: 1.5),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: isDot
          ? const SizedBox(width: 8.0, height: 8.0)
          : Text(
              text!,
              style: TextStyle(
                fontSize: 10.0,
                fontWeight: FontWeight.bold,
                color: textColor,
                height: 1.1,
              ),
              textAlign: TextAlign.center,
            ),
    );

    if (child == null) {
      return badgeContent;
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        child!,
        Positioned(
          top: alignment == Alignment.topRight || alignment == Alignment.topLeft ? -4.0 : null,
          bottom: alignment == Alignment.bottomRight || alignment == Alignment.bottomLeft ? -4.0 : null,
          right: alignment == Alignment.topRight || alignment == Alignment.bottomRight ? -4.0 : null,
          left: alignment == Alignment.topLeft || alignment == Alignment.bottomLeft ? -4.0 : null,
          child: badgeContent,
        ),
      ],
    );
  }
}
