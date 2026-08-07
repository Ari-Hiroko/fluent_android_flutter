import 'package:flutter/material.dart';
import '../../theme/fluent_motion_tokens.dart';

/// Fluent 2 卡片组件样式与高级配置参数 [FluentCardStyle]
///
/// 将不常用的外观控制（内边距、圆角、背景色、透明度、宽度）、伸缩控制（[expand]）、
/// 分割线控制（[showDivider]）与动画配置（持续时间、曲线、平滑过渡开关）封装在此对象中。
@immutable
class FluentCardStyle {
  /// 卡片外侧内边距
  final EdgeInsetsGeometry? padding;

  /// 卡片展开/内容区域内边距
  final EdgeInsetsGeometry? contentPadding;

  /// 圆角半径
  final double? borderRadius;

  /// 自定义卡片背景色
  final Color? backgroundColor;

  /// 卡片不透明度 (默认 1.0)
  final double opacity;

  /// 自定义卡片宽度 (默认 double.infinity 填满父容器)
  final double? width;

  /// 是否拉伸填满父容器垂直高度 (默认 false，即自适应包裹内容)
  final bool expand;

  /// 是否在内容区域上方显示 1dp 分割线 (默认 false)
  final bool showDivider;

  /// 是否启用当内容改变时自动平滑伸缩动画 (默认 true)
  final bool enableSizeAnimation;

  /// 是否响应鼠标指针样式改变 (默认 true)
  final bool enableCursor;

  /// 伸缩动画持续时间 (默认 FluentMotionDuration.gentle = 300ms)
  final Duration animationDuration;

  /// 伸缩动画曲线 (默认 FluentMotionCurve.standard)
  final Curve animationCurve;

  /// 图片高度 (仅在图片卡片相关模式下有效)
  final double? imageHeight;

  /// 图片宽度 (仅在水平图片卡片模式下有效)
  final double? imageWidth;

  /// 图片填充适应模式 (默认 BoxFit.cover)
  final BoxFit imageFit;

  /// 图片对齐方式 (默认 Alignment.center)
  final AlignmentGeometry imageAlignment;

  /// 自定义阴影配置 (默认为 null，即不绘制阴影)
  final List<BoxShadow>? shadow;

  const FluentCardStyle({
    this.padding,
    this.contentPadding,
    this.borderRadius,
    this.backgroundColor,
    this.opacity = 1.0,
    this.width,
    this.shadow,
    this.expand = false,
    this.showDivider = false,
    this.enableSizeAnimation = true,
    this.enableCursor = true,
    this.animationDuration = FluentMotionDuration.gentle,
    this.animationCurve = FluentMotionCurve.standard,
    this.imageHeight,
    this.imageWidth,
    this.imageFit = BoxFit.cover,
    this.imageAlignment = Alignment.center,
  });

  /// 复制并替换样式属性
  FluentCardStyle copyWith({
    EdgeInsetsGeometry? padding,
    EdgeInsetsGeometry? contentPadding,
    double? borderRadius,
    Color? backgroundColor,
    double? opacity,
    double? width,
    List<BoxShadow>? shadow,
    bool? expand,
    bool? showDivider,
    bool? enableSizeAnimation,
    bool? enableCursor,
    Duration? animationDuration,
    Curve? animationCurve,
    double? imageHeight,
    double? imageWidth,
    BoxFit? imageFit,
    AlignmentGeometry? imageAlignment,
  }) {
    return FluentCardStyle(
      padding: padding ?? this.padding,
      contentPadding: contentPadding ?? this.contentPadding,
      borderRadius: borderRadius ?? this.borderRadius,
      backgroundColor: backgroundColor ?? this.backgroundColor,
      opacity: opacity ?? this.opacity,
      width: width ?? this.width,
      shadow: shadow ?? this.shadow,
      expand: expand ?? this.expand,
      showDivider: showDivider ?? this.showDivider,
      enableSizeAnimation: enableSizeAnimation ?? this.enableSizeAnimation,
      enableCursor: enableCursor ?? this.enableCursor,
      animationDuration: animationDuration ?? this.animationDuration,
      animationCurve: animationCurve ?? this.animationCurve,
      imageHeight: imageHeight ?? this.imageHeight,
      imageWidth: imageWidth ?? this.imageWidth,
      imageFit: imageFit ?? this.imageFit,
      imageAlignment: imageAlignment ?? this.imageAlignment,
    );
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is FluentCardStyle &&
          runtimeType == other.runtimeType &&
          padding == other.padding &&
          contentPadding == other.contentPadding &&
          borderRadius == other.borderRadius &&
          backgroundColor == other.backgroundColor &&
          opacity == other.opacity &&
          width == other.width &&
          shadow == other.shadow &&
          expand == other.expand &&
          showDivider == other.showDivider &&
          enableSizeAnimation == other.enableSizeAnimation &&
          enableCursor == other.enableCursor &&
          animationDuration == other.animationDuration &&
          animationCurve == other.animationCurve &&
          imageHeight == other.imageHeight &&
          imageWidth == other.imageWidth &&
          imageFit == other.imageFit &&
          imageAlignment == other.imageAlignment;

  @override
  int get hashCode => Object.hashAll([
        padding,
        contentPadding,
        borderRadius,
        backgroundColor,
        opacity,
        width,
        shadow,
        expand,
        showDivider,
        enableSizeAnimation,
        enableCursor,
        animationDuration,
        animationCurve,
        imageHeight,
        imageWidth,
        imageFit,
        imageAlignment,
      ]);
}

