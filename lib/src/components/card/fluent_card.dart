import 'package:flutter/material.dart';
import '../../theme/fluent_motion_tokens.dart';
import '../../theme/fluent_theme.dart';
import '../buttons/fluent_text_button.dart';
import 'fluent_text_card.dart';

export 'fluent_text_card.dart';

/// Fluent 2 BasicCard 基础卡片容器 [FluentCard]
///
/// 完全移植自 Android Kotlin BasicCard.kt, V2CardActivity.kt 与 V2CardUITest.kt
/// 支持可选的内容动态改变伸缩动画与 [opacity] 不透明度调整。
///
/// 同时也提供便利的衍生命名构建函数：
/// - `FluentCard.text(...)` / `FluentCard.Text(...)` -> [FluentTextCard] (可展开文本卡片)
/// - `FluentCard.file(...)` / `FluentCard.File(...)` -> [FluentFileCard] (文件预览卡片)
/// - `FluentCard.announcement(...)` / `FluentCard.Announcement(...)` -> [FluentAnnouncementCard] (通告卡片)
class FluentCard extends StatelessWidget {
  /// 卡片内容 Child
  final Widget child;

  /// 点击回调 (可选，当为 null 时卡片非响应式静态 Container)
  final VoidCallback? onTap;

  /// 点击回调 onClick 别名
  final VoidCallback? onClick;

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

  /// 是否强制垂直拉伸填满父容器的高度 (默认为 false，即自适应包裹内容高度)
  final bool expand;

  /// 内容伸缩动画曲线
  final Curve animationCurve;

  const FluentCard({
    super.key,
    required this.child,
    this.onTap,
    this.onClick,
    this.padding = const EdgeInsets.all(16.0),
    this.borderRadius = 12.0,
    this.backgroundColor,
    this.opacity = 1.0,
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
    String? subTitle,
    String? subtitle,
    Widget? leadingIcon,
    String? text,
    InlineSpan? richText,
    Widget? child,
    bool initiallyExpanded = false,
    ValueChanged<bool>? onExpandedChanged,
    Widget? trailingAction,
    Widget? actionIcon,
    VoidCallback? actionOnClick,
    bool expandable = true,
    bool showDivider = false,
    EdgeInsetsGeometry padding = const EdgeInsets.all(16.0),
    EdgeInsetsGeometry? contentPadding,
    double borderRadius = 12.0,
    Color? backgroundColor,
    double opacity = 1.0,
    bool expand = false,
    bool enableCursor = true,
    Duration animationDuration = FluentMotionDuration.gentle,
    Curve animationCurve = FluentMotionCurve.standard,
  }) {
    return FluentTextCard(
      key: key,
      title: title,
      titleWidget: titleWidget,
      subTitle: subTitle,
      subtitle: subtitle,
      leadingIcon: leadingIcon,
      text: text,
      richText: richText,
      initiallyExpanded: initiallyExpanded,
      onExpandedChanged: onExpandedChanged,
      trailingAction: trailingAction,
      actionIcon: actionIcon,
      actionOnClick: actionOnClick,
      expandable: expandable,
      showDivider: showDivider,
      padding: padding,
      contentPadding: contentPadding,
      borderRadius: borderRadius,
      backgroundColor: backgroundColor,
      opacity: opacity,
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
    String? subTitle,
    String? subtitle,
    Widget? leadingIcon,
    String? text,
    InlineSpan? richText,
    Widget? child,
    bool initiallyExpanded = false,
    ValueChanged<bool>? onExpandedChanged,
    Widget? trailingAction,
    Widget? actionIcon,
    VoidCallback? actionOnClick,
    bool expandable = true,
    bool showDivider = false,
    EdgeInsetsGeometry padding = const EdgeInsets.all(16.0),
    EdgeInsetsGeometry? contentPadding,
    double borderRadius = 12.0,
    Color? backgroundColor,
    double opacity = 1.0,
    bool expand = false,
    bool enableCursor = true,
    Duration animationDuration = FluentMotionDuration.gentle,
    Curve animationCurve = FluentMotionCurve.standard,
  }) => FluentCard.text(
    key: key,
    title: title,
    titleWidget: titleWidget,
    subTitle: subTitle,
    subtitle: subtitle,
    leadingIcon: leadingIcon,
    text: text,
    richText: richText,
    initiallyExpanded: initiallyExpanded,
    onExpandedChanged: onExpandedChanged,
    trailingAction: trailingAction,
    actionIcon: actionIcon,
    actionOnClick: actionOnClick,
    expandable: expandable,
    showDivider: showDivider,
    padding: padding,
    contentPadding: contentPadding,
    borderRadius: borderRadius,
    backgroundColor: backgroundColor,
    opacity: opacity,
    expand: expand,
    enableCursor: enableCursor,
    animationDuration: animationDuration,
    animationCurve: animationCurve,
    child: child,
  );

  /// [FluentFileCard] 构建方法: `FluentCard.file(...)`
  static Widget file({
    Key? key,
    required String fileName,
    required String subTitle,
    Widget? leadingIcon,
    Widget? thumbnail,
    Widget? actionOverflowIcon,
    VoidCallback? actionOverflowOnClick,
    VoidCallback? onTap,
    VoidCallback? onClick,
    double opacity = 1.0,
    bool enableSizeAnimation = true,
  }) {
    return FluentFileCard(
      key: key,
      fileName: fileName,
      subTitle: subTitle,
      leadingIcon: leadingIcon,
      thumbnail: thumbnail,
      actionOverflowIcon: actionOverflowIcon,
      actionOverflowOnClick: actionOverflowOnClick,
      onTap: onTap,
      onClick: onClick,
      opacity: opacity,
      enableSizeAnimation: enableSizeAnimation,
    );
  }

  /// [FluentFileCard] 静态构建别名方法: `FluentCard.File(...)`
  // ignore: non_constant_identifier_names
  static Widget File({
    Key? key,
    required String fileName,
    required String subTitle,
    Widget? leadingIcon,
    Widget? thumbnail,
    Widget? actionOverflowIcon,
    VoidCallback? actionOverflowOnClick,
    VoidCallback? onTap,
    VoidCallback? onClick,
    double opacity = 1.0,
    bool enableSizeAnimation = true,
  }) => FluentCard.file(
    key: key,
    fileName: fileName,
    subTitle: subTitle,
    leadingIcon: leadingIcon,
    thumbnail: thumbnail,
    actionOverflowIcon: actionOverflowIcon,
    actionOverflowOnClick: actionOverflowOnClick,
    onTap: onTap,
    onClick: onClick,
    opacity: opacity,
    enableSizeAnimation: enableSizeAnimation,
  );

  /// [FluentAnnouncementCard] 构建方法: `FluentCard.announcement(...)`
  static Widget announcement({
    Key? key,
    required String title,
    required String description,
    String? buttonText,
    VoidCallback? buttonOnClick,
    VoidCallback? onActionTap,
    Widget? illustration,
    VoidCallback? onTap,
    double opacity = 1.0,
    bool enableSizeAnimation = true,
  }) {
    return FluentAnnouncementCard(
      key: key,
      title: title,
      description: description,
      buttonText: buttonText,
      buttonOnClick: buttonOnClick,
      onActionTap: onActionTap,
      illustration: illustration,
      onTap: onTap,
      opacity: opacity,
      enableSizeAnimation: enableSizeAnimation,
    );
  }

  /// [FluentAnnouncementCard] 静态构建别名方法: `FluentCard.Announcement(...)`
  // ignore: non_constant_identifier_names
  static Widget Announcement({
    Key? key,
    required String title,
    required String description,
    String? buttonText,
    VoidCallback? buttonOnClick,
    VoidCallback? onActionTap,
    Widget? illustration,
    VoidCallback? onTap,
    double opacity = 1.0,
    bool enableSizeAnimation = true,
  }) => FluentCard.announcement(
    key: key,
    title: title,
    description: description,
    buttonText: buttonText,
    buttonOnClick: buttonOnClick,
    onActionTap: onActionTap,
    illustration: illustration,
    onTap: onTap,
    opacity: opacity,
    enableSizeAnimation: enableSizeAnimation,
  );

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final VoidCallback? tapCallback = onTap ?? onClick;
    final bool isClickable = tapCallback != null;

    final Color baseBg = backgroundColor ?? theme.backgroundColor;
    // 根据 opacity 计算最终的不透明背景色
    final Color effectiveBg = opacity < 1.0
        ? baseBg.withValues(alpha: baseBg.a * opacity)
        : baseBg;

    final bool isTranslucent = opacity < 1.0 || effectiveBg.a < 1.0;

    Widget cardBody = Padding(padding: padding, child: child);

    if (enableSizeAnimation) {
      cardBody = AnimatedSize(
        duration: animationDuration,
        curve: animationCurve,
        alignment: Alignment.topCenter,
        child: cardBody,
      );
    }

    final BoxDecoration decoration = BoxDecoration(
      color: effectiveBg,
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: isTranslucent
            ? (isDark
                  ? Colors.white.withValues(alpha: 0.15)
                  : Colors.white.withValues(alpha: 0.6))
            : theme.dividerColor.withValues(alpha: isDark ? 0.3 : 0.4),
        width: 1.0,
      ),
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

    // 优化的悬浮/按压触控色彩：避免脏色，在磨砂玻璃与纯色背景上均保持通透高亮
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
      cardWidget = Container(decoration: decoration, child: cardBody);
    } else {
      cardWidget = Container(
        decoration: decoration,
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(borderRadius),
          child: InkWell(
            onTap: tapCallback,
            mouseCursor: enableCursor
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
            borderRadius: BorderRadius.circular(borderRadius),
            hoverColor: hoverOverlay,
            highlightColor: highlightOverlay,
            splashColor: splashOverlay,
            child: cardBody,
          ),
        ),
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
  final String fileName;
  final String subTitle;
  final Widget? leadingIcon;
  final Widget? thumbnail;
  final Widget? actionOverflowIcon;
  final VoidCallback? actionOverflowOnClick;
  final VoidCallback? onTap;
  final VoidCallback? onClick;
  final double opacity;
  final bool enableSizeAnimation;

  const FluentFileCard({
    super.key,
    required this.fileName,
    required this.subTitle,
    this.leadingIcon,
    this.thumbnail,
    this.actionOverflowIcon,
    this.actionOverflowOnClick,
    this.onTap,
    this.onClick,
    this.opacity = 1.0,
    this.enableSizeAnimation = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final VoidCallback? cardTap = onTap ?? onClick;
    final bool showMoreOption = actionOverflowOnClick != null;

    return FluentCard(
      onTap: cardTap,
      padding: const EdgeInsets.all(12.0),
      opacity: opacity,
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
                      fileName,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: theme.foregroundColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const SizedBox(height: 2.0),
                    Text(
                      subTitle,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: theme.foregroundSecondaryColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              if (showMoreOption) ...[
                const SizedBox(width: 8.0),
                GestureDetector(
                  onTap: actionOverflowOnClick,
                  child: MouseRegion(
                    cursor: SystemMouseCursors.click,
                    child: Padding(
                      padding: const EdgeInsets.all(4.0),
                      child: IconTheme(
                        data: IconThemeData(
                          color: theme.foregroundSecondaryColor,
                          size: 20.0,
                        ),
                        child:
                            actionOverflowIcon ?? const Icon(Icons.more_vert),
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
  final String description;
  final String? buttonText;
  final VoidCallback? buttonOnClick;
  final VoidCallback? onActionTap;
  final Widget? illustration;
  final VoidCallback? onTap;
  final double opacity;
  final bool enableSizeAnimation;

  const FluentAnnouncementCard({
    super.key,
    required this.title,
    required this.description,
    this.buttonText,
    this.buttonOnClick,
    this.onActionTap,
    this.illustration,
    this.onTap,
    this.opacity = 1.0,
    this.enableSizeAnimation = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final VoidCallback? btnCallback = buttonOnClick ?? onActionTap;
    final bool showButton = btnCallback != null && buttonText != null;

    return FluentCard(
      onTap: onTap,
      padding: const EdgeInsets.all(16.0),
      opacity: opacity,
      enableSizeAnimation: enableSizeAnimation,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (illustration != null) ...[
            ClipRRect(
              borderRadius: BorderRadius.circular(8.0),
              child: illustration!,
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
          const SizedBox(height: 4.0),
          Text(
            description,
            style: TextStyle(
              fontSize: 13.0,
              color: theme.foregroundSecondaryColor,
              height: 1.4,
            ),
          ),
          if (showButton) ...[
            const SizedBox(height: 12.0),
            Align(
              alignment: Alignment.centerRight,
              child: FluentTextButton(
                text: buttonText,
                onPressed: btnCallback,
                fontSize: 13.0,
              ),
            ),
          ],
        ],
      ),
    );
  }
}
