import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import '../buttons/fluent_text_button.dart';

/// Fluent 2  CardNudge 提醒通知卡片 [FluentCardNudge]
///
/// 移植自 Android Kotlin V2CardNudgeActivity.kt 与 CardNudge.kt
class FluentCardNudge extends StatelessWidget {
  /// 主标题
  final String title;

  /// 描述消息正文
  final String message;

  /// 前置 Icon 图标
  final Widget? icon;

  /// 高亮突出说明标签 (如 'New', 'Tip')
  final String? accentText;

  /// 核心操作按钮文本
  final String? actionText;

  /// 核心操作回调
  final VoidCallback? onActionTap;

  /// 关闭按键回调
  final VoidCallback? onDismiss;

  const FluentCardNudge({
    super.key,
    required this.title,
    required this.message,
    this.icon,
    this.accentText,
    this.actionText,
    this.onActionTap,
    this.onDismiss,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final Color bgColor = isDark
        ? const Color(0xFF282828)
        : const Color(0xFFF5F5F5);

    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(color: theme.dividerColor),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              if (icon != null) ...[
                IconTheme(
                  data: IconThemeData(color: theme.primaryColor, size: 20.0),
                  child: icon!,
                ),
                const SizedBox(width: 8.0),
              ],
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: theme.foregroundColor,
                          ),
                        ),
                        if (accentText != null) ...[
                          const SizedBox(width: 6.0),
                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 6.0,
                              vertical: 1.5,
                            ),
                            decoration: BoxDecoration(
                              color: theme.primaryColor.withAlpha(30),
                              borderRadius: BorderRadius.circular(4.0),
                            ),
                            child: Text(
                              accentText!,
                              style: TextStyle(
                                fontSize: 10.0,
                                fontWeight: FontWeight.bold,
                                color: theme.primaryColor,
                              ),
                            ),
                          ),
                        ],
                      ],
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      message,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: theme.foregroundSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
              if (onDismiss != null)
                GestureDetector(
                  onTap: onDismiss,
                  child: Icon(
                    Icons.close,
                    size: 16.0,
                    color: theme.foregroundSecondaryColor,
                  ),
                ),
            ],
          ),
          if (actionText != null && onActionTap != null) ...[
            const SizedBox(height: 8.0),
            Align(
              alignment: Alignment.centerRight,
              child: FluentTextButton(
                text: actionText,
                onPressed: onActionTap,
                fontSize: 12.0,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
