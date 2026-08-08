import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import '../buttons/fluent_text_button.dart';
import 'fluent_container.dart';

/// 图片在卡片中的排列位置 [FluentImageCardPosition]
enum FluentImageCardPosition {
  /// 图片位于卡片顶部 (Hero 大图模式)
  top,

  /// 图片位于卡片底部
  bottom,

  /// 图片位于卡片左侧 (水平缩略图模式)
  left,

  /// 图片位于卡片右侧 (水平缩略图模式)
  right,

  /// 图片作为卡片背景 (画报/海报模式，叠加渐变与文本)
  background,
}

/// Fluent 2 图片卡片组件 [FluentImageCard]
///
/// 专用于展示图片、海报、画报或横向/纵向图文组合。
/// 支持高频直接参数 [opacity]，外观与尺寸通过 [style] 参数配置。
class FluentImageCard extends StatelessWidget {
  /// 图片 [ImageProvider] (如 AssetImage, NetworkImage, MemoryImage)
  final ImageProvider? image;

  /// 自定义图片 Widget (若提供则优先于 [image])
  final Widget? imageWidget;

  /// 图片位置 (默认 [FluentImageCardPosition.top])
  final FluentImageCardPosition position;

  /// 标题文本 (可选)
  final String? title;

  /// 自定义标题 Widget (可选，优先于 [title])
  final Widget? titleWidget;

  /// 副标题文本 (可选)
  final String? subtitle;

  /// 详细描述文本 (可选)
  final String? description;

  /// 前置图标 Leading Icon (可选)
  final Widget? leadingIcon;

  /// 图片角标文本 (可选，如 "HD", "LIVE", "推荐")
  final String? badgeText;

  /// 自定义图片角标 Widget (可选，优先于 [badgeText])
  final Widget? badge;

  /// 右侧动作图标 (可选)
  final Widget? actionIcon;

  /// 底部动作按钮文本 (可选，如 "查看详情")
  final String? buttonText;

  /// 动作按钮/图标点击回调 (可选)
  final VoidCallback? onActionTap;

  /// 卡片整体点击回调 (可选)
  final VoidCallback? onTap;

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

  /// 卡片外观、尺寸、图片 fit 与动画配置包 [FluentContainerStyle] (可选)
  final FluentContainerStyle style;

  /// 自定义 Child 视图 (可选)
  final Widget? child;

  const FluentImageCard({
    super.key,
    this.image,
    this.imageWidget,
    this.position = FluentImageCardPosition.top,
    this.title,
    this.titleWidget,
    this.subtitle,
    this.description,
    this.leadingIcon,
    this.badgeText,
    this.badge,
    this.actionIcon,
    this.buttonText,
    this.onActionTap,
    this.onTap,
    this.selectable = false,
    this.opacity,
    this.cardType,
    this.shadow,
    this.border,
    this.borderStyle,
    this.style = const FluentContainerStyle(),
    this.child,
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
    final effectiveStyle = _getEffectiveStyle();

    if (position == FluentImageCardPosition.background) {
      return _buildBackgroundCard(context, theme, effectiveStyle);
    }

    if (position == FluentImageCardPosition.left ||
        position == FluentImageCardPosition.right) {
      return _buildHorizontalCard(context, theme, effectiveStyle);
    }

    return _buildVerticalCard(context, theme, effectiveStyle);
  }

  /// 构建顶部/底部大图模式卡片
  Widget _buildVerticalCard(
    BuildContext context,
    dynamic theme,
    FluentContainerStyle effectiveStyle,
  ) {
    final Widget? imgWidget = _buildImageWidget(effectiveStyle);

    final List<Widget> children = [];
    final double radius = effectiveStyle.borderRadius ?? 12.0;
    final EdgeInsetsGeometry pad =
        effectiveStyle.padding ?? const EdgeInsets.all(16.0);

    if (position == FluentImageCardPosition.top && imgWidget != null) {
      children.add(
        _buildClippedImage(
          imgWidget,
          radius,
          height: effectiveStyle.imageHeight,
          isTop: true,
        ),
      );
    }

    children.add(
      Padding(padding: pad, child: _buildTextAndContent(context, theme)),
    );

    if (position == FluentImageCardPosition.bottom && imgWidget != null) {
      children.add(
        _buildClippedImage(
          imgWidget,
          radius,
          height: effectiveStyle.imageHeight,
          isBottom: true,
        ),
      );
    }

    return FluentContainer(
      onTap: onTap,
      style: effectiveStyle,
      padding: EdgeInsets.zero,
      selectable: selectable,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: children,
      ),
    );
  }

  /// 构建左右侧水平缩略图卡片
  Widget _buildHorizontalCard(
    BuildContext context,
    dynamic theme,
    FluentContainerStyle effectiveStyle,
  ) {
    final Widget? imgWidget = _buildImageWidget(effectiveStyle);
    final double imgW = effectiveStyle.imageWidth ?? 100.0;
    final double imgH = effectiveStyle.imageHeight ?? 100.0;
    final double radius = effectiveStyle.borderRadius ?? 12.0;
    final EdgeInsetsGeometry pad =
        effectiveStyle.padding ?? const EdgeInsets.all(16.0);

    Widget? thumbWidget;
    if (imgWidget != null) {
      thumbWidget = SizedBox(
        width: imgW,
        height: imgH,
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(
              position == FluentImageCardPosition.left ? radius : 0,
            ),
            bottomLeft: Radius.circular(
              position == FluentImageCardPosition.left ? radius : 0,
            ),
            topRight: Radius.circular(
              position == FluentImageCardPosition.right ? radius : 0,
            ),
            bottomRight: Radius.circular(
              position == FluentImageCardPosition.right ? radius : 0,
            ),
          ),
          child: Stack(
            fit: StackFit.expand,
            children: [
              imgWidget,
              if (badge != null || badgeText != null)
                Positioned(top: 6.0, left: 6.0, child: _buildBadge()),
            ],
          ),
        ),
      );
    }

    return FluentContainer(
      onTap: onTap,
      style: effectiveStyle,
      padding: EdgeInsets.zero,
      selectable: selectable,
      child: IntrinsicHeight(
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            if (position == FluentImageCardPosition.left && thumbWidget != null)
              thumbWidget,
            Expanded(
              child: Padding(
                padding: pad,
                child: _buildTextAndContent(context, theme),
              ),
            ),
            if (position == FluentImageCardPosition.right &&
                thumbWidget != null)
              thumbWidget,
          ],
        ),
      ),
    );
  }

  /// 构建全屏背景画报卡片
  Widget _buildBackgroundCard(
    BuildContext context,
    dynamic theme,
    FluentContainerStyle effectiveStyle,
  ) {
    final Widget? imgWidget = _buildImageWidget(effectiveStyle);
    final double height = effectiveStyle.imageHeight ?? 200.0;
    final double radius = effectiveStyle.borderRadius ?? 12.0;
    final EdgeInsetsGeometry pad =
        effectiveStyle.padding ?? const EdgeInsets.all(16.0);

    return FluentContainer(
      onTap: onTap,
      style: effectiveStyle,
      padding: EdgeInsets.zero,
      selectable: selectable,
      child: SizedBox(
        height: height,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(radius),
          child: Stack(
            fit: StackFit.expand,
            children: [
              ?imgWidget,
              // 渐变暗化保护遮罩
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.black.withValues(alpha: 0.1),
                      Colors.black.withValues(alpha: 0.75),
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
              ),
              if (badge != null || badgeText != null)
                Positioned(top: 12.0, right: 12.0, child: _buildBadge()),
              Positioned.fill(
                child: Padding(
                  padding: pad,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (titleWidget != null)
                        titleWidget!
                      else if (title != null)
                        Text(
                          title!,
                          style: const TextStyle(
                            fontSize: 18.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      if (subtitle != null) ...[
                        const SizedBox(height: 2.0),
                        Text(
                          subtitle!,
                          style: TextStyle(
                            fontSize: 13.0,
                            color: Colors.white.withValues(alpha: 0.85),
                          ),
                        ),
                      ],
                      if (description != null) ...[
                        const SizedBox(height: 4.0),
                        Text(
                          description!,
                          style: TextStyle(
                            fontSize: 12.0,
                            color: Colors.white.withValues(alpha: 0.75),
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                      if (child != null) ...[
                        const SizedBox(height: 8.0),
                        child!,
                      ],
                      if (onActionTap != null && buttonText != null) ...[
                        const SizedBox(height: 8.0),
                        Align(
                          alignment: Alignment.centerRight,
                          child: FluentTextButton(
                            text: buttonText,
                            onPressed: onActionTap,
                            textColor: Colors.white,
                            fontSize: 13.0,
                          ),
                        ),
                      ],
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// 生成 Image 核心 Widget
  Widget? _buildImageWidget(FluentContainerStyle style) {
    if (imageWidget != null) return imageWidget;
    if (image != null) {
      return Image(
        image: image!,
        fit: style.imageFit,
        alignment: style.imageAlignment,
      );
    }
    return null;
  }

  /// 给图片进行圆角裁剪与 Badge 叠加
  Widget _buildClippedImage(
    Widget imgWidget,
    double borderRadius, {
    double? height,
    bool isTop = false,
    bool isBottom = false,
  }) {
    final double h = height ?? 160.0;
    return SizedBox(
      height: h,
      width: double.infinity,
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(isTop ? borderRadius : 0),
          topRight: Radius.circular(isTop ? borderRadius : 0),
          bottomLeft: Radius.circular(isBottom ? borderRadius : 0),
          bottomRight: Radius.circular(isBottom ? borderRadius : 0),
        ),
        child: Stack(
          fit: StackFit.expand,
          children: [
            imgWidget,
            if (badge != null || badgeText != null)
              Positioned(top: 10.0, right: 10.0, child: _buildBadge()),
          ],
        ),
      ),
    );
  }

  /// 构建文本与内容区域
  Widget _buildTextAndContent(BuildContext context, dynamic theme) {
    final bool showButton = onActionTap != null && buttonText != null;

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            if (leadingIcon != null) ...[
              IconTheme(
                data: IconThemeData(color: theme.foregroundColor, size: 22.0),
                child: leadingIcon!,
              ),
              const SizedBox(width: 12.0),
            ],
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  if (titleWidget != null)
                    titleWidget!
                  else if (title != null)
                    Text(
                      title!,
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w600,
                        color: theme.foregroundColor,
                      ),
                    ),
                  if (subtitle != null) ...[
                    if (title != null || titleWidget != null)
                      const SizedBox(height: 2.0),
                    Text(
                      subtitle!,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: theme.foregroundSecondaryColor,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            if (actionIcon != null)
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
                      child: actionIcon!,
                    ),
                  ),
                ),
              ),
          ],
        ),
        if (description != null) ...[
          if (title != null || titleWidget != null || subtitle != null)
            const SizedBox(height: 6.0),
          Text(
            description!,
            style: TextStyle(
              fontSize: 13.0,
              color: theme.foregroundSecondaryColor,
              height: 1.4,
            ),
          ),
        ],
        if (child != null) ...[
          if (title != null || titleWidget != null || description != null)
            const SizedBox(height: 8.0),
          child!,
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
    );
  }

  /// 构建图片上的角标
  Widget _buildBadge() {
    if (badge != null) return badge!;
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 3.0),
      decoration: BoxDecoration(
        color: Colors.black.withValues(alpha: 0.65),
        borderRadius: BorderRadius.circular(6.0),
      ),
      child: Text(
        badgeText!,
        style: const TextStyle(
          color: Colors.white,
          fontSize: 11.0,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
