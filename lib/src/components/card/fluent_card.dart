import 'package:flutter/material.dart';
import '../../theme/fluent_motion_tokens.dart';
import '../../theme/fluent_theme.dart';
import '../buttons/fluent_text_button.dart';

/// Fluent 2  BasicCard 基础卡片容器 [FluentCard]
///
/// 完全移植自 Android Kotlin BasicCard.kt, V2CardActivity.kt 与 V2CardUITest.kt
/// 支持可选的内容动态改变伸缩动画 (AnimatedSize Expansion & Contraction Transition)
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

  /// 内容伸缩动画曲线
  final Curve animationCurve;

  const FluentCard({
    super.key,
    required this.child,
    this.onTap,
    this.onClick,
    this.padding = const EdgeInsets.all(16.0),
    this.borderRadius = 12.0,
    this.enableSizeAnimation = true,
    this.enableCursor = true,
    this.animationDuration = FluentMotionDuration.gentle,
    this.animationCurve = FluentMotionCurve.standard,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final VoidCallback? tapCallback = onTap ?? onClick;
    final bool isClickable = tapCallback != null;

    Widget cardBody = Padding(padding: padding, child: child);

    // 内容改变时自动平滑伸缩动画 (AnimatedSize Transition)
    if (enableSizeAnimation) {
      cardBody = AnimatedSize(
        duration: animationDuration,
        curve: animationCurve,
        alignment: Alignment.topCenter,
        child: cardBody,
      );
    }

    final BoxDecoration decoration = BoxDecoration(
      color: theme.backgroundColor,
      borderRadius: BorderRadius.circular(borderRadius),
      border: Border.all(
        color: theme.dividerColor.withAlpha(isDark ? 100 : 200),
        width: 1.0,
      ),
      boxShadow: [
        BoxShadow(
          color: Colors.black.withAlpha(isDark ? 30 : 10),
          blurRadius: 8.0,
          offset: const Offset(0, 3),
        ),
      ],
    );

    if (!isClickable) {
      // 静态非点击 Card (对应 V2CardUITest assertHasNoClickAction)
      return Container(decoration: decoration, child: cardBody);
    }

    return Container(
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
          splashColor: theme.primaryColor.withAlpha(20),
          highlightColor: theme.primaryColor.withAlpha(10),
          child: cardBody,
        ),
      ),
    );
  }
}

/// Fluent 2  FileCard 文件预览卡片 [FluentFileCard]
///
/// 完全移植自 Android Kotlin FileCard.kt 与 V2CardUITest.kt
class FluentFileCard extends StatelessWidget {
  /// 主文件名 (对应 text / fileName)
  final String fileName;

  /// 副标题信息 (如 '2.4 MB · PDF Document'，对应 subText / subTitle)
  final String subTitle;

  /// 前置文本图标 (对应 textIcon / leadingIcon)
  final Widget? leadingIcon;

  /// 缩略图 Icon 或 Preview Widget (对应 previewImageDrawable / thumbnail)
  final Widget? thumbnail;

  /// 更多选项图标 Icon
  final Widget? actionOverflowIcon;

  /// 更多选项图标点击回调 (注意：必须不为 null 才渲染更多选项 Icon，完全与 V2CardUITest 对齐)
  final VoidCallback? actionOverflowOnClick;

  /// 点击卡片回调
  final VoidCallback? onTap;

  /// 点击卡片回调 onClick 别名
  final VoidCallback? onClick;

  /// 是否启用当内容改变时自动平滑伸缩动画
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
      enableSizeAnimation: enableSizeAnimation,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 预览图 Preview Image Section
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

/// Fluent 2  AnnouncementCard 公告/通告卡片 [FluentAnnouncementCard]
///
/// 完全移植自 Android Kotlin AnnouncementCard.kt 与 V2CardUITest.kt
class FluentAnnouncementCard extends StatelessWidget {
  /// 主标题 Title
  final String title;

  /// 描述信息 Description
  final String description;

  /// 按钮文本 ButtonText
  final String? buttonText;

  /// 按钮点击回调 (必须不为 null 才渲染，完全与 V2CardUITest 对齐)
  final VoidCallback? buttonOnClick;

  /// 按钮点击回调 别名
  final VoidCallback? onActionTap;

  /// 图像/插图 Preview Illustration
  final Widget? illustration;

  /// 卡片点击回调
  final VoidCallback? onTap;

  /// 是否启用当内容改变时自动平滑伸缩动画
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
