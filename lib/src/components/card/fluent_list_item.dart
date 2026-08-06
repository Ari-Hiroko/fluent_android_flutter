import 'package:flutter/material.dart';
import '../../theme/fluent_motion_tokens.dart';
import '../../theme/fluent_theme.dart';
import '../buttons/fluent_text_button.dart';
import 'fluent_divider.dart';

/// SectionHeader 风格类型
enum SectionHeaderStyle { bold, subtle }

/// SectionDescription 排布类型
enum TextPlacement { top, bottom }

/// Fluent 2 标准列表项组件 [FluentListItem]
///
/// 完全移植自 Android Kotlin ListItem.kt, V2ListItemActivity.kt 与 V2ListItemUITest.kt
class FluentListItem extends StatefulWidget {
  /// 主标题 (对应 text / title)
  final String title;

  /// 副标题 (第二行文本，对应 subText / subTitle)
  final String? subTitle;

  /// 第三行文本 (页脚描述，对应 secondarySubText / tertiaryTitle)
  final String? tertiaryTitle;

  /// 前置组件 (对应 leadingAccessoryContent / leading)
  final Widget? leading;

  /// 前置组件别名
  final Widget? leadingAccessoryContent;

  /// 尾部组件 (对应 trailingAccessoryContent / trailing)
  final Widget? trailing;

  /// 尾部组件别名
  final Widget? trailingAccessoryContent;

  /// 是否在底部显示分割线
  final bool showDivider;

  /// 分割线左侧缩进 (默认有 leading 时缩进 56dp，无 leading 时缩进 16dp)
  final double? dividerInset;

  /// 点击回调 (对应 onClick / onTap)
  final VoidCallback? onTap;

  /// 点击回调 onClick 别名
  final VoidCallback? onClick;

  /// 长按回调
  final VoidCallback? onLongPress;

  /// 是否可用 (Enabled，当为 false 时无法响应点击，完全与 V2ListItemUITest 对齐)
  final bool enabled;

  /// 是否启用 MouseRegion 鼠标悬浮与光标响应 (可选，默认 true)
  final bool enableCursor;

  /// 是否开启背景与动效过渡 (默认 true)
  final bool enableAnimation;

  /// 动画持续时间 (默认 FluentMotionDuration.fast 150ms)
  final Duration animationDuration;

  /// 动画缓动曲线 (默认 FluentMotionCurve.standard)
  final Curve animationCurve;

  const FluentListItem({
    super.key,
    required this.title,
    this.subTitle,
    this.tertiaryTitle,
    this.leading,
    this.leadingAccessoryContent,
    this.trailing,
    this.trailingAccessoryContent,
    this.showDivider = true,
    this.dividerInset,
    this.onTap,
    this.onClick,
    this.onLongPress,
    this.enabled = true,
    this.enableCursor = true,
    this.enableAnimation = true,
    this.animationDuration = FluentMotionDuration.fast,
    this.animationCurve = FluentMotionCurve.standard,
  });

  /// ListItem.item 对齐别名构造器
  const FluentListItem.item({
    super.key,
    required String text,
    String? subText,
    String? secondarySubText,
    this.leadingAccessoryContent,
    this.trailingAccessoryContent,
    this.enabled = true,
    this.enableCursor = true,
    this.onClick,
    this.showDivider = false,
  }) : title = text,
       subTitle = subText,
       tertiaryTitle = secondarySubText,
       leading = leadingAccessoryContent,
       trailing = trailingAccessoryContent,
       onTap = onClick,
       dividerInset = null,
       onLongPress = null,
       enableAnimation = true,
       animationDuration = FluentMotionDuration.fast,
       animationCurve = FluentMotionCurve.standard;

  @override
  State<FluentListItem> createState() => _FluentListItemState();
}

class _FluentListItemState extends State<FluentListItem> {
  bool _isHovered = false;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    final bool hasSubTitle =
        widget.subTitle != null && widget.subTitle!.isNotEmpty;
    final bool hasTertiary =
        widget.tertiaryTitle != null && widget.tertiaryTitle!.isNotEmpty;

    final Widget? effectiveLeading =
        widget.leadingAccessoryContent ?? widget.leading;
    final Widget? effectiveTrailing =
        widget.trailingAccessoryContent ?? widget.trailing;

    final VoidCallback? tapCallback = widget.enabled
        ? (widget.onTap ?? widget.onClick)
        : null;
    final bool isClickable = tapCallback != null;

    // 确定高度规范 (对标 V2ListItemUITest: 1行 48dp, 2行 64dp, 3行 88dp)
    double minHeight = 48.0;
    if (hasSubTitle && hasTertiary) {
      minHeight = 88.0;
    } else if (hasSubTitle) {
      minHeight = 64.0;
    }

    final Color titleColor = widget.enabled
        ? theme.foregroundColor
        : theme.foregroundSecondaryColor.withAlpha(128);

    final Color subtitleColor = widget.enabled
        ? theme.foregroundSecondaryColor
        : theme.foregroundSecondaryColor.withAlpha(96);

    // 计算 Divider 默认左缩进
    final double defaultInset =
        widget.dividerInset ?? (effectiveLeading != null ? 56.0 : 16.0);

    final Color bgColor = (_isHovered && isClickable && widget.enableCursor)
        ? theme.backgroundPressedColor
        : theme.backgroundColor;

    final Widget content = Container(
      constraints: BoxConstraints(minHeight: minHeight),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
      child: Row(
        children: [
          // 前置 Leading
          if (effectiveLeading != null) ...[
            IconTheme(
              data: IconThemeData(color: subtitleColor, size: 24.0),
              child: effectiveLeading,
            ),
            const SizedBox(width: 16.0),
          ],

          // 中间三层 Text
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  widget.title,
                  style: TextStyle(
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: titleColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                if (hasSubTitle) ...[
                  const SizedBox(height: 2.0),
                  Text(
                    widget.subTitle!,
                    style: TextStyle(fontSize: 13.0, color: subtitleColor),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
                if (hasTertiary) ...[
                  const SizedBox(height: 2.0),
                  Text(
                    widget.tertiaryTitle!,
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
          if (effectiveTrailing != null) ...[
            const SizedBox(width: 12.0),
            IconTheme(
              data: IconThemeData(color: subtitleColor, size: 20.0),
              child: effectiveTrailing,
            ),
          ],
        ],
      ),
    );

    Widget itemContainer = AnimatedContainer(
      duration: widget.enableAnimation
          ? widget.animationDuration
          : Duration.zero,
      curve: widget.animationCurve,
      color: bgColor,
      child: isClickable
          ? Material(
              color: Colors.transparent,
              child: InkWell(
                onTap: tapCallback,
                onLongPress: widget.enabled ? widget.onLongPress : null,
                mouseCursor: isClickable
                    ? SystemMouseCursors.click
                    : SystemMouseCursors.basic,
                highlightColor: Colors.black.withAlpha(15),
                splashColor: Colors.black.withAlpha(25),
                child: content,
              ),
            )
          : content,
    );

    if (widget.enableCursor) {
      itemContainer = MouseRegion(
        cursor: isClickable
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        onEnter: (_) {
          if (isClickable) setState(() => _isHovered = true);
        },
        onExit: (_) {
          if (isClickable) setState(() => _isHovered = false);
        },
        child: itemContainer,
      );
    }

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        itemContainer,
        if (widget.showDivider) FluentDivider(startIndent: defaultInset),
      ],
    );
  }
}

/// Fluent 2 列表节头部组件 [FluentListSectionHeader]
class FluentListSectionHeader extends StatelessWidget {
  final String title;
  final String? accessoryTextTitle;
  final VoidCallback? accessoryTextOnClick;
  final SectionHeaderStyle style;
  final bool? enableChevron;
  final Widget? content;

  const FluentListSectionHeader({
    super.key,
    required this.title,
    this.accessoryTextTitle,
    this.accessoryTextOnClick,
    this.style = SectionHeaderStyle.bold,
    this.enableChevron,
    this.content,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final bool showChevron =
        enableChevron ?? (style == SectionHeaderStyle.bold);

    return Container(
      height: 48.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      color: theme.backgroundColor,
      child: Row(
        children: [
          Text(
            title,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: style == SectionHeaderStyle.bold
                  ? FontWeight.bold
                  : FontWeight.w600,
              color: theme.foregroundColor,
            ),
          ),
          if (showChevron) ...[
            const SizedBox(width: 4.0),
            Icon(
              Icons.chevron_right,
              size: 16.0,
              color: theme.foregroundSecondaryColor,
            ),
          ],
          const Spacer(),
          // ignore: use_null_aware_elements
          if (content != null) content!,
          if (accessoryTextTitle != null && accessoryTextOnClick != null) ...[
            FluentTextButton(
              text: accessoryTextTitle,
              onPressed: accessoryTextOnClick,
            ),
          ],
        ],
      ),
    );
  }
}

/// Fluent 2 列表通用 Header 标头组件 [FluentListHeader]
class FluentListHeader extends StatelessWidget {
  final String title;

  const FluentListHeader({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Container(
      height: 48.0,
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      alignment: Alignment.centerLeft,
      color: theme.backgroundColor,
      child: Text(
        title,
        style: TextStyle(
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: theme.foregroundColor,
        ),
      ),
    );
  }
}

/// Fluent 2 列表 Section 说明描述组件 [FluentListSectionDescription]
class FluentListSectionDescription extends StatelessWidget {
  final String description;
  final TextPlacement descriptionPlacement;
  final String? actionText;
  final VoidCallback? onActionClick;

  const FluentListSectionDescription({
    super.key,
    required this.description,
    this.descriptionPlacement = TextPlacement.top,
    this.actionText,
    this.onActionClick,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Container(
      constraints: const BoxConstraints(minHeight: 64.0),
      padding: EdgeInsets.only(
        left: 16.0,
        right: 16.0,
        top: descriptionPlacement == TextPlacement.top ? 8.0 : 16.0,
        bottom: descriptionPlacement == TextPlacement.bottom ? 8.0 : 16.0,
      ),
      alignment: Alignment.centerLeft,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Text(
              description,
              style: TextStyle(
                fontSize: 12.0,
                color: theme.foregroundSecondaryColor,
                height: 1.35,
              ),
            ),
          ),
          if (actionText != null && onActionClick != null) ...[
            const SizedBox(width: 8.0),
            FluentTextButton(text: actionText, onPressed: onActionClick),
          ],
        ],
      ),
    );
  }
}
