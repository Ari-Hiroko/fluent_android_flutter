import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// 列表分组标头组件 [FluentListSubHeader]
///
/// 移植自 Android Kotlin ListSubHeaderView.kt
class FluentListSubHeader extends StatelessWidget {
  /// 标头标题
  final String title;

  /// 右侧操作按钮文本 (如 "查看更多", "编辑")
  final String? actionText;

  /// 右侧操作按钮回调
  final VoidCallback? onActionTap;

  /// 自定义右侧操作 Widget
  final Widget? customAction;

  /// 是否包含顶部分割线
  final bool showTopDivider;

  const FluentListSubHeader({
    super.key,
    required this.title,
    this.actionText,
    this.onActionTap,
    this.customAction,
    this.showTopDivider = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        if (showTopDivider)
          Divider(
            height: 1.0,
            thickness: 1.0,
            color: theme.dividerColor,
          ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0),
          alignment: Alignment.centerLeft,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                title.toUpperCase(),
                style: TextStyle(
                  fontSize: 12.0,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 0.8,
                  color: theme.primaryColor,
                ),
              ),
              if (customAction != null)
                customAction!
              else if (actionText != null)
                GestureDetector(
                  onTap: onActionTap,
                  child: Text(
                    actionText!,
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: FontWeight.w600,
                      color: theme.primaryColor,
                    ),
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}
