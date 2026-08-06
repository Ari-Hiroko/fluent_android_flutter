import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import 'fluent_divider.dart';

/// Fluent 2 标准列表项组件 [FluentListItem]
///
/// 移植自 Android Kotlin ListItem.kt 与 ListItemView.kt
/// 自动根据内容推导单行 (48dp)、双行 (64dp)、三行 (88dp) 高度与布局形态。
class FluentListItem extends StatelessWidget {
  /// 主标题
  final String title;

  /// 副标题 (第二行文本)
  final String? subTitle;

  /// 第三行文本 (页脚描述)
  final String? tertiaryTitle;

  /// 前置组件 (Icon, Avatar, Checkbox 等)
  final Widget? leading;

  /// 尾部组件 (Icon, Switch, Badge, Chevron, Text 等)
  final Widget? trailing;

  /// 是否在底部显示分割线
  final bool showDivider;

  /// 分割线左侧缩进 (默认有 leading 时缩进 56dp，无 leading 时缩进 16dp)
  final double? dividerInset;

  /// 点击回调
  final VoidCallback? onTap;

  /// 长按回调
  final VoidCallback? onLongPress;

  /// 是否可用
  final bool enabled;

  const FluentListItem({
    super.key,
    required this.title,
    this.subTitle,
    this.tertiaryTitle,
    this.leading,
    this.trailing,
    this.showDivider = true,
    this.dividerInset,
    this.onTap,
    this.onLongPress,
    this.enabled = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    final bool hasSubTitle = subTitle != null && subTitle!.isNotEmpty;
    final bool hasTertiary = tertiaryTitle != null && tertiaryTitle!.isNotEmpty;

    // 确定高度规范
    double minHeight = 48.0;
    if (hasSubTitle && hasTertiary) {
      minHeight = 88.0;
    } else if (hasSubTitle) {
      minHeight = 64.0;
    }

    final Color titleColor = enabled
        ? theme.foregroundColor
        : theme.foregroundSecondaryColor.withAlpha(128);

    final Color subtitleColor = enabled
        ? theme.foregroundSecondaryColor
        : theme.foregroundSecondaryColor.withAlpha(96);

    // 计算 Divider 默认左缩进
    final double defaultInset = dividerInset ?? (leading != null ? 56.0 : 16.0);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Material(
          color: theme.backgroundColor,
          child: InkWell(
            onTap: enabled ? onTap : null,
            onLongPress: enabled ? onLongPress : null,
            child: Container(
              constraints: BoxConstraints(minHeight: minHeight),
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
              child: Row(
                children: [
                  // 前置 Leading
                  if (leading != null) ...[
                    IconTheme(
                      data: IconThemeData(
                        color: subtitleColor,
                        size: 24.0,
                      ),
                      child: leading!,
                    ),
                    const SizedBox(width: 16.0),
                  ],

                  // 标题区
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w500,
                            color: titleColor,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                        if (hasSubTitle) ...[
                          const SizedBox(height: 2.0),
                          Text(
                            subTitle!,
                            style: TextStyle(
                              fontSize: 13.0,
                              color: subtitleColor,
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                        if (hasTertiary) ...[
                          const SizedBox(height: 2.0),
                          Text(
                            tertiaryTitle!,
                            style: TextStyle(
                              fontSize: 12.0,
                              color: subtitleColor.withAlpha(180),
                            ),
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ],
                      ],
                    ),
                  ),

                  // 尾部 Trailing
                  if (trailing != null) ...[
                    const SizedBox(width: 12.0),
                    IconTheme(
                      data: IconThemeData(
                        color: subtitleColor,
                        size: 20.0,
                      ),
                      child: trailing!,
                    ),
                  ],
                ],
              ),
            ),
          ),
        ),

        // 底部 1dp 分割线
        if (showDivider)
          FluentDivider(
            startIndent: defaultInset,
          ),
      ],
    );
  }
}
