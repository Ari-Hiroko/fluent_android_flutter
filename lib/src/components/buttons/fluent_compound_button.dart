import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';
import 'fluent_button.dart';

/// 带主副标题的 Compound 按钮组件 [FluentCompoundButton]
class FluentCompoundButton extends StatelessWidget {
  /// 主标题
  final String title;

  /// 副标题/描述文本
  final String subTitle;

  /// 前置 Icon (可选)
  final Widget? icon;

  /// 点击回调
  final VoidCallback? onPressed;

  /// 按钮样式风格
  final FluentButtonStyle style;

  /// 是否改变光标
  final bool enableCursor;

  const FluentCompoundButton({
    super.key,
    required this.title,
    required this.subTitle,
    this.icon,
    this.onPressed,
    this.style = FluentButtonStyle.secondary,
    this.enableCursor = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isEnabled = onPressed != null;
    final isPrimary = style == FluentButtonStyle.primary;

    final Color backgroundColor = isPrimary
        ? (isEnabled ? theme.primaryColor : theme.dividerColor)
        : (isEnabled
              ? theme.backgroundColor
              : theme.backgroundColor.withAlpha(128));

    final Color titleColor = isPrimary
        ? (isEnabled ? Colors.white : theme.foregroundSecondaryColor)
        : (isEnabled ? theme.foregroundColor : theme.foregroundSecondaryColor);

    final Color subTitleColor = isPrimary
        ? (isEnabled
              ? Colors.white.withAlpha(200)
              : theme.foregroundSecondaryColor)
        : theme.foregroundSecondaryColor;

    return FluentMaterial(
      color: backgroundColor,
      borderRadius: BorderRadius.circular(FluentGlobalTokens.cornerRadius120),
      child: FluentInkWell(
        mouseCursor: enableCursor
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        onTap: onPressed,
        borderRadius: BorderRadius.circular(FluentGlobalTokens.cornerRadius120),
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              FluentGlobalTokens.cornerRadius120,
            ),
            border: Border.all(
              color: isPrimary ? Colors.transparent : theme.dividerColor,
              width: 1.0,
            ),
          ),
          child: Row(
            children: [
              if (icon != null) ...[
                IconTheme(
                  data: IconThemeData(color: titleColor, size: 28.0),
                  child: icon!,
                ),
                const SizedBox(width: 12.0),
              ],
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: titleColor,
                      ),
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      subTitle,
                      style: TextStyle(fontSize: 12.0, color: subTitleColor),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
