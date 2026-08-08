import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import '../buttons/fluent_text_button.dart';
import 'fluent_card_style.dart';
import 'fluent_image_card.dart';
import 'fluent_text_card.dart';

export 'fluent_card_style.dart';
export 'fluent_image_card.dart';
export 'fluent_text_card.dart';

/// Fluent 2 BasicCard 基础卡片容器 [FluentCard]
///
/// 完全移植自 Android Kotlin BasicCard.kt, V2CardActivity.kt 与 V2CardUITest.kt
/// 顶层接收 [child] 内容、[onTap]、[selectable] 与高频参数 [opacity]，高级外观、尺寸与动画统一由 [style] 配置。
///
/// 同时也提供便利的衍生命名构建函数：
/// - `FluentCard.text(...)` / `FluentCard.Text(...)` -> [FluentTextCard] (文本/展开卡片)
/// - `FluentCard.image(...)` / `FluentCard.Image(...)` -> [FluentImageCard] (图片/海报卡片)
/// - `FluentCard.file(...)` / `FluentCard.File(...)` -> [FluentFileCard] (文件预览卡片)
/// - `FluentCard.announcement(...)` / `FluentCard.Announcement(...)` -> [FluentAnnouncementCard] (通告卡片)
class FluentCard extends StatelessWidget {
  /// 卡片内容 Child
  final Widget child;

  /// 点击回调 (可选)
  final VoidCallback? onTap;

  /// 是否开启内部文本划词/选中复制功能 (默认 false)
  final bool selectable;

  /// 卡片不透明度 (可选，高频直接参数，范围 0.0 ~ 1.0)
  final double? opacity;

  /// 卡片外侧内边距 (可选，提供时覆盖 style.padding)
  final EdgeInsetsGeometry? padding;

  /// 卡片外观与动画配置包 [FluentCardStyle] (可选)
  final FluentCardStyle style;

  const FluentCard({
    super.key,
    required this.child,
    this.onTap,
    this.selectable = false,
    this.opacity,
    this.padding,
    this.style = const FluentCardStyle(),
  });

  /// [FluentTextCard] 构建方法: `FluentCard.text(...)`
  static Widget text({
    Key? key,
    String? title,
    Widget? titleWidget,
    String? subtitle,
    Widget? leadingIcon,
    String? text,
    InlineSpan? richText,
    bool initiallyExpanded = false,
    ValueChanged<bool>? onExpandedChanged,
    Widget? actionIcon,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    bool expandable = true,
    bool selectable = false,
    double? opacity,
    bool showDivider = false,
    FluentCardStyle style = const FluentCardStyle(),
    Widget? child,
  }) {
    return FluentTextCard(
      key: key,
      title: title,
      titleWidget: titleWidget,
      subtitle: subtitle,
      leadingIcon: leadingIcon,
      text: text,
      richText: richText,
      initiallyExpanded: initiallyExpanded,
      onExpandedChanged: onExpandedChanged,
      actionIcon: actionIcon,
      onActionTap: onActionTap,
      onTap: onTap,
      expandable: expandable,
      selectable: selectable,
      opacity: opacity,
      showDivider: showDivider,
      style: style,
      child: child,
    );
  }

  /// [FluentTextCard] 静态构建别名方法: `FluentCard.Text(...)`
  // ignore: non_constant_identifier_names
  static Widget Text({
    Key? key,
    String? title,
    Widget? titleWidget,
    String? subtitle,
    Widget? leadingIcon,
    String? text,
    InlineSpan? richText,
    Widget? child,
    bool initiallyExpanded = false,
    ValueChanged<bool>? onExpandedChanged,
    Widget? actionIcon,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    bool expandable = true,
    bool selectable = false,
    double? opacity,
    bool showDivider = false,
    FluentCardStyle style = const FluentCardStyle(),
  }) => FluentCard.text(
    key: key,
    title: title,
    titleWidget: titleWidget,
    subtitle: subtitle,
    leadingIcon: leadingIcon,
    text: text,
    richText: richText,
    initiallyExpanded: initiallyExpanded,
    onExpandedChanged: onExpandedChanged,
    actionIcon: actionIcon,
    onActionTap: onActionTap,
    onTap: onTap,
    expandable: expandable,
    selectable: selectable,
    opacity: opacity,
    showDivider: showDivider,
    style: style,
    child: child,
  );

  /// [FluentImageCard] 构建方法: `FluentCard.image(...)`
  static Widget image({
    Key? key,
    ImageProvider? image,
    Widget? imageWidget,
    FluentImageCardPosition position = FluentImageCardPosition.top,
    String? title,
    Widget? titleWidget,
    String? subtitle,
    String? description,
    Widget? leadingIcon,
    String? badgeText,
    Widget? badge,
    Widget? actionIcon,
    String? buttonText,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    bool selectable = false,
    double? opacity,
    FluentCardStyle style = const FluentCardStyle(),
    Widget? child,
  }) {
    return FluentImageCard(
      key: key,
      image: image,
      imageWidget: imageWidget,
      position: position,
      title: title,
      titleWidget: titleWidget,
      subtitle: subtitle,
      description: description,
      leadingIcon: leadingIcon,
      badgeText: badgeText,
      badge: badge,
      actionIcon: actionIcon,
      buttonText: buttonText,
      onActionTap: onActionTap,
      onTap: onTap,
      selectable: selectable,
      opacity: opacity,
      style: style,
      child: child,
    );
  }

  /// [FluentImageCard] 静态构建别名方法: `FluentCard.Image(...)`
  // ignore: non_constant_identifier_names
  static Widget Image({
    Key? key,
    ImageProvider? image,
    Widget? imageWidget,
    FluentImageCardPosition position = FluentImageCardPosition.top,
    String? title,
    Widget? titleWidget,
    String? subtitle,
    String? description,
    Widget? leadingIcon,
    String? badgeText,
    Widget? badge,
    Widget? actionIcon,
    String? buttonText,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    bool selectable = false,
    double? opacity,
    FluentCardStyle style = const FluentCardStyle(),
    Widget? child,
  }) => FluentCard.image(
    key: key,
    image: image,
    imageWidget: imageWidget,
    position: position,
    title: title,
    titleWidget: titleWidget,
    subtitle: subtitle,
    description: description,
    leadingIcon: leadingIcon,
    badgeText: badgeText,
    badge: badge,
    actionIcon: actionIcon,
    buttonText: buttonText,
    onActionTap: onActionTap,
    onTap: onTap,
    selectable: selectable,
    opacity: opacity,
    style: style,
    child: child,
  );

  /// [FluentFileCard] 构建方法: `FluentCard.file(...)`
  static Widget file({
    Key? key,
    String? title,
    String? subtitle,
    Widget? leadingIcon,
    Widget? thumbnail,
    Widget? actionIcon,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    bool selectable = false,
    double? opacity,
    FluentCardStyle style = const FluentCardStyle(),
  }) {
    return FluentFileCard(
      key: key,
      title: title,
      subtitle: subtitle,
      leadingIcon: leadingIcon,
      thumbnail: thumbnail,
      actionIcon: actionIcon,
      onActionTap: onActionTap,
      onTap: onTap,
      selectable: selectable,
      opacity: opacity,
      style: style,
    );
  }

  /// [FluentFileCard] 静态构建别名方法: `FluentCard.File(...)`
  // ignore: non_constant_identifier_names
  static Widget File({
    Key? key,
    String? title,
    String? subtitle,
    Widget? leadingIcon,
    Widget? thumbnail,
    Widget? actionIcon,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    bool selectable = false,
    double? opacity,
    FluentCardStyle style = const FluentCardStyle(),
  }) => FluentCard.file(
    key: key,
    title: title,
    subtitle: subtitle,
    leadingIcon: leadingIcon,
    thumbnail: thumbnail,
    actionIcon: actionIcon,
    onActionTap: onActionTap,
    onTap: onTap,
    selectable: selectable,
    style: style,
  );

  /// [FluentAnnouncementCard] 构建方法: `FluentCard.announcement(...)`
  static Widget announcement({
    Key? key,
    String? title,
    String? description,
    String? subtitle,
    String? buttonText,
    VoidCallback? onActionTap,
    Widget? illustration,
    Widget? leadingIcon,
    VoidCallback? onTap,
    bool selectable = false,
    double? opacity,
    FluentCardStyle style = const FluentCardStyle(),
  }) {
    return FluentAnnouncementCard(
      key: key,
      title: title,
      description: description,
      subtitle: subtitle,
      buttonText: buttonText,
      onActionTap: onActionTap,
      illustration: illustration,
      leadingIcon: leadingIcon,
      onTap: onTap,
      selectable: selectable,
      opacity: opacity,
      style: style,
    );
  }

  /// [FluentAnnouncementCard] 静态构建别名方法: `FluentCard.Announcement(...)`
  // ignore: non_constant_identifier_names
  static Widget Announcement({
    Key? key,
    String? title,
    String? description,
    String? subtitle,
    String? buttonText,
    VoidCallback? onActionTap,
    Widget? illustration,
    Widget? leadingIcon,
    VoidCallback? onTap,
    bool selectable = false,
    double? opacity,
    FluentCardStyle style = const FluentCardStyle(),
  }) => FluentCard.announcement(
    key: key,
    title: title,
    description: description,
    subtitle: subtitle,
    buttonText: buttonText,
    onActionTap: onActionTap,
    illustration: illustration,
    leadingIcon: leadingIcon,
    onTap: onTap,
    selectable: selectable,
    opacity: opacity,
    style: style,
  );

  FluentCardStyle _getEffectiveStyle() {
    if (opacity != null) {
      return style.copyWith(opacity: opacity);
    }
    return style;
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final effectiveStyle = _getEffectiveStyle();
    final bool isClickable = onTap != null;

    final Color baseBg =
        effectiveStyle.backgroundColor ?? theme.backgroundColor;
    final double effOpacity = effectiveStyle.opacity;
    final Color effectiveBg = effOpacity < 1.0
        ? baseBg.withValues(alpha: effOpacity)
        : baseBg;

    final bool isTranslucent = effOpacity < 1.0 || effectiveBg.a < 1.0;

    final double effRadius = style.borderRadius ?? 12.0;

    final Color borderCol = isTranslucent
        ? (isDark
              ? Colors.white.withValues(alpha: 0.15)
              : Colors.white.withValues(alpha: 0.6))
        : theme.dividerColor.withValues(alpha: isDark ? 0.3 : 0.4);

    final EdgeInsetsGeometry effPadding =
        padding ?? effectiveStyle.padding ?? const EdgeInsets.all(16.0);

    Widget cardBody = Padding(padding: effPadding, child: child);

    if (selectable) {
      cardBody = SelectionArea(child: cardBody);
    }

    if (effectiveStyle.enableSizeAnimation) {
      cardBody = AnimatedSize(
        duration: effectiveStyle.animationDuration,
        curve: effectiveStyle.animationCurve,
        alignment: Alignment.topCenter,
        child: cardBody,
      );
    }

    final double effectiveWidth = effectiveStyle.width ?? double.infinity;

    final List<BoxShadow>? shadows = effectiveStyle.shadow;

    final Color hoverOverlay = isDark
        ? Colors.white.withAlpha(5)
        : Colors.black.withAlpha(5);

    Widget cardSurface = Container(
      decoration: BoxDecoration(
        color: effectiveBg,
        borderRadius: BorderRadius.circular(effRadius),
        border: Border.all(color: borderCol, width: 1.0),
      ),
      child: cardBody,
    );

    if (isClickable) {
      cardSurface = FluentMaterial(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(effRadius),
        child: FluentInkWell(
          onTap: onTap,
          splashColor: isDark
              ? Colors.white.withAlpha(10)
              : Colors.black.withAlpha(10),
          mouseCursor: (effectiveStyle.enableCursor && !selectable)
              ? SystemMouseCursors.click
              : MouseCursor.defer,
          borderRadius: BorderRadius.circular(effRadius),
          hoverColor: hoverOverlay,
          child: cardSurface,
        ),
      );
    }

    Widget cardWidget = Container(
      width: effectiveWidth,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(effRadius),
        boxShadow: shadows,
      ),
      child: cardSurface,
    );

    if (!effectiveStyle.expand) {
      cardWidget = Align(
        alignment: Alignment.topCenter,
        heightFactor: 1.0,
        child: cardWidget,
      );
    }

    return FluentCardScope(
      opacity: effOpacity,
      style: effectiveStyle,
      child: cardWidget,
    );
  }
}

/// FluentCard 向下传递上下文 Scope [FluentCardScope]
class FluentCardScope extends InheritedWidget {
  /// 卡片不透明度 (0.0 ~ 1.0)
  final double opacity;

  /// 卡片完整样式 [FluentCardStyle]
  final FluentCardStyle style;

  const FluentCardScope({
    super.key,
    required this.opacity,
    required this.style,
    required super.child,
  });

  static FluentCardScope? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FluentCardScope>();
  }

  @override
  bool updateShouldNotify(FluentCardScope oldWidget) {
    return opacity != oldWidget.opacity || style != oldWidget.style;
  }
}

/// Fluent 2 FileCard 文件预览卡片 [FluentFileCard]
///
/// 完全移植自 Android Kotlin FileCard.kt 与 V2CardUITest.kt
class FluentFileCard extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final Widget? leadingIcon;
  final Widget? thumbnail;
  final Widget? actionIcon;
  final VoidCallback? onActionTap;
  final VoidCallback? onTap;
  final bool selectable;
  final double? opacity;
  final FluentCardStyle style;

  const FluentFileCard({
    super.key,
    this.title,
    this.subtitle,
    this.leadingIcon,
    this.thumbnail,
    this.actionIcon,
    this.onActionTap,
    this.onTap,
    this.selectable = false,
    this.opacity,
    this.style = const FluentCardStyle(),
  });

  FluentCardStyle _getEffectiveStyle() {
    if (opacity != null) {
      return style.copyWith(opacity: opacity);
    }
    return style;
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final bool showMoreOption = onActionTap != null;
    final effectiveStyle = _getEffectiveStyle();

    return FluentCard(
      onTap: onTap,
      style: effectiveStyle,
      padding: EdgeInsets.zero,
      selectable: selectable,
      child: Padding(
        padding: effectiveStyle.padding ?? const EdgeInsets.all(12.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (thumbnail != null) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: SizedBox(
                  width: double.infinity,
                  height: 120.0,
                  child: FittedBox(fit: BoxFit.cover, child: thumbnail!),
                ),
              ),
              const SizedBox(height: 10.0),
            ],
            Row(
              children: [
                if (thumbnail == null) ...[
                  Container(
                    width: 40.0,
                    height: 40.0,
                    decoration: BoxDecoration(
                      color: theme.primaryColor.withAlpha(20),
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    alignment: Alignment.center,
                    child:
                        leadingIcon ??
                        Icon(
                          Icons.insert_drive_file_outlined,
                          color: theme.primaryColor,
                          size: 22.0,
                        ),
                  ),
                  const SizedBox(width: 12.0),
                ],
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (title != null && title!.isNotEmpty)
                        Text(
                          title!,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontWeight: FontWeight.bold,
                            color: theme.foregroundColor,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      if (subtitle != null && subtitle!.isNotEmpty) ...[
                        if (title != null && title!.isNotEmpty)
                          const SizedBox(height: 2.0),
                        Text(
                          subtitle!,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: theme.foregroundSecondaryColor,
                          ),
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ],
                  ),
                ),
                if (showMoreOption) ...[
                  const SizedBox(width: 8.0),
                  GestureDetector(
                    onTap: onActionTap,
                    child: MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: IconTheme(
                          data: IconThemeData(
                            color: theme.foregroundSecondaryColor,
                            size: 20.0,
                          ),
                          child: actionIcon ?? const Icon(Icons.more_vert),
                        ),
                      ),
                    ),
                  ),
                ],
              ],
            ),
          ],
        ),
      ),
    );
  }
}

/// Fluent 2 AnnouncementCard 公告/通告卡片 [FluentAnnouncementCard]
///
/// 完全移植自 Android Kotlin AnnouncementCard.kt 与 V2CardUITest.kt
class FluentAnnouncementCard extends StatelessWidget {
  final String? title;
  final String? description;
  final String? subtitle;
  final String? buttonText;
  final VoidCallback? onActionTap;
  final Widget? illustration;
  final Widget? leadingIcon;
  final VoidCallback? onTap;
  final bool selectable;
  final double? opacity;
  final FluentCardStyle style;

  const FluentAnnouncementCard({
    super.key,
    this.title,
    this.description,
    this.subtitle,
    this.buttonText,
    this.onActionTap,
    this.illustration,
    this.leadingIcon,
    this.onTap,
    this.selectable = false,
    this.opacity,
    this.style = const FluentCardStyle(),
  });

  FluentCardStyle _getEffectiveStyle() {
    if (opacity != null) {
      return style.copyWith(opacity: opacity);
    }
    return style;
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final String effectiveDescription = description ?? subtitle ?? '';
    final Widget? effectiveIllustration = illustration ?? leadingIcon;
    final bool showButton = onActionTap != null && buttonText != null;
    final effectiveStyle = _getEffectiveStyle();

    return FluentCard(
      onTap: onTap,
      style: effectiveStyle,
      padding: EdgeInsets.zero,
      selectable: selectable,
      child: Padding(
        padding: effectiveStyle.padding ?? const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            if (effectiveIllustration != null) ...[
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: effectiveIllustration,
              ),
              const SizedBox(height: 12.0),
            ],
            if (title != null && title!.isNotEmpty)
              Text(
                title!,
                style: TextStyle(
                  fontSize: 16.0,
                  fontWeight: FontWeight.bold,
                  color: theme.foregroundColor,
                ),
              ),
            if (effectiveDescription.isNotEmpty) ...[
              if (title != null && title!.isNotEmpty)
                const SizedBox(height: 4.0),
              Text(
                effectiveDescription,
                style: TextStyle(
                  fontSize: 13.0,
                  color: theme.foregroundSecondaryColor,
                  height: 1.4,
                ),
              ),
            ],
            if (showButton) ...[
              const SizedBox(height: 12.0),
              Align(
                alignment: Alignment.centerRight,
                child: FluentTextButton(
                  text: buttonText,
                  onPressed: onActionTap,
                  fontSize: 13.0,
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
