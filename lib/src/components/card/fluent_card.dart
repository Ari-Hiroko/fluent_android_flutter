import 'package:flutter/material.dart';
import '../../theme/fluent_motion_tokens.dart';
import '../../theme/fluent_theme.dart';
import '../buttons/fluent_text_button.dart';
import 'fluent_text_card.dart';

export 'fluent_text_card.dart';

/// Fluent 2 BasicCard 基础卡片容器 [FluentCard]
///
/// 完全移植自 Android Kotlin BasicCard.kt, V2CardActivity.kt 与 V2CardUITest.kt
/// 支持可选的内容动态改变伸缩动画、[opacity] 不透明度调整、[width] 自定义宽度（默认 [double.infinity] 自动填满横向宽度）与 [selectable] 划词选中复制。
///
/// 同时也提供便利的衍生命名构建函数：
/// - `FluentCard.text(...)` / `FluentCard.Text(...)` -> [FluentTextCard] (可展开文本卡片)
/// - `FluentCard.file(...)` / `FluentCard.File(...)` -> [FluentFileCard] (文件预览卡片)
/// - `FluentCard.announcement(...)` / `FluentCard.Announcement(...)` -> [FluentAnnouncementCard] (通告卡片)
class FluentCard extends StatelessWidget {
  /// 卡片内容 Child
  final Widget child;

  /// 点击回调
  final VoidCallback? onTap;

  /// 内边距
  final EdgeInsetsGeometry padding;

  /// 圆角半径 (默认 12.0)
  final double borderRadius;

  /// 是否启用当内容改变时自动平滑伸缩/展开折叠动画 (默认为 true)
  final bool enableSizeAnimation;

  /// 是否改变光标指针 (默认 true)
  final bool enableCursor;

  /// 内容伸缩动画持续时间
  final Duration animationDuration;

  /// 自定义卡片背景色 (可选)
  final Color? backgroundColor;

  /// 卡片不透明度 (默认 1.0，范围 0.0 ~ 1.0)
  final double opacity;

  /// 卡片宽度 (可选，默认为 [double.infinity]，即占据父容器 100% 宽度)
  final double? width;

  /// 是否开启内部文本划词/选中复制功能 (默认 false)
  final bool selectable;

  /// 是否强制垂直拉伸填满父容器的高度 (默认为 false，即自适应包裹内容高度)
  final bool expand;

  /// 内容伸缩动画曲线
  final Curve animationCurve;

  const FluentCard({
    super.key,
    required this.child,
    this.onTap,
    this.padding = const EdgeInsets.all(16.0),
    this.borderRadius = 12.0,
    this.backgroundColor,
    this.opacity = 1.0,
    this.width,
    this.selectable = false,
    this.expand = false,
    this.enableSizeAnimation = true,
    this.enableCursor = true,
    this.animationDuration = FluentMotionDuration.gentle,
    this.animationCurve = FluentMotionCurve.standard,
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
    Widget? child,
    bool initiallyExpanded = false,
    ValueChanged<bool>? onExpandedChanged,
    Widget? actionIcon,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    bool expandable = true,
    bool showDivider = false,
    EdgeInsetsGeometry padding = const EdgeInsets.all(16.0),
    EdgeInsetsGeometry? contentPadding,
    double borderRadius = 12.0,
    Color? backgroundColor,
    double opacity = 1.0,
    double? width,
    bool selectable = false,
    bool expand = false,
    bool enableCursor = true,
    Duration animationDuration = FluentMotionDuration.gentle,
    Curve animationCurve = FluentMotionCurve.standard,
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
      showDivider: showDivider,
      padding: padding,
      contentPadding: contentPadding,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      opacity: opacity,
      width: width,
      selectable: selectable,
      expand: expand,
      enableCursor: enableCursor,
      animationDuration: animationDuration,
      animationCurve: animationCurve,
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
    bool showDivider = false,
    EdgeInsetsGeometry padding = const EdgeInsets.all(16.0),
    EdgeInsetsGeometry? contentPadding,
    double borderRadius = 12.0,
    Color? backgroundColor,
    double opacity = 1.0,
    double? width,
    bool selectable = false,
    bool expand = false,
    bool enableCursor = true,
    Duration animationDuration = FluentMotionDuration.gentle,
    Curve animationCurve = FluentMotionCurve.standard,
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
    showDivider: showDivider,
    padding: padding,
    contentPadding: contentPadding,
    borderRadius: borderRadius,
    backgroundColor: backgroundColor,
    opacity: opacity,
    width: width,
    selectable: selectable,
    expand: expand,
    enableCursor: enableCursor,
    animationDuration: animationDuration,
    animationCurve: animationCurve,
    child: child,
  );

  /// [FluentFileCard] 构建方法: `FluentCard.file(...)`
  static Widget file({
    Key? key,
    required String title,
    String? subtitle,
    Widget? leadingIcon,
    Widget? thumbnail,
    Widget? actionIcon,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    double opacity = 1.0,
    double? width,
    bool selectable = false,
    bool enableSizeAnimation = true,
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
      opacity: opacity,
      width: width,
      selectable: selectable,
      enableSizeAnimation: enableSizeAnimation,
    );
  }

  /// [FluentFileCard] 静态构建别名方法: `FluentCard.File(...)`
  // ignore: non_constant_identifier_names
  static Widget File({
    Key? key,
    required String title,
    String? subtitle,
    Widget? leadingIcon,
    Widget? thumbnail,
    Widget? actionIcon,
    VoidCallback? onActionTap,
    VoidCallback? onTap,
    double opacity = 1.0,
    double? width,
    bool selectable = false,
    bool enableSizeAnimation = true,
  }) => FluentCard.file(
    key: key,
    title: title,
    subtitle: subtitle,
    leadingIcon: leadingIcon,
    thumbnail: thumbnail,
    actionIcon: actionIcon,
    onActionTap: onActionTap,
    onTap: onTap,
    opacity: opacity,
    width: width,
    selectable: selectable,
    enableSizeAnimation: enableSizeAnimation,
  );

  /// [FluentAnnouncementCard] 构建方法: `FluentCard.announcement(...)`
  static Widget announcement({
    Key? key,
    required String title,
    String? description,
    String? subtitle,
    String? buttonText,
    VoidCallback? onActionTap,
    Widget? illustration,
    Widget? leadingIcon,
    VoidCallback? onTap,
    double opacity = 1.0,
    double? width,
    bool selectable = false,
    bool enableSizeAnimation = true,
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
      opacity: opacity,
      width: width,
      selectable: selectable,
      enableSizeAnimation: enableSizeAnimation,
    );
  }

  /// [FluentAnnouncementCard] 静态构建别名方法: `FluentCard.Announcement(...)`
  // ignore: non_constant_identifier_names
  static Widget Announcement({
    Key? key,
    required String title,
    String? description,
    String? subtitle,
    String? buttonText,
    VoidCallback? onActionTap,
    Widget? illustration,
    Widget? leadingIcon,
    VoidCallback? onTap,
    double opacity = 1.0,
    double? width,
    bool selectable = false,
    bool enableSizeAnimation = true,
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
    opacity: opacity,
    width: width,
    selectable: selectable,
    enableSizeAnimation: enableSizeAnimation,
  );

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final bool isClickable = onTap != null;

    final Color baseBg = backgroundColor ?? theme.backgroundColor;
    final Color effectiveBg = opacity < 1.0
        ? baseBg.withValues(alpha: baseBg.a * opacity)
        : baseBg;

    final bool isTranslucent = opacity < 1.0 || effectiveBg.a < 1.0;

    final Color borderCol = isTranslucent
        ? (isDark
              ? Colors.white.withValues(alpha: 0.15)
              : Colors.white.withValues(alpha: 0.6))
        : theme.dividerColor.withValues(alpha: isDark ? 0.3 : 0.4);

    Widget cardBody = Padding(padding: padding, child: child);

    if (selectable) {
      cardBody = SelectionArea(child: cardBody);
    }

    if (enableSizeAnimation) {
      cardBody = AnimatedSize(
        duration: animationDuration,
        curve: animationCurve,
        alignment: Alignment.topCenter,
        child: cardBody,
      );
    }

    final double effectiveWidth = width ?? double.infinity;

    final BoxDecoration decoration = BoxDecoration(
      color: effectiveBg,
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(color: borderCol, width: 1.0),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withValues(
            alpha: isDark ? 0.2 : (isTranslucent ? 0.03 : 0.05),
          ),
          blurRadius: isTranslucent ? 10.0 : 8.0,
          offset: const Offset(0, 3),
        ),
      ],
    );

    final Color hoverOverlay = isDark
        ? Colors.white.withValues(alpha: 0.06)
        : (isTranslucent
              ? Colors.white.withValues(alpha: 0.35)
              : Colors.black.withValues(alpha: 0.03));

    final Color highlightOverlay = isDark
        ? Colors.white.withValues(alpha: 0.04)
        : (isTranslucent
              ? Colors.white.withValues(alpha: 0.2)
              : Colors.black.withValues(alpha: 0.02));

    final Color splashOverlay = Colors.black12.withValues(alpha: 0.02);

    Widget cardWidget;
    if (!isClickable) {
      cardWidget = Container(
        width: effectiveWidth,
        decoration: decoration,
        child: cardBody,
      );
    } else {
      cardWidget = Container(
        width: effectiveWidth,
        decoration: decoration,
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          child: InkWell(
            onTap: onTap,
            mouseCursor: (enableCursor && !selectable)
                ? SystemMouseCursors.click
                : MouseCursor.defer,
            borderRadius: BorderRadius.circular(borderRadius),
            hoverColor: hoverOverlay,
            highlightColor: highlightOverlay,
            splashColor: splashOverlay,
            child: cardBody,
          ),
        ),
      );
    }

    if (enableCursor && isClickable && !selectable) {
      cardWidget = MouseRegion(
        cursor: SystemMouseCursors.click,
        child: cardWidget,
      );
    }

    if (!expand) {
      cardWidget = Align(
        alignment: Alignment.topCenter,
        heightFactor: 1.0,
        child: cardWidget,
      );
    }

    return cardWidget;
  }
}

/// Fluent 2 FileCard 文件预览卡片 [FluentFileCard]
///
/// 完全移植自 Android Kotlin FileCard.kt 与 V2CardUITest.kt
class FluentFileCard extends StatelessWidget {
  final String title;
  final String? subtitle;
  final Widget? leadingIcon;
  final Widget? thumbnail;
  final Widget? actionIcon;
  final VoidCallback? onActionTap;
  final VoidCallback? onTap;
  final double opacity;
  final double? width;
  final bool selectable;
  final bool enableSizeAnimation;

  const FluentFileCard({
    super.key,
    required this.title,
    this.subtitle,
    this.leadingIcon,
    this.thumbnail,
    this.actionIcon,
    this.onActionTap,
    this.onTap,
    this.opacity = 1.0,
    this.width,
    this.selectable = false,
    this.enableSizeAnimation = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final bool showMoreOption = onActionTap != null;

    return FluentCard(
      onTap: onTap,
      padding: const EdgeInsets.all(12.0),
      opacity: opacity,
      width: width,
      selectable: selectable,
      enableSizeAnimation: enableSizeAnimation,
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
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: theme.foregroundColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    if (subtitle != null && subtitle!.isNotEmpty) ...[
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
    );
  }
}

/// Fluent 2 AnnouncementCard 公告/通告卡片 [FluentAnnouncementCard]
///
/// 完全移植自 Android Kotlin AnnouncementCard.kt 与 V2CardUITest.kt
class FluentAnnouncementCard extends StatelessWidget {
  final String title;
  final String? description;
  final String? subtitle;
  final String? buttonText;
  final VoidCallback? onActionTap;
  final Widget? illustration;
  final Widget? leadingIcon;
  final VoidCallback? onTap;
  final double opacity;
  final double? width;
  final bool selectable;
  final bool enableSizeAnimation;

  const FluentAnnouncementCard({
    super.key,
    required this.title,
    this.description,
    this.subtitle,
    this.buttonText,
    this.onActionTap,
    this.illustration,
    this.leadingIcon,
    this.onTap,
    this.opacity = 1.0,
    this.width,
    this.selectable = false,
    this.enableSizeAnimation = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final String effectiveDescription = description ?? subtitle ?? '';
    final Widget? effectiveIllustration = illustration ?? leadingIcon;
    final bool showButton = onActionTap != null && buttonText != null;

    return FluentCard(
      onTap: onTap,
      padding: const EdgeInsets.all(16.0),
      opacity: opacity,
      width: width,
      selectable: selectable,
      enableSizeAnimation: enableSizeAnimation,
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
          Text(
            title,
            style: TextStyle(
              fontSize: 16.0,
              fontWeight: FontWeight.bold,
              color: theme.foregroundColor,
            ),
          ),
          if (effectiveDescription.isNotEmpty) ...[
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
    );
  }
}
