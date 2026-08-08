// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library;

import 'package:flutter/material.dart';

import '../../theme/fluent_theme.dart';

/// 对应 GradientTokens.kt 的渐变 Token 集中定义
abstract class FluentGradientTokens {
  /// Fluent 2 品牌多色彩极光渐变 (移植自 GradientTokens.kt)
  /// Color(0xFF464FEB) -> Color(0xFF47CFFA) -> Color(0xFFB47CF8)
  static const Gradient brandGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: <Color>[Color(0xFF464FEB), Color(0xFF47CFFA), Color(0xFFB47CF8)],
    stops: <double>[0.0, 0.7, 0.92],
  );
}

/// Microsoft Fluent 2 规范 Surface 容器控件 [FluentMaterial]
class FluentMaterial extends StatefulWidget {
  const FluentMaterial({
    super.key,
    this.type = MaterialType.canvas,
    this.elevation = 0.0,
    this.color,
    this.gradient,
    this.shadowColor,
    this.surfaceTintColor,
    this.textStyle,
    this.borderRadius,
    this.shape,
    this.borderOnForeground = true,
    this.clipBehavior = Clip.none,
    this.animationDuration = kThemeChangeDuration,
    this.child,
    this.animateColor = false,
  }) : assert(elevation >= 0.0),
       assert(!(shape != null && borderRadius != null)),
       assert(
         !(identical(type, MaterialType.circle) &&
             (borderRadius != null || shape != null)),
       );

  final Widget? child;
  final MaterialType type;
  final bool animateColor;
  final double elevation;
  final Color? color;
  final Gradient? gradient;
  final Color? shadowColor;
  final Color? surfaceTintColor;
  final TextStyle? textStyle;
  final ShapeBorder? shape;
  final bool borderOnForeground;
  final Clip clipBehavior;
  final Duration animationDuration;
  final BorderRadiusGeometry? borderRadius;

  static MaterialInkController? maybeOf(BuildContext context) {
    return Material.maybeOf(context);
  }

  static MaterialInkController of(BuildContext context) {
    return Material.of(context);
  }

  @override
  State<FluentMaterial> createState() => _FluentMaterialState();

  static const double defaultSplashRadius = 35.0;
}

class _FluentMaterialState extends State<FluentMaterial>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    final fluentTheme = FluentTheme.of(context);
    final isDark = fluentTheme.brightness == Brightness.dark;

    final Color backgroundColor =
        widget.color ??
        switch (widget.type) {
          MaterialType.canvas ||
          MaterialType.card => fluentTheme.backgroundColor,
          MaterialType.button ||
          MaterialType.circle ||
          MaterialType.transparency => Colors.transparent,
        };
    final Color modelShadowColor =
        widget.shadowColor ?? (isDark ? Colors.black54 : Colors.black26);

    Widget? contents = widget.child;
    if (contents != null) {
      contents = AnimatedDefaultTextStyle(
        style: widget.textStyle ?? Theme.of(context).textTheme.bodyMedium!,
        duration: widget.animationDuration,
        child: contents,
      );
    }

    contents = Material(type: MaterialType.transparency, child: contents);

    ShapeBorder? shape = widget.borderRadius != null
        ? RoundedRectangleBorder(borderRadius: widget.borderRadius!)
        : widget.shape;

    if (widget.type == MaterialType.canvas && shape == null) {
      final Color color = ElevationOverlay.applyOverlay(
        context,
        backgroundColor,
        widget.elevation,
      );

      return AnimatedPhysicalModel(
        curve: Curves.fastOutSlowIn,
        duration: widget.animationDuration,
        clipBehavior: widget.clipBehavior,
        elevation: widget.elevation,
        color: widget.gradient != null ? Colors.transparent : color,
        shadowColor: modelShadowColor,
        animateColor: widget.animateColor,
        child: widget.gradient != null
            ? DecoratedBox(
                decoration: BoxDecoration(gradient: widget.gradient),
                child: contents,
              )
            : contents,
      );
    }

    shape ??= switch (widget.type) {
      MaterialType.circle => const CircleBorder(),
      MaterialType.canvas ||
      MaterialType.transparency => const RoundedRectangleBorder(),
      MaterialType.card || MaterialType.button => const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(2.0)),
      ),
    };

    if (widget.type == MaterialType.transparency) {
      return ClipPath(
        clipper: ShapeBorderClipper(
          shape: shape,
          textDirection: Directionality.maybeOf(context),
        ),
        clipBehavior: widget.clipBehavior,
        child: _ShapeBorderPaint(shape: shape, child: contents),
      );
    }

    return _FluentMaterialInterior(
      curve: Curves.fastOutSlowIn,
      duration: widget.animationDuration,
      shape: shape,
      borderOnForeground: widget.borderOnForeground,
      clipBehavior: widget.clipBehavior,
      elevation: widget.elevation,
      color: backgroundColor,
      gradient: widget.gradient,
      shadowColor: modelShadowColor,
      surfaceTintColor: widget.surfaceTintColor,
      child: contents,
    );
  }
}

class ShapeBorderTween extends Tween<ShapeBorder?> {
  ShapeBorderTween({super.begin, super.end});

  @override
  ShapeBorder? lerp(double t) {
    return ShapeBorder.lerp(begin, end, t);
  }
}

class _FluentMaterialInterior extends ImplicitlyAnimatedWidget {
  const _FluentMaterialInterior({
    required this.child,
    required this.shape,
    this.borderOnForeground = true,
    this.clipBehavior = Clip.none,
    required this.elevation,
    required this.color,
    this.gradient,
    required this.shadowColor,
    required this.surfaceTintColor,
    super.curve,
    required super.duration,
  }) : assert(elevation >= 0.0);

  final Widget child;
  final ShapeBorder shape;
  final bool borderOnForeground;
  final Clip clipBehavior;
  final double elevation;
  final Color color;
  final Gradient? gradient;
  final Color shadowColor;
  final Color? surfaceTintColor;

  @override
  _FluentMaterialInteriorState createState() => _FluentMaterialInteriorState();
}

class _FluentMaterialInteriorState
    extends AnimatedWidgetBaseState<_FluentMaterialInterior> {
  Tween<double>? _elevation;
  ColorTween? _surfaceTintColor;
  ColorTween? _shadowColor;
  ShapeBorderTween? _border;

  @override
  void forEachTween(TweenVisitor<dynamic> visitor) {
    _elevation =
        visitor(
              _elevation,
              widget.elevation,
              (dynamic value) => Tween<double>(begin: value as double),
            )
            as Tween<double>?;
    _shadowColor =
        visitor(
              _shadowColor,
              widget.shadowColor,
              (dynamic value) => ColorTween(begin: value as Color),
            )
            as ColorTween?;
    _surfaceTintColor = widget.surfaceTintColor != null
        ? visitor(
                _surfaceTintColor,
                widget.surfaceTintColor,
                (dynamic value) => ColorTween(begin: value as Color),
              )
              as ColorTween?
        : null;
    _border =
        visitor(
              _border,
              widget.shape,
              (dynamic value) => ShapeBorderTween(begin: value as ShapeBorder),
            )
            as ShapeBorderTween?;
  }

  @override
  Widget build(BuildContext context) {
    final ShapeBorder shape = _border!.evaluate(animation)!;
    final double elevation = _elevation!.evaluate(animation);
    final Color color = ElevationOverlay.applyOverlay(
      context,
      widget.color,
      elevation,
    );
    final Color shadowColor = _shadowColor!.evaluate(animation)!;

    Widget child = _ShapeBorderPaint(
      shape: shape,
      borderOnForeground: widget.borderOnForeground,
      child: widget.child,
    );

    if (widget.gradient != null) {
      child = DecoratedBox(
        decoration: BoxDecoration(gradient: widget.gradient),
        child: child,
      );
    }

    return PhysicalShape(
      clipper: ShapeBorderClipper(
        shape: shape,
        textDirection: Directionality.maybeOf(context),
      ),
      clipBehavior: widget.clipBehavior,
      elevation: elevation,
      color: widget.gradient != null ? Colors.transparent : color,
      shadowColor: shadowColor,
      child: child,
    );
  }
}

class _ShapeBorderPaint extends StatelessWidget {
  const _ShapeBorderPaint({
    required this.child,
    required this.shape,
    this.borderOnForeground = true,
  });

  final Widget child;
  final ShapeBorder shape;
  final bool borderOnForeground;

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      painter: borderOnForeground
          ? null
          : _ShapeBorderPainter(shape, Directionality.maybeOf(context)),
      foregroundPainter: borderOnForeground
          ? _ShapeBorderPainter(shape, Directionality.maybeOf(context))
          : null,
      child: child,
    );
  }
}

class _ShapeBorderPainter extends CustomPainter {
  _ShapeBorderPainter(this.border, this.textDirection);
  final ShapeBorder border;
  final TextDirection? textDirection;

  @override
  void paint(Canvas canvas, Size size) {
    border.paint(canvas, Offset.zero & size, textDirection: textDirection);
  }

  @override
  bool shouldRepaint(_ShapeBorderPainter oldDelegate) {
    return oldDelegate.border != border;
  }
}
