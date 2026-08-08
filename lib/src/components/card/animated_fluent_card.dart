import 'dart:ui' as ui;
import 'package:flutter/material.dart';
import '../../theme/fluent_shadow.dart';
import '../../theme/fluent_theme.dart';
import 'fluent_card.dart';

/// [FluentCardStyle] 的 Tween 插值对象
class FluentCardStyleTween extends Tween<FluentCardStyle?> {
  FluentCardStyleTween({super.begin, super.end});

  @override
  FluentCardStyle? lerp(double t) => _lerpStyle(begin, end, t);

  static FluentCardStyle? _lerpStyle(
      FluentCardStyle? a, FluentCardStyle? b, double t) {
    if (identical(a, b)) return a;
    if (a == null) return b;
    if (b == null) return a;
    return FluentCardStyle(
      cardType: t < 0.5 ? a.cardType : b.cardType,
      padding: EdgeInsetsGeometry.lerp(a.padding, b.padding, t),
      contentPadding:
          EdgeInsetsGeometry.lerp(a.contentPadding, b.contentPadding, t),
      borderRadius: ui.lerpDouble(a.borderRadius, b.borderRadius, t),
      backgroundColor: ui.Color.lerp(
        a.backgroundColor,
        b.backgroundColor,
        t,
      ),
      opacity: ui.lerpDouble(a.opacity, b.opacity, t) ?? 1.0,
      width: ui.lerpDouble(a.width, b.width, t),
      shadow: BoxShadow.lerpList(a.shadow, b.shadow, t),
      border: BoxBorder.lerp(a.border, b.border, t),
      expand: t < 0.5 ? a.expand : b.expand,
      showDivider: t < 0.5 ? a.showDivider : b.showDivider,
      enableSizeAnimation: b.enableSizeAnimation,
      enableCursor: b.enableCursor,
      disableHoverOverlay: b.disableHoverOverlay,
      animationDuration: t < 0.5 ? a.animationDuration : b.animationDuration,
      animationCurve: t < 0.5 ? a.animationCurve : b.animationCurve,
      imageHeight: ui.lerpDouble(a.imageHeight, b.imageHeight, t),
      imageWidth: ui.lerpDouble(a.imageWidth, b.imageWidth, t),
      imageFit: t < 0.5 ? a.imageFit : b.imageFit,
      imageAlignment:
          AlignmentGeometry.lerp(a.imageAlignment, b.imageAlignment, t) ??
              b.imageAlignment,
    );
  }
}

/// Fluent 2 隐式动画卡片组件 [AnimatedFluentCard]
///
/// 完全参照 Flutter 官方 [ImplicitlyAnimatedWidget] (来自 `implicit_animations.dart`) 实现。
/// 当 [style]、[opacity]、[padding]、[shadow]、[border] 等属性发生变化时，
/// 自动在指定的 [duration] 时间内平滑过渡动画。
///
/// 同时也提供与 [FluentCard] 完全平替的衍生动画构建函数：
/// - `AnimatedFluentCard.text(...)` / `AnimatedFluentCard.Text(...)` -> [FluentTextCard] 动画版
/// - `AnimatedFluentCard.image(...)` / `AnimatedFluentCard.Image(...)` -> [FluentImageCard] 动画版
/// - `AnimatedFluentCard.file(...)` / `AnimatedFluentCard.File(...)` -> [FluentFileCard] 动画版
/// - `AnimatedFluentCard.announcement(...)` / `AnimatedFluentCard.Announcement(...)` -> [FluentAnnouncementCard] 动画版
/// - `AnimatedFluentCard.hover(...)` -> Hover 交互响应式预设
class AnimatedFluentCard extends ImplicitlyAnimatedWidget {
  /// 卡片内容 Child
  final Widget child;

  /// 点击回调 (可选)
  final VoidCallback? onTap;

  /// 是否开启内部文本划词/选中复制功能 (默认 false)
  final bool selectable;

  /// 卡片不透明度 (可选，高频直接参数，范围 0.0 ~ 1.0)
  final double? opacity;

  /// 卡片类型 (可选，[FluentCardType.elevated] 或 [FluentCardType.outlined])
  final FluentCardType? cardType;

  /// 自定义卡片阴影 (可选，若提供则覆盖默认阴影)
  final List<BoxShadow>? shadow;

  /// 自定义卡片边框 (可选，若提供则覆盖默认边框)
  final BoxBorder? border;

  /// 卡片外侧内边距 (可选，提供时覆盖 style.padding)
  final EdgeInsetsGeometry? padding;

  /// 卡片外观与动画配置包 [FluentCardStyle] (可选)
  final FluentCardStyle style;

  const AnimatedFluentCard({
    super.key,
    required this.child,
    required super.duration,
    super.curve = Curves.fastOutSlowIn,
    super.onEnd,
    this.onTap,
    this.selectable = false,
    this.opacity,
    this.cardType,
    this.shadow,
    this.border,
    this.padding,
    this.style = const FluentCardStyle(),
  });

  /// [FluentTextCard] 动画构建方法: `AnimatedFluentCard.text(...)`
  static Widget text({
    Key? key,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.fastOutSlowIn,
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
    bool hoverable = false,
    double? opacity,
    FluentCardType? cardType,
    List<BoxShadow>? shadow,
    List<BoxShadow>? hoverShadow,
    BoxBorder? border,
    BoxBorder? hoverBorder,
    ui.Color? hoverBackgroundColor,
    bool showDivider = false,
    FluentCardStyle style = const FluentCardStyle(),
    Widget? child,
  }) {
    final Widget content = FluentTextCard(
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
      expandable: expandable,
      selectable: selectable,
      showDivider: showDivider,
      style: style,
      child: child,
    );

    if (hoverable) {
      return AnimatedFluentCard.hover(
        key: key,
        duration: duration,
        curve: curve,
        onTap: onTap,
        selectable: selectable,
        opacity: opacity,
        cardType: cardType,
        shadow: shadow,
        hoverShadow: hoverShadow,
        border: border,
        hoverBorder: hoverBorder,
        hoverBackgroundColor: hoverBackgroundColor,
        style: style,
        child: content,
      );
    }

    return AnimatedFluentCard(
      key: key,
      duration: duration,
      curve: curve,
      onTap: onTap,
      selectable: selectable,
      opacity: opacity,
      cardType: cardType,
      shadow: shadow,
      border: border,
      style: style,
      child: content,
    );
  }

  /// [FluentTextCard] 静态动画构建别名: `AnimatedFluentCard.Text(...)`
  // ignore: non_constant_identifier_names
  static Widget Text({
    Key? key,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.fastOutSlowIn,
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
    bool hoverable = false,
    double? opacity,
    FluentCardType? cardType,
    List<BoxShadow>? shadow,
    List<BoxShadow>? hoverShadow,
    BoxBorder? border,
    BoxBorder? hoverBorder,
    ui.Color? hoverBackgroundColor,
    bool showDivider = false,
    FluentCardStyle style = const FluentCardStyle(),
  }) => AnimatedFluentCard.text(
    key: key,
    duration: duration,
    curve: curve,
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
    hoverable: hoverable,
    opacity: opacity,
    cardType: cardType,
    shadow: shadow,
    hoverShadow: hoverShadow,
    border: border,
    hoverBorder: hoverBorder,
    hoverBackgroundColor: hoverBackgroundColor,
    showDivider: showDivider,
    style: style,
    child: child,
  );

  /// 响应鼠标悬停交互的隐式动画卡片预设 `AnimatedFluentCard.hover(...)`
  static Widget hover({
    Key? key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.fastOutSlowIn,
    VoidCallback? onEnd,
    VoidCallback? onTap,
    ValueChanged<bool>? onHover,
    bool selectable = false,
    double? opacity,
    double? hoverOpacity,
    FluentCardType? cardType,
    List<BoxShadow>? shadow,
    List<BoxShadow>? hoverShadow,
    BoxBorder? border,
    BoxBorder? hoverBorder,
    ui.Color? backgroundColor,
    ui.Color? hoverBackgroundColor,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? hoverPadding,
    FluentCardStyle style = const FluentCardStyle(),
    FluentCardStyle? hoverStyle,
  }) {
    return FluentHoverCard(
      key: key,
      duration: duration,
      curve: curve,
      onEnd: onEnd,
      onTap: onTap,
      onHover: onHover,
      selectable: selectable,
      opacity: opacity,
      hoverOpacity: hoverOpacity,
      cardType: cardType,
      shadow: shadow,
      hoverShadow: hoverShadow,
      border: border,
      hoverBorder: hoverBorder,
      backgroundColor: backgroundColor,
      hoverBackgroundColor: hoverBackgroundColor,
      padding: padding,
      hoverPadding: hoverPadding,
      style: style,
      hoverStyle: hoverStyle,
      child: child,
    );
  }

  /// 静态构建别名 `AnimatedFluentCard.Hover(...)`
  // ignore: non_constant_identifier_names
  static Widget Hover({
    Key? key,
    required Widget child,
    Duration duration = const Duration(milliseconds: 200),
    Curve curve = Curves.fastOutSlowIn,
    VoidCallback? onEnd,
    VoidCallback? onTap,
    ValueChanged<bool>? onHover,
    bool selectable = false,
    double? opacity,
    double? hoverOpacity,
    FluentCardType? cardType,
    List<BoxShadow>? shadow,
    List<BoxShadow>? hoverShadow,
    BoxBorder? border,
    BoxBorder? hoverBorder,
    ui.Color? backgroundColor,
    ui.Color? hoverBackgroundColor,
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? hoverPadding,
    FluentCardStyle style = const FluentCardStyle(),
    FluentCardStyle? hoverStyle,
  }) => AnimatedFluentCard.hover(
    key: key,
    child: child,
    duration: duration,
    curve: curve,
    onEnd: onEnd,
    onTap: onTap,
    onHover: onHover,
    selectable: selectable,
    opacity: opacity,
    hoverOpacity: hoverOpacity,
    cardType: cardType,
    shadow: shadow,
    hoverShadow: hoverShadow,
    border: border,
    hoverBorder: hoverBorder,
    backgroundColor: backgroundColor,
    hoverBackgroundColor: hoverBackgroundColor,
    padding: padding,
    hoverPadding: hoverPadding,
    style: style,
    hoverStyle: hoverStyle,
  );

  @override
  ImplicitlyAnimatedWidgetState<AnimatedFluentCard> createState() =>
      _AnimatedFluentCardState();
}

class _AnimatedFluentCardState
    extends ImplicitlyAnimatedWidgetState<AnimatedFluentCard> {
  FluentCardStyleTween? _styleTween;

  FluentCardStyle _getEffectiveTargetStyle() {
    return widget.style.copyWith(
      opacity: widget.opacity ?? widget.style.opacity,
      cardType: widget.cardType ?? widget.style.cardType,
      shadow: widget.shadow ?? widget.style.shadow,
      border: widget.border ?? widget.style.border,
      padding: widget.padding ?? widget.style.padding,
      disableHoverOverlay: true,
    );
  }

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _styleTween = visitor(
      _styleTween,
      _getEffectiveTargetStyle(),
      (dynamic value) => FluentCardStyleTween(begin: value as FluentCardStyle?),
    ) as FluentCardStyleTween?;
  }

  @override
  Widget build(BuildContext context) {
    final Animation<double> animation = this.animation;
    final FluentCardStyle animatedStyle =
        _styleTween?.evaluate(animation) ?? _getEffectiveTargetStyle();

    return FluentCard(
      onTap: widget.onTap,
      selectable: widget.selectable,
      style: animatedStyle,
      child: widget.child,
    );
  }
}

/// Hover 响应式的隐式动画卡片封装容器 [FluentHoverCard]
class FluentHoverCard extends StatefulWidget {
  final Widget child;
  final Duration duration;
  final Curve curve;
  final VoidCallback? onEnd;
  final VoidCallback? onTap;
  final ValueChanged<bool>? onHover;
  final bool selectable;

  final double? opacity;
  final double? hoverOpacity;

  final FluentCardType? cardType;

  final List<BoxShadow>? shadow;
  final List<BoxShadow>? hoverShadow;

  final BoxBorder? border;
  final BoxBorder? hoverBorder;

  final ui.Color? backgroundColor;
  final ui.Color? hoverBackgroundColor;

  final EdgeInsetsGeometry? padding;
  final EdgeInsetsGeometry? hoverPadding;

  final FluentCardStyle style;
  final FluentCardStyle? hoverStyle;

  const FluentHoverCard({
    super.key,
    required this.child,
    this.duration = const Duration(milliseconds: 200),
    this.curve = Curves.fastOutSlowIn,
    this.onEnd,
    this.onTap,
    this.onHover,
    this.selectable = false,
    this.opacity,
    this.hoverOpacity,
    this.cardType,
    this.shadow,
    this.hoverShadow,
    this.border,
    this.hoverBorder,
    this.backgroundColor,
    this.hoverBackgroundColor,
    this.padding,
    this.hoverPadding,
    this.style = const FluentCardStyle(),
    this.hoverStyle,
  });

  @override
  State<FluentHoverCard> createState() => _FluentHoverCardState();
}

class _FluentHoverCardState extends State<FluentHoverCard> {
  bool _isHovered = false;

  void _handleHover(bool isHovered) {
    if (_isHovered != isHovered) {
      setState(() {
        _isHovered = isHovered;
      });
      widget.onHover?.call(isHovered);
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    final cardType = widget.cardType ?? widget.style.cardType;

    // 悬停阴影：只有在显式指定 hoverShadow / hoverStyle.shadow 或 cardType==elevated 时才设置
    final List<BoxShadow>? effectiveHoverShadow = widget.hoverShadow ??
        widget.hoverStyle?.shadow ??
        (cardType == FluentCardType.elevated ? FluentShadow.shadow4(context) : widget.shadow ?? widget.style.shadow);

    // 悬停背景色：仅在显式指定 hoverBackgroundColor 时才变色，未指定则绝对保持一致（不加黑/变暗）
    final ui.Color? baseBg = widget.backgroundColor ?? widget.style.backgroundColor;
    final ui.Color? effectiveHoverBg = widget.hoverBackgroundColor ??
        widget.hoverStyle?.backgroundColor ??
        baseBg;

    // 悬停边框：仅在显式指定 hoverBorder 时才改变，未指定则保持一致
    final BoxBorder? effectiveHoverBorder = widget.hoverBorder ??
        widget.hoverStyle?.border ??
        (cardType == FluentCardType.outlined
            ? Border.all(color: theme.primaryColor.withValues(alpha: 0.5), width: 1.0)
            : widget.border ?? widget.style.border);

    final FluentCardStyle effectiveNormalStyle = widget.style.copyWith(
      backgroundColor: baseBg,
      opacity: widget.opacity ?? widget.style.opacity,
      cardType: cardType,
      shadow: widget.shadow ?? widget.style.shadow,
      border: widget.border ?? widget.style.border,
      padding: widget.padding ?? widget.style.padding,
      disableHoverOverlay: true,
    );

    final FluentCardStyle activeHoverStyle = (widget.hoverStyle ?? effectiveNormalStyle).copyWith(
      backgroundColor: effectiveHoverBg,
      opacity: widget.hoverOpacity ?? widget.hoverStyle?.opacity ?? effectiveNormalStyle.opacity,
      cardType: cardType,
      shadow: effectiveHoverShadow,
      border: effectiveHoverBorder,
      padding: widget.hoverPadding ?? widget.hoverStyle?.padding ?? effectiveNormalStyle.padding,
      disableHoverOverlay: true,
    );

    return MouseRegion(
      onEnter: (_) => _handleHover(true),
      onExit: (_) => _handleHover(false),
      cursor: (effectiveNormalStyle.enableCursor && !widget.selectable)
          ? SystemMouseCursors.click
          : MouseCursor.defer,
      child: AnimatedFluentCard(
        duration: widget.duration,
        curve: widget.curve,
        onEnd: widget.onEnd,
        onTap: widget.onTap,
        selectable: widget.selectable,
        style: _isHovered ? activeHoverStyle : effectiveNormalStyle,
        child: widget.child,
      ),
    );
  }
}
