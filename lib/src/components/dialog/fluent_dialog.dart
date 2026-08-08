import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import '../buttons/fluent_button.dart';
import '../buttons/fluent_text_button.dart';

/// 对话框按钮封装类型 [FluentDialogButtonType]
enum FluentDialogButtonType {
  /// 纯文字按键形态 (FluentTextButton)
  textButton,

  /// 标准按钮形态 (FluentButton)
  button,
}

/// Fluent 2 模态对话框容器 [FluentDialog]
///
/// 支持内置封装主/次按钮 (TextButton 或 标准 Button) 及自定义 Actions
class FluentDialog extends StatelessWidget {
  /// 对话框标题
  final String? title;

  /// 对话框副标题 / 内容文本
  final String? message;

  /// 对话框内部自定义 Widget 内容
  final Widget? content;

  /// 主按钮文本 (如 "确认", "确定")
  final String? primaryButtonText;

  /// 主按钮点击回调
  final VoidCallback? onPrimaryPressed;

  /// 次要按钮文本 (如 "取消", "返回")
  final String? secondaryButtonText;

  /// 次要按钮点击回调
  final VoidCallback? onSecondaryPressed;

  /// 内置封装按钮类型 (textButton 纯文字按钮 或 button 标准按钮，默认 textButton)
  final FluentDialogButtonType buttonType;

  /// 自定义底部按钮操作栏组 (为 null 时自动使用内置封装按钮)
  final List<Widget>? actions;

  /// 对话框外边距与内边距
  final EdgeInsetsGeometry padding;

  /// 圆角半径
  final double? cornerRadius;

  /// 阴影高度
  final double? elevation;

  const FluentDialog({
    super.key,
    this.title,
    this.message,
    this.content,
    this.primaryButtonText,
    this.onPrimaryPressed,
    this.secondaryButtonText,
    this.onSecondaryPressed,
    this.buttonType = FluentDialogButtonType.textButton,
    this.actions,
    this.padding = const EdgeInsets.all(20.0),
    this.cornerRadius,
    this.elevation,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final radius = cornerRadius ?? theme.cornerRadius * 2; // 对话框采用大圆角
    final shadowElevation = elevation ?? (theme.elevation + 4.0);

    // 构建内置封装的按钮列表
    List<Widget> effectiveActions = actions ?? [];

    if (actions == null &&
        (primaryButtonText != null || secondaryButtonText != null)) {
      if (buttonType == FluentDialogButtonType.button) {
        effectiveActions = [
          if (secondaryButtonText != null)
            FluentButton(
              text: secondaryButtonText!,
              style: FluentButtonStyle.secondary,
              size: FluentButtonSize.small,
              onPressed: onSecondaryPressed,
            ),
          if (primaryButtonText != null)
            FluentButton(
              text: primaryButtonText!,
              style: FluentButtonStyle.primary,
              size: FluentButtonSize.small,
              onPressed: onPrimaryPressed,
            ),
        ];
      } else {
        effectiveActions = [
          if (secondaryButtonText != null)
            FluentTextButton(
              text: secondaryButtonText!,
              onPressed: onSecondaryPressed,
              fontSize: 14.0,
            ),
          if (primaryButtonText != null)
            FluentTextButton(
              text: primaryButtonText!,
              onPressed: onPrimaryPressed,
              fontWeight: FontWeight.bold,
              fontSize: 14.0,
            ),
        ];
      }
    }

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 40.0,
      ),
      child: FluentMaterial(
        color: Colors.transparent,
        elevation: shadowElevation,
        shadowColor: Colors.black.withAlpha(80),
        borderRadius: BorderRadius.circular(radius),
        child: Container(
          constraints: const BoxConstraints(maxWidth: 340.0),
          decoration: BoxDecoration(
            color: theme.backgroundColor,
            borderRadius: BorderRadius.circular(radius),
            border: Border.all(
              color: theme.dividerColor.withAlpha(64),
              width: 1.0,
            ),
          ),
          padding: padding,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // 标题 Title
              if (title != null) ...[
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold,
                    color: theme.foregroundColor,
                  ),
                ),
                const SizedBox(height: 8.0),
              ],

              // 描述信息 Message
              if (message != null) ...[
                Text(
                  message!,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: theme.foregroundSecondaryColor,
                    height: 1.4,
                  ),
                ),
                const SizedBox(height: 12.0),
              ],

              // 自定义内容 Content
              if (content != null) ...[content!, const SizedBox(height: 16.0)],

              // 按钮操作区 Actions
              if (effectiveActions.isNotEmpty) ...[
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: effectiveActions.map((act) {
                    return Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: act,
                    );
                  }).toList(),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }
}

/// 符合 Flutter 原生 `showDialog` 习惯的便捷弹出函数 [showFluentDialog<T>]
Future<T?> showFluentDialog<T>({
  required BuildContext context,
  String? title,
  String? message,
  Widget? content,
  String? primaryButtonText,
  VoidCallback? onPrimaryPressed,
  String? secondaryButtonText,
  VoidCallback? onSecondaryPressed,
  FluentDialogButtonType buttonType = FluentDialogButtonType.textButton,
  List<Widget>? actions,
  bool barrierDismissible = true,
}) {
  return showDialog<T>(
    context: context,
    barrierDismissible: barrierDismissible,
    builder: (context) {
      return FluentDialog(
        title: title,
        message: message,
        content: content,
        primaryButtonText: primaryButtonText,
        onPrimaryPressed: onPrimaryPressed,
        secondaryButtonText: secondaryButtonText,
        onSecondaryPressed: onSecondaryPressed,
        buttonType: buttonType,
        actions: actions,
      );
    },
  );
}
