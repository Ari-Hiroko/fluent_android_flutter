import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 底部抽屉 / Bottom Sheet 组件 [FluentBottomSheet]
///
/// 移植自 Android Kotlin BottomSheet.kt 与 BottomDrawer.kt
class FluentBottomSheet extends StatelessWidget {
  /// 标题 (可选)
  final String? title;

  /// 抽屉内部 Child 内容
  final Widget child;

  /// 是否显示顶部抓手线 (Drag Handle, 默认 true)
  final bool showHandle;

  /// 自定义圆角
  final double? cornerRadius;

  /// 外边距与内边距
  final EdgeInsetsGeometry padding;

  const FluentBottomSheet({
    super.key,
    this.title,
    required this.child,
    this.showHandle = true,
    this.cornerRadius,
    this.padding = const EdgeInsets.only(
      left: 16.0,
      right: 16.0,
      bottom: 24.0,
      top: 8.0,
    ),
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final radius = cornerRadius ?? FluentGlobalTokens.cornerRadius160;

    return FluentMaterial(
      color: theme.backgroundColor,
      elevation: FluentGlobalTokens.shadow28,
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(radius),
        topRight: Radius.circular(radius),
      ),
      child: Container(
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(radius),
            topRight: Radius.circular(radius),
          ),
        ),
        padding: padding,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // 顶部 Pill 抓手线 (36dp x 4dp)
            if (showHandle) ...[
              Container(
                width: 36.0,
                height: 4.0,
                margin: const EdgeInsets.only(bottom: 12.0),
                decoration: BoxDecoration(
                  color: theme.foregroundSecondaryColor.withAlpha(96),
                  borderRadius: BorderRadius.circular(
                    FluentGlobalTokens.cornerRadiusCircular,
                  ),
                ),
              ),
            ],

            // 标题区
            if (title != null && title!.isNotEmpty) ...[
              Padding(
                padding: const EdgeInsets.only(bottom: 12.0),
                child: Text(
                  title!,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.bold,
                    color: theme.foregroundColor,
                  ),
                ),
              ),
              Divider(height: 1.0, color: theme.dividerColor),
              const SizedBox(height: 12.0),
            ],

            // 内容区
            Flexible(child: child),
          ],
        ),
      ),
    );
  }
}

/// 符合 Flutter 原生 `showModalBottomSheet` 操作习惯的全局便捷弹出函数 [showFluentBottomSheet<T>]
Future<T?> showFluentBottomSheet<T>({
  required BuildContext context,
  required Widget child,
  String? title,
  bool isDismissible = true,
  bool showHandle = true,
}) {
  final fluentTheme = FluentTheme.of(context);

  return showModalBottomSheet<T>(
    context: context,
    isDismissible: isDismissible,
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    barrierColor: Colors.black54,
    builder: (context) {
      return FluentTheme(
        themeData: fluentTheme,
        child: FluentBottomSheet(
          title: title,
          showHandle: showHandle,
          child: child,
        ),
      );
    },
  );
}
