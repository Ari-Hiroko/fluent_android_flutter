import 'package:flutter/material.dart';
import '../../theme/fluent_motion_tokens.dart';
import '../../theme/fluent_theme.dart';
import '../../theme/fluent_theme_data.dart';
import 'fluent_card.dart';

/// Fluent 2 可展开文本卡片 [FluentTextCard]
///
/// 封装了可展开/收起的主标题、副标题、图标与文本/富文本/自定义内容。
/// 支持嵌入 [Text]、[Text.rich] 或自定义 [Widget]，自带平滑的展开折叠与 Chevron 旋转动画。
class FluentTextCard extends StatefulWidget {
  /// 标题文本
  final String? title;

  /// 自定义标题 Widget (若提供则优先于 [title])
  final Widget? titleWidget;

  /// 副标题文本 [subTitle] (与 [subtitle] 互为别名)
  final String? subTitle;

  /// 副标题文本 [subtitle] (与 [subTitle] 互为别名)
  final String? subtitle;

  /// 前置图标 Leading Icon (可选)
  final Widget? leadingIcon;

  /// 展开后的主要可变内容文本 (可选)
  final String? text;

  /// 展开后的富文本 [InlineSpan] 或 [TextSpan] (可选)
  final InlineSpan? richText;

  /// 展开后的自定义 Widget 内容 (可选)
  final Widget? child;

  /// 初始是否处于展开状态 (默认 false)
  final bool initiallyExpanded;

  /// 展开状态改变时的回调函数
  final ValueChanged<bool>? onExpandedChanged;

  /// 右侧动作图标/按钮 [trailingAction] (与 [actionIcon] 互为别名)
  final Widget? trailingAction;

  /// 右侧动作图标/按钮 [actionIcon] (与 [trailingAction] 互为别名)
  final Widget? actionIcon;

  /// 右侧动作图标点击回调 [actionOnClick] (可选)
  final VoidCallback? actionOnClick;

  /// 是否可以展开/折叠 (默认 true)
  final bool expandable;

  /// 是否在展开区域上方显示 1dp 分割线 (默认 false)
  final bool showDivider;

  /// 卡片内边距 (默认 EdgeInsets.all(16.0))
  final EdgeInsetsGeometry padding;

  /// 内容展开区域内边距 (可选，默认 EdgeInsets.only(top: 12.0))
  final EdgeInsetsGeometry? contentPadding;

  /// 圆角半径 (默认 12.0)
  final double borderRadius;

  /// 自定义卡片背景色 (可选)
  final Color? backgroundColor;

  /// 卡片不透明度 (默认 1.0，当设为 < 1.0 时自适应毛玻璃与半透明表面)
  final double opacity;

  /// 是否拉伸填满父容器垂直高度 (默认 false，即自适应包裹内容)
  final bool expand;

  /// 是否响应鼠标指针 (默认 true)
  final bool enableCursor;

  /// 展开/折叠动画持续时间 (默认 FluentMotionDuration.gentle = 300ms)
  final Duration animationDuration;

  /// 展开/折叠动画曲线 (默认 FluentMotionCurve.standard)
  final Curve animationCurve;

  const FluentTextCard({
    super.key,
    this.title,
    this.titleWidget,
    this.subTitle,
    this.subtitle,
    this.leadingIcon,
    this.text,
    this.richText,
    this.child,
    this.initiallyExpanded = false,
    this.onExpandedChanged,
    this.trailingAction,
    this.actionIcon,
    this.actionOnClick,
    this.expandable = true,
    this.showDivider = false,
    this.padding = const EdgeInsets.all(16.0),
    this.contentPadding,
    this.borderRadius = 12.0,
    this.backgroundColor,
    this.opacity = 1.0,
    this.expand = false,
    this.enableCursor = true,
    this.animationDuration = FluentMotionDuration.gentle,
    this.animationCurve = FluentMotionCurve.standard,
  }) : assert(
         title != null || titleWidget != null,
         'Either title or titleWidget must be provided.',
       );

  @override
  State<FluentTextCard> createState() => _FluentTextCardState();
}

class _FluentTextCardState extends State<FluentTextCard>
    with SingleTickerProviderStateMixin {
  late bool _isExpanded;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;
  }

  void _toggleExpand() {
    if (widget.actionOnClick != null) {
      widget.actionOnClick!.call();
    }
    if (!widget.expandable) return;
    setState(() {
      _isExpanded = !_isExpanded;
    });
    widget.onExpandedChanged?.call(_isExpanded);
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final String? effectiveSubTitle = widget.subTitle ?? widget.subtitle;
    final Widget? effectiveTrailing = widget.trailingAction ?? widget.actionIcon;

    Widget headerContent = Row(
      children: [
        if (widget.leadingIcon != null) ...[
          IconTheme(
            data: IconThemeData(color: theme.primaryColor, size: 22.0),
            child: widget.leadingIcon!,
          ),
          const SizedBox(width: 12.0),
        ],
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              if (widget.titleWidget != null)
                widget.titleWidget!
              else
                Text(
                  widget.title ?? '',
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.w600,
                    color: theme.foregroundColor,
                  ),
                ),
              if (effectiveSubTitle != null) ...[
                const SizedBox(height: 2.0),
                Text(
                  effectiveSubTitle,
                  style: TextStyle(
                    fontSize: 12.0,
                    color: theme.foregroundSecondaryColor,
                  ),
                ),
              ],
            ],
          ),
        ),
        if (effectiveTrailing != null)
          effectiveTrailing
        else if (widget.expandable)
          AnimatedRotation(
            turns: _isExpanded ? 0.5 : 0.0,
            duration: widget.animationDuration,
            curve: widget.animationCurve,
            child: Icon(
              Icons.keyboard_arrow_down,
              color: theme.foregroundSecondaryColor,
              size: 24.0,
            ),
          ),
      ],
    );

    return FluentCard(
      padding: widget.padding,
      borderRadius: widget.borderRadius,
      backgroundColor: widget.backgroundColor,
      opacity: widget.opacity,
      expand: widget.expand,
      enableCursor: widget.enableCursor && widget.expandable,
      onTap: widget.expandable || widget.actionOnClick != null ? _toggleExpand : null,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerContent,
          AnimatedSize(
            duration: widget.animationDuration,
            curve: widget.animationCurve,
            alignment: Alignment.topCenter,
            child: _isExpanded
                ? Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      if (widget.showDivider) ...[
                        const SizedBox(height: 12.0),
                        Divider(
                          height: 1.0,
                          color: theme.dividerColor.withValues(alpha: 0.5),
                        ),
                      ],
                      Padding(
                        padding: widget.contentPadding ??
                            const EdgeInsets.only(top: 12.0),
                        child: _buildBodyContent(context, theme),
                      ),
                    ],
                  )
                : const SizedBox(width: double.infinity, height: 0.0),
          ),
        ],
      ),
    );
  }

  Widget _buildBodyContent(BuildContext context, FluentThemeData theme) {
    if (widget.child != null) {
      return widget.child!;
    }
    if (widget.richText != null) {
      return Text.rich(
        TextSpan(children: [widget.richText!]),
        style: TextStyle(
          fontSize: 14.0,
          color: theme.foregroundColor,
          height: 1.4,
        ),
      );
    }
    if (widget.text != null) {
      return Text(
        widget.text!,
        style: TextStyle(
          fontSize: 14.0,
          color: theme.foregroundColor,
          height: 1.4,
        ),
      );
    }
    return const SizedBox.shrink();
  }
}
