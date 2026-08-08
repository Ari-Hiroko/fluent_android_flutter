import 'package:flutter/material.dart';
import '../../theme/fluent_shadow.dart';
import '../../theme/fluent_theme.dart';
import '../buttons/fluent_text_button.dart';
import 'fluent_container_style.dart';
import 'fluent_image_card.dart';
import 'fluent_text_card.dart';

export 'animated_fluent_container.dart';
export 'fluent_container_style.dart';
export 'fluent_image_card.dart';
export 'fluent_text_card.dart';

/// Fluent 2 BasicCard 基础卡片容器 [FluentContainer]
///
/// 完全移植自 Android Kotlin BasicCard.kt, V2CardActivity.kt 与 V2CardUITest.kt
/// 顶层接收 [child] 内容、[onTap]、[selectable]、高频直接参数 [opacity]、[cardType]、[shadow]、
/// 边框开关 [border] (默认 true) 与 [borderStyle]，高级外观、尺寸与动画由 [style] 配置。
///
/// 同时也提供便利的衍生命名构建函数：
/// - `FluentContainer.text(...)` / `FluentContainer.Text(...)` -> [FluentTextCard] (文本/展开卡片)
/// - `FluentContainer.image(...)` / `FluentContainer.Image(...)` -> [FluentImageCard] (图片/海报卡片)
/// - `FluentContainer.file(...)` / `FluentContainer.File(...)` -> [FluentFileCard] (文件预览卡片)
/// - `FluentContainer.announcement(...)` / `FluentContainer.Announcement(...)` -> [FluentAnnouncementCard] (通告卡片)
class FluentContainer extends StatelessWidget {
  /// 卡片内容 Child
  final Widget child;

  /// 点击回调 (可选)
  final VoidCallback? onTap;

  /// 是否开启内部文本划词/选中复制功能 (默认 false)
  final bool selectable;

  /// 卡片不透明度 (可选，高频直接参数，范围 0.0 ~ 1.0)
  final double? opacity;

  /// 卡片类型 (可选，[FluentContainerType.elevated] 或 [FluentContainerType.outlined])
  final FluentContainerType? cardType;

  /// 自定义卡片阴影 (可选，若提供则覆盖默认阴影；为空且 cardType 为 elevated 时默认展示 FluentShadow.shadow2)
  final List<BoxShadow>? shadow;

  /// 是否显示卡片边框 (可选，默认取决于 style.border)
  final bool? border;

  /// 自定义卡片边框样式 (可选，若提供则覆盖默认边框样式)
  final BoxBorder? borderStyle;

  /// 卡片外侧内边距 (可选，提供时覆盖 style.padding)
  final EdgeInsetsGeometry? padding;

  /// 卡片外观与动画配置包 [FluentContainerStyle] (可选)
  final FluentContainerStyle style;

  const FluentContainer({
    super.key,
    required this.child,
    this.onTap,
    this.selectable = false,
    this.opacity,
    this.cardType,
    this.shadow,
    this.border,
    this.borderStyle,
    this.padding,
    this.style = const FluentContainerStyle(),
  });

  /// [FluentTextCard] 构建方法: `FluentContainer.text(...)`
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
    FluentContainerType? cardType,
    List<BoxShadow>? shadow,
    bool? border,
    BoxBorder? borderStyle,
    bool showDivider = false,
    FluentContainerStyle style = const FluentContainerStyle(),
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
      cardType: cardType,
      shadow: shadow,
      border: border,
      borderStyle: borderStyle,
      showDivider: showDivider,
      style: style,
      child: child,
    );
  }

  /// [FluentTextCard] 静态构建别名方法: `FluentContainer.Text(...)`
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
    FluentContainerType? cardType,
    List<BoxShadow>? shadow,
    bool? border,
    BoxBorder? borderStyle,
    bool showDivider = false,
    FluentContainerStyle style = const FluentContainerStyle(),
  }) => FluentContainer.text(
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
    cardType: cardType,
    shadow: shadow,
    border: border,
    borderStyle: borderStyle,
    showDivider: showDivider,
    style: style,
    child: child,
  );

  /// [FluentImageCard] 构建方法: `FluentContainer.image(...)`
  static Widget image({
    Key? key,
    ImageProvider? image,
    Widget? imageWidget,
    FluentImageCardPosition position = FluentImageCardPosition.top,
    String? title,
    String? subtitle,
    Widget? actionIcon,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    double? opacity,
    FluentContainerType? cardType,
    List<BoxShadow>? shadow,
    bool? border,
    BoxBorder? borderStyle,
    FluentContainerStyle style = const FluentContainerStyle(),
  }) {
    return FluentImageCard(
      key: key,
      image: image,
      imageWidget: imageWidget,
      position: position,
      title: title,
      subtitle: subtitle,
      actionIcon: actionIcon,
      onActionTap: onActionTap,
      onTap: onTap,
      opacity: opacity,
      cardType: cardType,
      shadow: shadow,
      border: border,
      borderStyle: borderStyle,
      style: style,
    );
  }

  /// [FluentImageCard] 静态构建别名方法: `FluentContainer.Image(...)`
  // ignore: non_constant_identifier_names
  static Widget Image({
    Key? key,
    ImageProvider? image,
    Widget? imageWidget,
    FluentImageCardPosition position = FluentImageCardPosition.top,
    String? title,
    String? subtitle,
    Widget? actionIcon,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    double? opacity,
    FluentContainerType? cardType,
    List<BoxShadow>? shadow,
    bool? border,
    BoxBorder? borderStyle,
    FluentContainerStyle style = const FluentContainerStyle(),
  }) => FluentContainer.image(
    key: key,
    image: image,
    imageWidget: imageWidget,
    position: position,
    title: title,
    subtitle: subtitle,
    actionIcon: actionIcon,
    onActionTap: onActionTap,
    onTap: onTap,
    opacity: opacity,
    cardType: cardType,
    shadow: shadow,
    border: border,
    borderStyle: borderStyle,
    style: style,
  );

  /// [FluentFileCard] 构建方法: `FluentContainer.file(...)`
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
    FluentContainerType? cardType,
    List<BoxShadow>? shadow,
    bool? border,
    BoxBorder? borderStyle,
    FluentContainerStyle style = const FluentContainerStyle(),
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
      cardType: cardType,
      shadow: shadow,
      border: border,
      borderStyle: borderStyle,
      style: style,
    );
  }

  /// [FluentFileCard] 静态构建别名方法: `FluentContainer.File(...)`
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
    FluentContainerType? cardType,
    List<BoxShadow>? shadow,
    bool? border,
    BoxBorder? borderStyle,
    FluentContainerStyle style = const FluentContainerStyle(),
  }) => FluentContainer.file(
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
    cardType: cardType,
    shadow: shadow,
    border: border,
    borderStyle: borderStyle,
    style: style,
  );

  /// [FluentAnnouncementCard] 构建方法: `FluentContainer.announcement(...)`
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
    FluentContainerType? cardType,
    List<BoxShadow>? shadow,
    bool? border,
    BoxBorder? borderStyle,
    FluentContainerStyle style = const FluentContainerStyle(),
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
      cardType: cardType,
      shadow: shadow,
      border: border,
      borderStyle: borderStyle,
      style: style,
    );
  }

  /// [FluentAnnouncementCard] 静态构建别名方法: `FluentContainer.Announcement(...)`
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
    FluentContainerType? cardType,
    List<BoxShadow>? shadow,
    bool? border,
    BoxBorder? borderStyle,
    FluentContainerStyle style = const FluentContainerStyle(),
  }) => FluentContainer.announcement(
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
    cardType: cardType,
    shadow: shadow,
    border: border,
    borderStyle: borderStyle,
    style: style,
  );

  FluentContainerStyle _getEffectiveStyle() {
    return style.copyWith(
      opacity: opacity ?? style.opacity,
      cardType: cardType ?? style.cardType,
      shadow: shadow ?? style.shadow,
      border: border ?? style.border,
      borderStyle: borderStyle ?? style.borderStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final effectiveStyle = _getEffectiveStyle();
    final effectiveCardType = effectiveStyle.cardType;
    final bool isClickable = onTap != null;

    final Color baseBg =
        effectiveStyle.backgroundColor ?? theme.backgroundColor;
    final double effOpacity = effectiveStyle.opacity;
    final Color effectiveBg = effOpacity < 1.0
        ? baseBg.withValues(alpha: effOpacity)
        : baseBg;

    final bool isTranslucent = effOpacity < 1.0 || effectiveBg.a < 1.0;

    final double effRadius = effectiveStyle.borderRadius ?? 12.0;

    // 算可选边框 Border (依据 Default.svg 描边容器与 card.svg 阴影容器规范)
    final BoxBorder? effectiveBorder;
    if (!effectiveStyle.border) {
      effectiveBorder = null;
    } else if (effectiveStyle.borderStyle != null) {
      effectiveBorder = effectiveStyle.borderStyle;
    } else if (effectiveCardType == FluentContainerType.outlined) {
      effectiveBorder = Border.all(color: theme.dividerColor, width: 1.0);
    } else {
      final Color defaultBorderColor = isTranslucent
          ? (isDark
                ? Colors.white.withValues(alpha: 0.15)
                : Colors.white.withValues(alpha: 0.6))
          : theme.dividerColor;
      effectiveBorder = Border.all(color: defaultBorderColor, width: 1.0);
    }

    // 算可选阴影 Shadow (默认不设置阴影，仅当显式指定 shadow 或 cardType 为 elevated 时生效)
    final List<BoxShadow>? effectiveShadows;
    if (effectiveStyle.shadow != null) {
      effectiveShadows = effectiveStyle.shadow;
    } else if (effectiveCardType == FluentContainerType.elevated) {
      effectiveShadows = FluentShadow.shadow2(context);
    } else {
      effectiveShadows = null;
    }

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

    final Color hoverOverlay = effectiveStyle.disableHoverOverlay
        ? Colors.transparent
        : (isDark ? Colors.white.withAlpha(15) : Colors.black.withAlpha(15));

    Widget cardSurface = Container(
      decoration: BoxDecoration(
        color: effectiveBg,
        borderRadius: BorderRadius.circular(effRadius),
        border: effectiveBorder,
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
              ? Colors.white.withAlpha(75)
              : Colors.black.withAlpha(75),
          mouseCursor: (effectiveStyle.enableCursor && !selectable)
              ? SystemMouseCursors.click
              : MouseCursor.defer,
          borderRadius: BorderRadius.circular(effRadius),
          hoverColor: hoverOverlay,
          child: cardSurface,
        ),
      );
    }

    Widget cardWidget = FluentDropShadowContainer(
      shadows: effectiveShadows,
      borderRadius: effRadius,
      child: SizedBox(width: effectiveWidth, child: cardSurface),
    );

    if (!effectiveStyle.expand) {
      cardWidget = Align(
        alignment: Alignment.topCenter,
        heightFactor: 1.0,
        child: cardWidget,
      );
    }

    return FluentContainerScope(
      opacity: effOpacity,
      style: effectiveStyle,
      child: cardWidget,
    );
  }
}

/// 专用于 Fluent 2 卡片的外侧 DropShadow 裁剪绘制容器 [FluentDropShadowContainer]
///
/// 解决了 Flutter 标准 BoxShadow 会向卡片内部渗透、导致半透明或抗锯齿边缘变黑/变脏的问题。
/// 通过 Path.combine(PathOperation.difference) 将卡片内部区域完全挖空，
/// 严格遵循 Figma "Show behind transparent areas = false" 规范，呈现 100% 纯净外侧悬浮阴影。
class FluentDropShadowContainer extends StatelessWidget {
  final Widget child;
  final List<BoxShadow>? shadows;
  final double borderRadius;

  const FluentDropShadowContainer({
    super.key,
    required this.child,
    this.shadows,
    this.borderRadius = 12.0,
  });

  @override
  Widget build(BuildContext context) {
    if (shadows == null || shadows!.isEmpty) {
      return child;
    }

    return CustomPaint(
      foregroundPainter: null,
      painter: _FluentDropShadowPainter(
        shadows: shadows!,
        borderRadius: borderRadius,
      ),
      child: child,
    );
  }
}

class _FluentDropShadowPainter extends CustomPainter {
  final List<BoxShadow> shadows;
  final double borderRadius;

  _FluentDropShadowPainter({required this.shadows, required this.borderRadius});

  @override
  void paint(Canvas canvas, Size size) {
    if (size.isEmpty) return;

    final RRect rrect = RRect.fromRectAndRadius(
      Offset.zero & size,
      Radius.circular(borderRadius),
    );

    final Path cardPath = Path()..addRRect(rrect);

    for (final shadow in shadows) {
      final Paint paint = shadow.toPaint();
      final double inflateMargin =
          shadow.blurRadius * 2.0 + shadow.spreadRadius.abs() + 20.0;
      final Rect shadowBounds = rrect.outerRect.inflate(inflateMargin);
      final Path shadowBoundsPath = Path()..addRect(shadowBounds);

      // 将卡片内部区域从画布裁剪区中减去 (Cutout)，确保阴影仅留在卡片外围
      final Path shadowOnlyPath = Path.combine(
        PathOperation.difference,
        shadowBoundsPath,
        cardPath,
      );

      canvas.save();
      canvas.clipPath(shadowOnlyPath);

      final RRect shadowRRect = rrect.shift(shadow.offset);
      final Path shadowPath = Path()..addRRect(shadowRRect);
      canvas.drawPath(shadowPath, paint);

      canvas.restore();
    }
  }

  @override
  bool shouldRepaint(_FluentDropShadowPainter oldDelegate) {
    return shadows != oldDelegate.shadows ||
        borderRadius != oldDelegate.borderRadius;
  }
}

/// FluentContainer 向下传递上下文 Scope [FluentContainerScope]
class FluentContainerScope extends InheritedWidget {
  /// 卡片不透明度 (0.0 ~ 1.0)
  final double opacity;

  /// 卡片完整样式 [FluentContainerStyle]
  final FluentContainerStyle style;

  const FluentContainerScope({
    super.key,
    required this.opacity,
    required this.style,
    required super.child,
  });

  static FluentContainerScope? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<FluentContainerScope>();
  }

  @override
  bool updateShouldNotify(FluentContainerScope oldWidget) {
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
  final FluentContainerType? cardType;
  final List<BoxShadow>? shadow;
  final bool? border;
  final BoxBorder? borderStyle;
  final FluentContainerStyle style;

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
    this.cardType,
    this.shadow,
    this.border,
    this.borderStyle,
    this.style = const FluentContainerStyle(),
  });

  FluentContainerStyle _getEffectiveStyle() {
    return style.copyWith(
      opacity: opacity ?? style.opacity,
      cardType: cardType ?? style.cardType,
      shadow: shadow ?? style.shadow,
      border: border ?? style.border,
      borderStyle: borderStyle ?? style.borderStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final bool showMoreOption = onActionTap != null;
    final effectiveStyle = _getEffectiveStyle();

    return FluentContainer(
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
  final FluentContainerType? cardType;
  final List<BoxShadow>? shadow;
  final bool? border;
  final BoxBorder? borderStyle;
  final FluentContainerStyle style;

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
    this.cardType,
    this.shadow,
    this.border,
    this.borderStyle,
    this.style = const FluentContainerStyle(),
  });

  FluentContainerStyle _getEffectiveStyle() {
    return style.copyWith(
      opacity: opacity ?? style.opacity,
      cardType: cardType ?? style.cardType,
      shadow: shadow ?? style.shadow,
      border: border ?? style.border,
      borderStyle: borderStyle ?? style.borderStyle,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final String effectiveDescription = description ?? subtitle ?? '';
    final Widget? effectiveIllustration = illustration ?? leadingIcon;
    final bool showButton = onActionTap != null && buttonText != null;
    final effectiveStyle = _getEffectiveStyle();

    return FluentContainer(
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
                child: SizedBox(
                  width: double.infinity,
                  height: 140.0,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: effectiveIllustration,
                  ),
                ),
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
                const SizedBox(height: 6.0),
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
              FluentTextButton(text: buttonText!, onPressed: onActionTap),
            ],
          ],
        ),
      ),
    );
  }
}
