import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Snackbar 风格款式 [FluentSnackbarStyle]
///
/// 完全映射自 Android Kotlin SnackbarStyle (Neutral, Contrast, Accent, Warning, Danger)
enum FluentSnackbarStyle {
  /// 中性风格 (暗灰/黑色背景)
  neutral,

  /// 高对比度风格 (深黑背景)
  contrast,

  /// 品牌蓝强调风格 (#0F6CBD)
  accent,

  /// 品牌蓝别名
  brand,

  /// 警示橙黄风格
  warning,

  /// 危险红风格
  danger,
}

/// Fluent 2 官方消息提示条组件 [FluentSnackbar]
///
/// 移植自 Android Kotlin Snackbar.kt, V2SnackbarActivity.kt 与 V2SnackbarActivityUITest.kt
class FluentSnackbar extends StatelessWidget {
  /// 消息主要内容
  final String message;

  /// 标题 (可选)
  final String? title;

  /// 副标题 (可选，位于第三行或下方)
  final String? subTitle;

  /// 右侧操作按钮文本 (如 "撤销", "重试", "查看")
  final String? actionText;

  /// 右侧操作按钮点击回调
  final VoidCallback? onActionTap;

  /// 前置 Icon / Badge (可选)
  final Widget? leadingIcon;

  /// 是否包含右侧 X 关闭按键 (Enable Dismiss Button)
  final bool enableDismiss;

  /// 右侧 X 关闭按键回调
  final VoidCallback? onDismiss;

  /// 风格样式 (neutral, contrast, accent, warning, danger)
  final FluentSnackbarStyle style;

  /// 是否开启阴影圆角浮动效果
  final bool isFloating;

  const FluentSnackbar({
    super.key,
    required this.message,
    this.title,
    this.subTitle,
    this.actionText,
    this.onActionTap,
    this.leadingIcon,
    this.enableDismiss = false,
    this.onDismiss,
    this.style = FluentSnackbarStyle.neutral,
    this.isFloating = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    Color backgroundColor;
    Color textColor = Colors.white;
    Color secondaryTextColor = Colors.white.withAlpha(204);
    Color actionTextColor = theme.primaryColor;

    switch (style) {
      case FluentSnackbarStyle.neutral:
        backgroundColor = isDark
            ? const Color(0xFF3B3B3B)
            : const Color(0xFF292929);
        actionTextColor = isDark
            ? const Color(0xFF2896F3)
            : const Color(0xFF60A5FA);
        break;
      case FluentSnackbarStyle.contrast:
        backgroundColor = const Color(0xFF111111);
        actionTextColor = const Color(0xFF2896F3);
        break;
      case FluentSnackbarStyle.accent:
      case FluentSnackbarStyle.brand:
        backgroundColor = theme.primaryColor;
        actionTextColor = Colors.white;
        break;
      case FluentSnackbarStyle.warning:
        backgroundColor = const Color(0xFFD83B01);
        actionTextColor = Colors.white;
        break;
      case FluentSnackbarStyle.danger:
        backgroundColor = FluentGlobalTokens.sharedRed;
        actionTextColor = Colors.white;
        break;
    }

    final bool hasTitle = title != null && title!.isNotEmpty;
    final bool hasSubTitle = subTitle != null && subTitle!.isNotEmpty;

    return Material(
      color: backgroundColor,
      elevation: isFloating ? FluentGlobalTokens.shadow14 : 0,
      borderRadius: BorderRadius.circular(
        isFloating ? FluentGlobalTokens.cornerRadius80 : 0,
      ),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(
            isFloating ? FluentGlobalTokens.cornerRadius80 : 0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 前置 Icon (Icon Param)
            if (leadingIcon != null) ...[
              IconTheme(
                data: IconThemeData(color: textColor, size: 20.0),
                child: leadingIcon!,
              ),
              const SizedBox(width: 12.0),
            ],

            // 消息与标题与副标题 (Title & Subtitle Param)
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (hasTitle) ...[
                    Text(
                      title!,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 2.0),
                  ],
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: hasTitle ? secondaryTextColor : textColor,
                    ),
                  ),
                  if (hasSubTitle) ...[
                    const SizedBox(height: 2.0),
                    Text(
                      subTitle!,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: secondaryTextColor,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            // 右侧 Action 按钮 (Action Button Param)
            if (actionText != null && actionText!.isNotEmpty) ...[
              const SizedBox(width: 12.0),
              GestureDetector(
                onTap: onActionTap,
                child: Text(
                  actionText!,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: actionTextColor,
                  ),
                ),
              ),
            ],

            // 右侧 X 关闭按钮 (Dismiss Button Param)
            if (enableDismiss) ...[
              const SizedBox(width: 12.0),
              GestureDetector(
                onTap: onDismiss,
                child: Icon(Icons.close, size: 18.0, color: secondaryTextColor),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// 显示 Fluent 2 消息提示条 [showFluentSnackbar]
ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showFluentSnackbar({
  required BuildContext context,
  required String message,
  String? title,
  String? subTitle,
  String? actionText,
  VoidCallback? onActionTap,
  Widget? leadingIcon,
  bool enableDismiss = false,
  VoidCallback? onDismiss,
  FluentSnackbarStyle style = FluentSnackbarStyle.neutral,
  Duration duration = const Duration(seconds: 4),
}) {
  final fluentTheme = FluentTheme.of(context);

  final snackBar = SnackBar(
    content: FluentTheme(
      data: fluentTheme,
      child: FluentSnackbar(
        message: message,
        title: title,
        subTitle: subTitle,
        actionText: actionText,
        onActionTap: onActionTap != null
            ? () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                onActionTap();
              }
            : null,
        leadingIcon: leadingIcon,
        enableDismiss: enableDismiss,
        onDismiss: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          onDismiss?.call();
        },
        style: style,
        isFloating: true,
      ),
    ),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    duration: duration,
  );

  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

/// 立即主动关闭/撤销当前展示的 Snackbar [dismissFluentSnackbar]
void dismissFluentSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
}
