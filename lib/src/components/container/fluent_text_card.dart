import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import 'fluent_container.dart';

/// Fluent 2 可展开/固定文本与自定义内容卡片 [FluentTextCard]
///
/// 专用于展示文本、标题、副标题、折叠/展开区域或自定义内容。
/// 支持高频直接参数 [opacity] 与 [showDivider]，高级样式与动画效果通过 [style] 配置。
class FluentTextCard extends StatefulWidget {
  /// 标题文本 (可选)
  final String? title;

  /// 自定义标题 Widget (可选，若提供则优先于 [title])
  final Widget? titleWidget;

  /// 副标题文本 (可选)
  final String? subtitle;

  /// 前置图标 Leading Icon (可选)
  final Widget? leadingIcon;

  /// 展开/内容区域的主要文本 (可选)
  final String? text;

  /// 展开/内容区域的富文本 [InlineSpan] 或 [TextSpan] (可选)
  final InlineSpan? richText;

  /// 展开/内容区域的自定义 Widget (可选)
  final Widget? child;

  /// 初始是否处于展开状态 (默认 false)
  final bool initiallyExpanded;

  /// 展开状态改变时的回调函数
  final ValueChanged<bool>? onExpandedChanged;

  /// 右侧动作图标/按钮 (可选)
  final Widget? actionIcon;

  /// 右侧动作图标/按钮点击回调 (可选)
  final VoidCallback? onActionTap;

  /// 卡片整体点击回调 (可选)
  final VoidCallback? onTap;

  /// 是否可以展开/折叠 (默认 true。为 false 时默认始终直接展示内容)
  final bool expandable;

  /// 是否开启内部文本划词/复制选中功能 (默认 false)
  final bool selectable;

  /// 卡片不透明度 (可选，高频直接参数，范围 0.0 ~ 1.0)
  final double? opacity;

  /// 卡片类型 [FluentContainerType] (可选)
  final FluentContainerType? cardType;

  /// 自定义阴影配置 (可选)
  final List<BoxShadow>? shadow;

  /// 是否显示卡片边框 (可选)
  final bool? border;

  /// 自定义卡片边框样式 (可选)
  final BoxBorder? borderStyle;

  /// 是否在内容区域上方显示 1dp 分割线 (默认 false)
  final bool showDivider;

  /// 卡片外观、动画与分割线配置包 [FluentContainerStyle] (可选)
  final FluentContainerStyle style;

  const FluentTextCard({
    super.key,
    this.title,
    this.titleWidget,
    this.subtitle,
    this.leadingIcon,
    this.text,
    this.richText,
    this.child,
    this.initiallyExpanded = false,
    this.onExpandedChanged,
    this.actionIcon,
    this.onActionTap,
    this.onTap,
    this.expandable = true,
    this.selectable = false,
    this.opacity,
    this.cardType,
    this.shadow,
    this.border,
    this.borderStyle,
    this.showDivider = false,
    this.style = const FluentContainerStyle(),
  });

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
    if (widget.onActionTap != null) {
      widget.onActionTap!.call();
    }
    if (!widget.expandable) return;
    setState(() {
      _isExpanded = !_isExpanded;
    });
    widget.onExpandedChanged?.call(_isExpanded);
  }

  FluentContainerStyle _getEffectiveStyle() {
    return widget.style.copyWith(
      opacity: widget.opacity ?? widget.style.opacity,
      showDivider: widget.showDivider ? true : widget.style.showDivider,
      cardType: widget.cardType ?? widget.style.cardType,
      shadow: widget.shadow ?? widget.style.shadow,
      border: widget.border ?? widget.style.border,
      borderStyle: widget.borderStyle ?? widget.style.borderStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final effectiveStyle = _getEffectiveStyle();

    final bool hasHeader =
        widget.title != null ||
        widget.titleWidget != null ||
        widget.subtitle != null ||
        widget.leadingIcon != null ||
        widget.actionIcon != null ||
        widget.expandable;

    final bool hasBodyContent =
        widget.child != null || widget.text != null || widget.richText != null;
    final bool shouldShowBody = !widget.expandable || _isExpanded;

    Widget cardChild;

    if (!hasHeader) {
      cardChild = _buildBodyContent(context, theme);
    } else {
      Widget headerContent = Row(
        children: [
          if (widget.leadingIcon != null) ...[
            IconTheme(
              data: IconThemeData(color: theme.foregroundColor, size: 22.0),
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
                else if (widget.title != null)
                  Text(
                    widget.title!,
                    style: TextStyle(
                      fontSize: 16.0,
                      fontWeight: FontWeight.w600,
                      color: theme.foregroundColor,
                    ),
                  ),
                if (widget.subtitle != null) ...[
                  if (widget.titleWidget != null || widget.title != null)
                    const SizedBox(height: 2.0),
                  Text(
                    widget.subtitle!,
                    style: TextStyle(
                      fontSize: 12.0,
                      color: theme.foregroundSecondaryColor,
                    ),
                  ),
                ],
              ],
            ),
          ),
          if (widget.actionIcon != null)
            widget.actionIcon!
          else if (widget.expandable)
            AnimatedRotation(
              turns: _isExpanded ? 0.5 : 0.0,
              duration: effectiveStyle.animationDuration,
              curve: effectiveStyle.animationCurve,
              child: Icon(
                Icons.keyboard_arrow_down,
                color: theme.foregroundSecondaryColor,
                size: 24.0,
              ),
            ),
        ],
      );

      Widget headerWidget = headerContent;

      cardChild = Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          headerWidget,
          if (hasBodyContent)
            AnimatedSize(
              duration: effectiveStyle.animationDuration,
              curve: effectiveStyle.animationCurve,
              alignment: Alignment.topCenter,
              child: shouldShowBody
                  ? Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (effectiveStyle.showDivider) ...[
                          const SizedBox(height: 12.0),
                          Divider(
                            height: 1.0,
                            color: theme.dividerColor.withValues(alpha: 0.5),
                          ),
                        ],
                        Padding(
                          padding:
                              effectiveStyle.contentPadding ??
                              const EdgeInsets.only(top: 12.0),
                          child: _buildBodyContent(context, theme),
                        ),
                      ],
                    )
                  : const SizedBox(width: double.infinity, height: 0.0),
            ),
        ],
      );
    }

    if (widget.selectable) {
      cardChild = SelectionArea(child: cardChild);
    }

    final bool inCardScope = FluentContainerScope.of(context) != null;
    if (inCardScope) {
      final VoidCallback? tapCallback =
          widget.onTap ??
          (widget.expandable || widget.onActionTap != null
              ? _toggleExpand
              : null);
      if (tapCallback != null) {
        return GestureDetector(
          behavior: HitTestBehavior.opaque,
          onTap: tapCallback,
          child: cardChild,
        );
      }
      return cardChild;
    }

    return FluentContainer(
      style: effectiveStyle,
      onTap:
          widget.onTap ??
          (widget.expandable || widget.onActionTap != null
              ? _toggleExpand
              : null),
      selectable: widget.selectable,
      child: cardChild,
    );
  }

  Widget _buildBodyContent(BuildContext context, FluentThemeData theme) {
    if (widget.child != null) {
      return widget.child!;
    }
    if (widget.richText != null) {
      final TextSpan span = widget.richText is TextSpan
          ? (widget.richText as TextSpan)
          : TextSpan(children: [widget.richText!]);
      return widget.selectable
          ? SelectableText.rich(
              span,
              style: TextStyle(
                fontSize: 14.0,
                color: theme.foregroundColor,
                height: 1.4,
              ),
            )
          : Text.rich(
              span,
              style: TextStyle(
                fontSize: 14.0,
                color: theme.foregroundColor,
                height: 1.4,
              ),
            );
    }
    if (widget.text != null) {
      return widget.selectable
          ? SelectableText(
              widget.text!,
              style: TextStyle(
                fontSize: 14.0,
                color: theme.foregroundColor,
                height: 1.4,
              ),
            )
          : Text(
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
