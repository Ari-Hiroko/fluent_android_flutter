import 'package:flutter/material.dart';
import '../../theme/fluent_colors.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// 上下文命令项模型 [FluentCommandItem]
class FluentCommandItem {
  final dynamic id;
  final Widget? icon;
  final String? label;
  final bool isSelected;
  final bool isEnabled;
  final VoidCallback? onPressed;
  final VoidCallback? onLongPress;

  const FluentCommandItem({
    this.id,
    this.icon,
    this.label,
    this.isSelected = false,
    this.isEnabled = true,
    this.onPressed,
    this.onLongPress,
  });
}

/// Fluent 2 上下文命令栏 [FluentContextualCommandBar]
///
/// 移植自 Android Kotlin ContextualCommandBar.kt
/// 支持可选主题色 [themeColor] / [selectedColor]，自动智能自适应继承 [FluentTheme] 或 MaterialApp [ColorScheme]。
class FluentContextualCommandBar extends StatelessWidget {
  /// 命令项列表
  final List<FluentCommandItem> items;

  /// 右侧是否显示 Dismiss / 关闭按钮
  final bool showDismissButton;

  /// 关闭按钮的回调
  final VoidCallback? onDismiss;

  /// 主题色 / 品牌色 (可选。未传入时智能优先匹配 FluentTheme 或 MaterialApp ColorScheme 的 primary 主题色)
  final Color? themeColor;

  /// 选中命令项前景色 (可选)
  final Color? selectedColor;

  /// 背景色 (可选)
  final Color? backgroundColor;

  const FluentContextualCommandBar({
    super.key,
    required this.items,
    this.showDismissButton = false,
    this.onDismiss,
    this.themeColor,
    this.selectedColor,
    this.backgroundColor,
  });

  Color _resolvePrimaryThemeColor(
    BuildContext context,
    FluentThemeData fluentTheme,
  ) {
    if (selectedColor != null) return selectedColor!;
    if (themeColor != null) return themeColor!;

    if (fluentTheme.primaryColor != FluentColors.communicationBlue) {
      return fluentTheme.primaryColor;
    }

    final materialTheme = Theme.of(context);
    final materialPrimary = materialTheme.colorScheme.primary;
    if (materialPrimary != const Color(0xff6750a4) &&
        materialPrimary != Colors.blue) {
      return materialPrimary;
    }

    return fluentTheme.primaryColor;
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final Color resolvedPrimary = _resolvePrimaryThemeColor(context, theme);

    final Color barBackground =
        backgroundColor ??
        (isDark ? const Color(0xFF292929) : const Color(0xFFFAFAFA));

    return FluentMaterial(
      color: barBackground,
      elevation: FluentGlobalTokens.shadow14,
      shadowColor: Colors.black.withValues(alpha: 0.12),
      borderRadius: BorderRadius.circular(
        FluentGlobalTokens.cornerRadiusCircular,
      ),
      child: Container(
        height: 48.0,
        padding: const EdgeInsets.symmetric(horizontal: 6.0),
        decoration: BoxDecoration(
          color: barBackground,
          borderRadius: BorderRadius.circular(
            FluentGlobalTokens.cornerRadiusCircular,
          ),
          border: Border.all(
            color: theme.dividerColor.withValues(alpha: 0.16),
            width: 1.0,
          ),
        ),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              // 命令项列表
              ...items.map((item) {
                final isSelected = item.isSelected;
                final isEnabled = item.isEnabled;

                final Color itemBg = isSelected
                    ? resolvedPrimary.withValues(alpha: 0.15)
                    : Colors.transparent;

                final Color itemFg = isSelected
                    ? resolvedPrimary
                    : (isEnabled
                          ? theme.foregroundColor
                          : theme.foregroundSecondaryColor);

                return Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 2.0),
                  child: FluentMaterial(
                    color: itemBg,
                    borderRadius: BorderRadius.circular(
                      FluentGlobalTokens.cornerRadiusCircular,
                    ),
                    child: FluentInkWell(
                      onTap: isEnabled ? item.onPressed : null,
                      onLongPress: isEnabled ? item.onLongPress : null,
                      borderRadius: BorderRadius.circular(
                        FluentGlobalTokens.cornerRadiusCircular,
                      ),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 12.0,
                          vertical: 8.0,
                        ),
                        child: Row(
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            if (item.icon != null)
                              IconTheme(
                                data: IconThemeData(color: itemFg, size: 20.0),
                                child: item.icon!,
                              ),
                            if (item.icon != null && item.label != null)
                              const SizedBox(width: 6.0),
                            if (item.label != null)
                              Text(
                                item.label!,
                                style: TextStyle(
                                  fontSize: 13.0,
                                  fontWeight: isSelected
                                      ? FontWeight.w600
                                      : FontWeight.normal,
                                  color: itemFg,
                                ),
                              ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              }),

              // 可选的右侧关闭 / Dismiss 按钮
              if (showDismissButton) ...[
                VerticalDivider(
                  width: 12.0,
                  indent: 10.0,
                  endIndent: 10.0,
                  color: theme.dividerColor,
                ),
                IconButton(
                  icon: const Icon(Icons.close, size: 20.0),
                  color: theme.foregroundSecondaryColor,
                  onPressed: onDismiss,
                  tooltip: '关闭命令栏',
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}
