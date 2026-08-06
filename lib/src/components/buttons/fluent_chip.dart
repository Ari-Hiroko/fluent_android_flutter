import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 标签 / 药丸按钮组件 [FluentChip] (BasicChip / PillButton)
class FluentChip extends StatelessWidget {
  /// 标签文本
  final String label;

  /// 前置图标 (可选)
  final Widget? icon;

  /// 是否处于选中状态
  final bool selected;

  /// 点击回调
  final VoidCallback? onPressed;

  const FluentChip({
    super.key,
    required this.label,
    this.icon,
    this.selected = false,
    this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isEnabled = onPressed != null;

    final Color backgroundColor = selected
        ? theme.primaryColor
        : (theme.brightness == Brightness.dark
            ? const Color(0xFF333333)
            : const Color(0xFFF0F0F0));

    final Color foregroundColor = selected
        ? Colors.white
        : (isEnabled ? theme.foregroundColor : theme.foregroundSecondaryColor);

    return Material(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(FluentGlobalTokens.cornerRadiusCircular),
      child: InkWell(
        onTap: onPressed,
        borderRadius: BorderRadius.circular(FluentGlobalTokens.cornerRadiusCircular),
        child: Container(
          height: 32.0,
          padding: const EdgeInsets.symmetric(horizontal: 12.0),
          alignment: Alignment.center,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                IconTheme(
                  data: IconThemeData(
                    color: foregroundColor,
                    size: 16.0,
                  ),
                  child: icon!,
                ),
                const SizedBox(width: 6.0),
              ],
              Text(
                label,
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: selected ? FontWeight.w600 : FontWeight.normal,
                  color: foregroundColor,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
