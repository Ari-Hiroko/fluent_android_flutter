import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 Tokenized 模态对话框容器 [FluentDialog]
class FluentDialog extends StatelessWidget {
  /// 对话框标题
  final String? title;

  /// 对话框副标题 / 内容文本
  final String? message;

  /// 对话框内部自定义 Widget 内容
  final Widget? content;

  /// 底部按钮操作栏组
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

    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      insetPadding: const EdgeInsets.symmetric(
        horizontal: 24.0,
        vertical: 40.0,
      ),
      child: Material(
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
              if (actions != null && actions!.isNotEmpty) ...[
                const SizedBox(height: 8.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: actions!.map((act) {
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
        actions: actions,
      );
    },
  );
}
