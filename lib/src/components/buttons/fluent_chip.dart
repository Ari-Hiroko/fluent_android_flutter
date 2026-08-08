import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2  BasicChip / Chip 标签组件 [FluentChip] / [FluentBasicChip]
///
/// 完全移植自 Android Kotlin BasicChip.kt, BasicChipTokens.kt 与 V2BasicChipActivityUITest.kt
class FluentChip extends StatelessWidget {
  /// 标签文本
  final String label;

  /// 前置配件/图标 Leading Accessory (如 Icon / Avatar)
  final Widget? leadingAccessory;

  /// 尾部配件/图标 Trailing Accessory (如 Close Icon / Badge / Icon)
  final Widget? trailingAccessory;

  /// 前置图标 Leading Icon (别名兼容)
  final Widget? icon;

  /// 是否处于选中状态 (Selected)
  final bool selected;

  /// 是否启用按钮 (Enabled)
  final bool enabled;

  /// 是否改变光标指针 (默认 true)
  final bool enableCursor;

  /// 点击回调 (当为 null 且无点击行为时为静态 Static Chip，非点击态)
  final VoidCallback? onClick;

  /// 点击回调 onPressed 别名
  final VoidCallback? onPressed;

  /// 自定义填充颜色 (Rest 状态)
  final Color? backgroundColor;

  /// 自定义选中状态填充颜色 (Selected 状态)
  final Color? selectedBackgroundColor;

  /// 自定义文本颜色 (Rest 状态)
  final Color? textColor;

  /// 自定义选中状态文本颜色 (Selected 状态)
  final Color? selectedTextColor;

  /// 边框圆角 (默认为 Fluent 2 规范的 CornerRadius80 -> 8.0dp)
  final double borderRadius;

  const FluentChip({
    super.key,
    required this.label,
    this.leadingAccessory,
    this.trailingAccessory,
    this.icon,
    this.selected = false,
    this.enabled = true,
    this.enableCursor = true,
    this.onClick,
    this.onPressed,
    this.backgroundColor,
    this.selectedBackgroundColor,
    this.textColor,
    this.selectedTextColor,
    this.borderRadius = FluentGlobalTokens.cornerRadius80, // 8.0dp
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final VoidCallback? tapCallback = enabled ? (onClick ?? onPressed) : null;
    final bool isClickable = tapCallback != null;

    final Widget? effectiveLeading = leadingAccessory ?? icon;
    final Widget? effectiveTrailing = trailingAccessory;

    Color bg;
    Color fg;

    // 映射 BasicChipTokens 颜色标准
    if (!enabled) {
      // Disabled 禁用状态 (BackgroundDisabled & ForegroundDisable1)
      bg = isDark ? const Color(0xFF262626) : const Color(0xFFE0E0E0);
      fg = isDark ? const Color(0xFF5C5C5C) : const Color(0xFFB3B3B3);
    } else if (selected) {
      // Selected 选中状态 (Background5Selected & Foreground1 或自定义 Brand 背景)
      bg =
          selectedBackgroundColor ??
          (isDark ? const Color(0xFF3B3B3B) : const Color(0xFFE5E5E5));
      fg =
          selectedTextColor ??
          (isDark ? Colors.white : const Color(0xFF242424));
    } else {
      // Rest 正常/未选中状态 (Background5 & Foreground2)
      bg =
          backgroundColor ??
          (isDark ? const Color(0xFF2D2D2D) : const Color(0xFFF0F0F0));
      fg =
          textColor ??
          (isDark ? const Color(0xFFD6D6D6) : const Color(0xFF424242));
    }

    final Widget content = Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (effectiveLeading != null) ...[
            IconTheme(
              data: IconThemeData(color: fg, size: 16.0),
              child: effectiveLeading,
            ),
            const SizedBox(width: 8.0), // HorizontalSpacing: Size80 (8.0dp)
          ],
          Text(
            label,
            style: TextStyle(
              fontSize: 13.0,
              fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
              color: fg,
            ),
          ),
          if (effectiveTrailing != null) ...[
            const SizedBox(width: 8.0), // HorizontalSpacing: Size80 (8.0dp)
            IconTheme(
              data: IconThemeData(color: fg, size: 16.0),
              child: effectiveTrailing,
            ),
          ],
        ],
      ),
    );

    if (!isClickable) {
      // Static 非点击 Chip
      return Container(
        decoration: BoxDecoration(
          color: bg,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: content,
      );
    }

    return FluentMaterial(
      color: bg,
      borderRadius: BorderRadius.circular(borderRadius),
      child: FluentInkWell(
        onTap: tapCallback,
        mouseCursor: (enabled && enableCursor)
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        borderRadius: BorderRadius.circular(borderRadius),
        splashColor: fg.withAlpha(25),
        highlightColor: fg.withAlpha(15),
        child: content,
      ),
    );
  }
}

/// Fluent 2  BasicChip 别名支持 [FluentBasicChip]
typedef FluentBasicChip = FluentChip;
