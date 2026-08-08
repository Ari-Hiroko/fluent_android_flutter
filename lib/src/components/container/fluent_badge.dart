import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// 徽章类型 [FluentBadgeType]
///
/// 完全映射自 Android Kotlin BadgeType (Dot, Character, List)
enum FluentBadgeType {
  /// 纯圆点徽章 (6dp 红点 + 1dp 隔离边框)
  dot,

  /// 紧凑字符徽章 (用于 TabBar、Icon 右上角与字符标注，超小高度 14dp，字号 9sp)
  character,

  /// 列表项徽章 (用于 ListItem 列表项后缀，高度 18dp，字号 11sp)
  list,
}

/// 徽章款式 [FluentBadgeStyle]
enum FluentBadgeStyle {
  /// 品牌蓝风格 (Brand)
  brand,

  /// 中性灰色风格 (Neutral)
  neutral,

  /// 危险红警示风格 (Danger Red)
  danger,
}

/// Fluent 2 徽章组件 [FluentBadge]
///
/// 100% 移植自 Android Kotlin Badge.kt, BadgeTokens.kt 与 V2BadgeActivity.kt
class FluentBadge extends StatelessWidget {
  /// 徽章文本 (为 null 时自动判定为 Dot 纯圆点 Badge)
  final String? text;

  /// 徽章类型 (dot, character, list)
  final FluentBadgeType? badgeType;

  /// 徽章款式 (danger, brand, neutral)
  final FluentBadgeStyle style;

  /// 是否包含外圈隔离描边边框 (例如包裹 Avatar / Icon 时隔开背景)
  final bool showBorder;

  /// 描边边框颜色 (默认采用 Theme 的 backgroundColor，或白色)
  final Color? borderColor;

  /// 包裹的 Target Child 组件 (可选，为 null 时独立展示)
  final Widget? child;

  /// 相对 Child 的附着方位 (当包裹 child 时生效，默认 Alignment.topRight)
  final Alignment alignment;

  const FluentBadge({
    super.key,
    this.text,
    this.badgeType,
    this.style = FluentBadgeStyle.danger,
    this.showBorder = false,
    this.borderColor,
    this.child,
    this.alignment = Alignment.topRight,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    Color bgColor;
    Color textColor = Colors.white;

    switch (style) {
      case FluentBadgeStyle.brand:
        bgColor = theme.primaryColor;
        textColor = Colors.white;
        break;
      case FluentBadgeStyle.neutral:
        bgColor = isDark ? const Color(0xFF484848) : const Color(0xFFD1D1D1);
        textColor = isDark ? Colors.white : theme.foregroundColor;
        break;
      case FluentBadgeStyle.danger:
        bgColor = FluentGlobalTokens.sharedRed;
        textColor = Colors.white;
        break;
    }

    final bool isDot = (text == null || text!.isEmpty) &&
        (badgeType == null || badgeType == FluentBadgeType.dot);

    final FluentBadgeType effectiveType = badgeType ??
        (isDot ? FluentBadgeType.dot : FluentBadgeType.character);

    final Color effectiveBorderColor =
        borderColor ?? (isDark ? const Color(0xFF1F1F1F) : Colors.white);

    Widget badgeContent;

    if (effectiveType == FluentBadgeType.dot) {
      // 纯 Dot 圆点 Badge (6dp 精致小点)
      badgeContent = Container(
        width: showBorder ? 8.0 : 6.0,
        height: showBorder ? 8.0 : 6.0,
        decoration: BoxDecoration(
          color: bgColor,
          shape: BoxShape.circle,
          border: showBorder
              ? Border.all(color: effectiveBorderColor, width: 1.0)
              : null,
        ),
      );
    } else if (effectiveType == FluentBadgeType.character) {
      // 紧凑字符 Character Badge (高度 14dp, 字号 9sp, 胶囊形)
      badgeContent = Container(
        constraints: const BoxConstraints(minWidth: 14.0, minHeight: 14.0),
        height: 14.0,
        padding: const EdgeInsets.symmetric(horizontal: 3.5),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(7.0),
          border: showBorder
              ? Border.all(color: effectiveBorderColor, width: 1.0)
              : null,
        ),
        alignment: Alignment.center,
        child: Text(
          text ?? '',
          style: TextStyle(
            fontSize: 9.0,
            fontWeight: FontWeight.bold,
            color: textColor,
            height: 1.0,
            letterSpacing: -0.2,
          ),
          textAlign: TextAlign.center,
        ),
      );
    } else {
      // 列表项 List Badge (高度 18dp, 字号 11sp, 胶囊形)
      badgeContent = Container(
        constraints: const BoxConstraints(minWidth: 18.0, minHeight: 18.0),
        height: 18.0,
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(9.0),
          border: showBorder
              ? Border.all(color: effectiveBorderColor, width: 1.0)
              : null,
        ),
        alignment: Alignment.center,
        child: Text(
          text ?? '',
          style: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.bold,
            color: textColor,
            height: 1.0,
          ),
          textAlign: TextAlign.center,
        ),
      );
    }

    if (child == null) {
      return badgeContent;
    }

    // 附着在 Child 上的定位逻辑
    double? top, bottom, left, right;
    const double offset = -3.0;

    if (alignment == Alignment.topRight || alignment == Alignment.topLeft) {
      top = offset;
    }
    if (alignment == Alignment.bottomRight ||
        alignment == Alignment.bottomLeft) {
      bottom = offset;
    }
    if (alignment == Alignment.topRight ||
        alignment == Alignment.bottomRight) {
      right = offset;
    }
    if (alignment == Alignment.topLeft || alignment == Alignment.bottomLeft) {
      left = offset;
    }

    return Stack(
      clipBehavior: Clip.none,
      children: [
        child!,
        Positioned(
          top: top,
          bottom: bottom,
          left: left,
          right: right,
          child: badgeContent,
        ),
      ],
    );
  }
}
