import 'dart:math' as math;
import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Microsoft Fluent 2 规范柔和渐变水波纹/触控反馈组件 [FluentInkWell]
///
/// 映射 Flutter 原生 [InkWell]，表面 Reaction 采用从点击触点发散的 **柔和径向渐变 (Soft Radial Gradient)** 光辉。
/// 具备平滑的 0.45 宽域边缘羽化、Hover 悬停感知与多波纹 Layer 独立扩散。
class FluentInkWell extends StatefulWidget {
  /// 子组件
  final Widget? child;

  /// 点击回调
  final GestureTapCallback? onTap;

  /// 按下回调
  final GestureTapDownCallback? onTapDown;

  /// 抬起回调
  final GestureTapUpCallback? onTapUp;

  /// 取消回调
  final GestureTapCancelCallback? onTapCancel;

  /// 长按回调
  final GestureLongPressCallback? onLongPress;

  /// 双击回调
  final GestureTapCallback? onDoubleTap;

  /// 悬停状态回调
  final ValueChanged<bool>? onHover;

  /// 高亮状态回调
  final ValueChanged<bool>? onHighlightChanged;

  /// 水波纹颜色 (对应 Flutter InkWell.splashColor)
  final Color? splashColor;

  /// 悬停背景颜色 (对应 Flutter InkWell.hoverColor)
  final Color? hoverColor;

  /// 点击高亮背景颜色 (对应 Flutter InkWell.highlightColor)
  final Color? highlightColor;

  /// 圆角剪裁 (对应 Flutter InkWell.borderRadius)
  final BorderRadius? borderRadius;

  /// 自定义 ShapeBorder 路径剪裁 (对应 Flutter InkWell.customBorder)
  final ShapeBorder? customBorder;

  /// 鼠标光标
  final MouseCursor? mouseCursor;

  /// 微软 Fluent 2 渐变羽化半径比例 (默认 0.45，取值范围 0.0 ~ 0.99)
  final double gradientRadius;

  /// 是否启用触控反馈 (默认 true)
  final bool enabled;

  const FluentInkWell({
    super.key,
    this.child,
    this.onTap,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onLongPress,
    this.onDoubleTap,
    this.onHover,
    this.onHighlightChanged,
    this.splashColor,
    this.hoverColor,
    this.highlightColor,
    this.borderRadius,
    this.customBorder,
    this.mouseCursor,
    this.gradientRadius = 0.45,
    this.enabled = true,
  });

  @override
  State<FluentInkWell> createState() => _FluentInkWellState();
}

class _ActiveRippleEffect {
  final Offset position;
  final AnimationController radiusController;
  final Animation<double> radiusAnimation;
  final AnimationController fadeController;
  final Animation<double> fadeAnimation;

  _ActiveRippleEffect({
    required this.position,
    required TickerProvider vsync,
    required VoidCallback onUpdate,
  }) : radiusController = AnimationController(
         vsync: vsync,
         duration: const Duration(milliseconds: 225),
       ),
       fadeController = AnimationController(
         vsync: vsync,
         duration: const Duration(milliseconds: 225),
         value: 1.0,
       ),
       radiusAnimation = CurvedAnimation(
         parent: AnimationController(
           vsync: vsync,
           duration: const Duration(milliseconds: 225),
         ),
         curve: Curves.easeOut,
       ),
       fadeAnimation = CurvedAnimation(
         parent: AnimationController(
           vsync: vsync,
           duration: const Duration(milliseconds: 225),
           value: 1.0,
         ),
         curve: Curves.easeOut,
       ) {
    radiusController.addListener(onUpdate);
    fadeController.addListener(onUpdate);
    radiusController.forward();
  }

  void dismiss(VoidCallback onDone) {
    fadeController.reverse().then((_) => onDone());
  }

  void dispose() {
    radiusController.dispose();
    fadeController.dispose();
  }
}

class _FluentInkWellState extends State<FluentInkWell>
    with TickerProviderStateMixin {
  final List<_ActiveRippleEffect> _ripples = [];
  bool _isHovered = false;

  void _handleTapDown(TapDownDetails details) {
    if (!widget.enabled) return;

    widget.onTapDown?.call(details);
    widget.onHighlightChanged?.call(true);

    final effect = _ActiveRippleEffect(
      position: details.localPosition,
      vsync: this,
      onUpdate: () {
        if (mounted) setState(() {});
      },
    );

    setState(() {
      _ripples.add(effect);
    });
  }

  void _handleTapUp(TapUpDetails details) {
    widget.onTapUp?.call(details);
    widget.onHighlightChanged?.call(false);
    _dismissLatestRipple();
    widget.onTap?.call();
  }

  void _handleTapCancel() {
    widget.onTapCancel?.call();
    widget.onHighlightChanged?.call(false);
    _dismissLatestRipple();
  }

  void _dismissLatestRipple() {
    if (_ripples.isNotEmpty) {
      final active = _ripples.last;
      active.dismiss(() {
        if (mounted) {
          setState(() {
            _ripples.remove(active);
          });
          active.dispose();
        }
      });
    }
  }

  @override
  void dispose() {
    for (final r in _ripples) {
      r.dispose();
    }
    _ripples.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if (!widget.enabled) {
      return widget.child ?? const SizedBox.shrink();
    }

    final fluentTheme = FluentTheme.of(context);
    final isDark = fluentTheme.brightness == Brightness.dark;

    final bool isThemed = fluentTheme.themedRippleColor;
    final Color effSplashColor =
        widget.splashColor ??
        (isThemed
            ? (isDark
                  ? Colors.white.withAlpha(40)
                  : fluentTheme.primaryColor.withAlpha(35))
            : (isDark
                  ? Colors.white.withAlpha(25)
                  : Colors.black.withAlpha(18)));

    final Color effHoverColor =
        widget.hoverColor ??
        widget.highlightColor ??
        (isDark ? Colors.white.withAlpha(15) : Colors.black.withAlpha(12));

    final BorderRadius effRadius = widget.borderRadius ?? BorderRadius.zero;

    final MouseCursor cursor =
        widget.mouseCursor ??
        (widget.onTap != null
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic);

    Widget result = MouseRegion(
      cursor: cursor,
      onEnter: (_) {
        setState(() => _isHovered = true);
        widget.onHover?.call(true);
      },
      onExit: (_) {
        // 物理防护锁：当波纹正在按压扩散时，直接忽略 Flutter 引擎由于手势转换发出的误 onExit
        if (_ripples.isNotEmpty) return;
        if (_isHovered) {
          setState(() => _isHovered = false);
          widget.onHover?.call(false);
        }
      },
      child: GestureDetector(
        onTapDown: _handleTapDown,
        onTapUp: _handleTapUp,
        onTapCancel: _handleTapCancel,
        onLongPress: widget.onLongPress,
        onDoubleTap: widget.onDoubleTap,
        behavior: HitTestBehavior.opaque,
        child: Container(
          color: _isHovered ? effHoverColor : Colors.transparent,
          child: CustomPaint(
            foregroundPainter: _MultiFluentRadialRipplePainter(
              ripples: List.unmodifiable(_ripples),
              rippleColor: effSplashColor,
              gradientRadius: widget.gradientRadius,
            ),
            child: widget.child,
          ),
        ),
      ),
    );

    if (widget.customBorder != null) {
      return ClipPath(
        clipper: _ShapeBorderClipper(border: widget.customBorder!),
        child: result,
      );
    }

    return ClipRRect(borderRadius: effRadius, child: result);
  }
}

class _ShapeBorderClipper extends CustomClipper<Path> {
  final ShapeBorder border;

  _ShapeBorderClipper({required this.border});

  @override
  Path getClip(Size size) {
    return border.getOuterPath(Offset.zero & size);
  }

  @override
  bool shouldReclip(covariant _ShapeBorderClipper oldClipper) {
    return oldClipper.border != border;
  }
}

/// CustomPainter: 绘制多重 Microsoft Fluent 2 边缘羽化渐变 [RadialGradient] 光晕波纹
class _MultiFluentRadialRipplePainter extends CustomPainter {
  final List<_ActiveRippleEffect> ripples;
  final Color rippleColor;
  final double gradientRadius;

  _MultiFluentRadialRipplePainter({
    required this.ripples,
    required this.rippleColor,
    required this.gradientRadius,
  }) : super(
         repaint: Listenable.merge(
           ripples.expand((r) => [r.radiusController, r.fadeController]),
         ),
       );

  @override
  void paint(Canvas canvas, Size size) {
    if (ripples.isEmpty) return;

    final double maxRadius =
        (size.width * size.width + size.height * size.height);
    final double stopBoundary = gradientRadius.clamp(0.0, 0.99);

    for (final ripple in ripples) {
      final double radiusVal = ripple.radiusController.value;
      final double fadeOpacity = ripple.fadeController.value;

      final double currentRadius =
          (maxRadius > 0 ? (size.width + size.height) : 200.0) *
          radiusVal *
          0.85;

      if (currentRadius <= 0 || fadeOpacity <= 0.0) continue;

      final double opacity = fadeOpacity.clamp(0.0, 1.0);
      final int baseAlpha = (rippleColor.a * 255.0).round().clamp(0, 255);
      final Color solidColor = rippleColor.withAlpha(
        (baseAlpha * opacity).round().clamp(0, 255),
      );
      final Color transparentColor = rippleColor.withAlpha(0);

      // 遵循原生 InkWell 动画与填充：内圈 0.0~stopBoundary 保持实心，仅在 stopBoundary~1.00 边缘做羽化渐变
      final Paint paint = Paint()
        ..shader =
            RadialGradient(
              colors: [solidColor, solidColor, transparentColor],
              stops: [0.0, stopBoundary, 1.0],
            ).createShader(
              Rect.fromCircle(center: ripple.position, radius: currentRadius),
            );

      canvas.drawCircle(ripple.position, currentRadius, paint);
    }
  }

  @override
  bool shouldRepaint(covariant _MultiFluentRadialRipplePainter oldDelegate) {
    return oldDelegate.gradientRadius != gradientRadius ||
        oldDelegate.rippleColor != rippleColor;
  }
}

const Duration _kUnconfirmedRippleDuration = Duration(seconds: 1);
const Duration _kFadeInDuration = Duration(milliseconds: 75);
const Duration _kRadiusDuration = Duration(milliseconds: 225);
const Duration _kFadeOutDuration = Duration(milliseconds: 375);
const Duration _kCancelDuration = Duration(milliseconds: 75);
const double _kFadeOutIntervalStart = 225.0 / 375.0;

RectCallback? _getClipCallback(
  RenderBox referenceBox,
  bool containedInkWell,
  RectCallback? rectCallback,
) {
  if (rectCallback != null) {
    assert(containedInkWell);
    return rectCallback;
  }
  if (containedInkWell) {
    return () => Offset.zero & referenceBox.size;
  }
  return null;
}

double _getTargetRadius(
  RenderBox referenceBox,
  bool containedInkWell,
  RectCallback? rectCallback,
  Offset position,
) {
  final Size size = rectCallback != null
      ? rectCallback().size
      : referenceBox.size;
  final double d1 = size.bottomRight(Offset.zero).distance;
  final double d2 =
      (size.topRight(Offset.zero) - size.bottomLeft(Offset.zero)).distance;
  return math.max(d1, d2) / 2.0;
}

/// Flutter 框架 [InteractiveInkFeatureFactory] 的 Fluent 2 边缘渐变实现 [FluentSplashFactory]
class FluentSplashFactory extends InteractiveInkFeatureFactory {
  const FluentSplashFactory();

  /// 静态共享 Factory 实例
  static const InteractiveInkFeatureFactory splashFactory =
      FluentSplashFactory();

  @override
  InteractiveInkFeature create({
    required MaterialInkController controller,
    required RenderBox referenceBox,
    required Offset position,
    required Color color,
    required TextDirection textDirection,
    bool containedInkWell = false,
    RectCallback? rectCallback,
    BorderRadius? borderRadius,
    ShapeBorder? customBorder,
    double? radius,
    VoidCallback? onRemoved,
  }) {
    return FluentInkRipple(
      controller: controller,
      referenceBox: referenceBox,
      position: position,
      color: color,
      containedInkWell: containedInkWell,
      rectCallback: rectCallback,
      borderRadius: borderRadius,
      customBorder: customBorder,
      radius: radius,
      onRemoved: onRemoved,
      textDirection: textDirection,
    );
  }
}

/// 完全对标 Flutter SDK [InkRipple] 实现的边缘羽化 InkRipple 组件
class FluentInkRipple extends InteractiveInkFeature {
  FluentInkRipple({
    required MaterialInkController controller,
    required super.referenceBox,
    required Offset position,
    required Color color,
    required TextDirection textDirection,
    bool containedInkWell = false,
    RectCallback? rectCallback,
    BorderRadius? borderRadius,
    super.customBorder,
    double? radius,
    super.onRemoved,
  }) : _position = position,
       _borderRadius = borderRadius ?? BorderRadius.zero,
       _textDirection = textDirection,
       _targetRadius =
           radius ??
           _getTargetRadius(
             referenceBox,
             containedInkWell,
             rectCallback,
             position,
           ),
       _clipCallback = _getClipCallback(
         referenceBox,
         containedInkWell,
         rectCallback,
       ),
       super(controller: controller, color: color) {
    _fadeInController =
        AnimationController(duration: _kFadeInDuration, vsync: controller.vsync)
          ..addListener(controller.markNeedsPaint)
          ..forward();
    _fadeIn = _fadeInController.drive(
      IntTween(begin: 0, end: (color.a * 255.0).round().clamp(0, 255)),
    );

    _radiusController =
        AnimationController(
            duration: _kUnconfirmedRippleDuration,
            vsync: controller.vsync,
          )
          ..addListener(controller.markNeedsPaint)
          ..forward();
    _radius = _radiusController.drive(
      Tween<double>(
        begin: _targetRadius * 0.30,
        end: _targetRadius + 5.0,
      ).chain(_easeCurveTween),
    );

    _fadeOutController =
        AnimationController(
            duration: _kFadeOutDuration,
            vsync: controller.vsync,
          )
          ..addListener(controller.markNeedsPaint)
          ..addStatusListener(_handleAlphaStatusChanged);
    _fadeOut = _fadeOutController.drive(
      IntTween(
        begin: (color.a * 255.0).round().clamp(0, 255),
        end: 0,
      ).chain(_fadeOutIntervalTween),
    );

    controller.addInkFeature(this);
  }

  final Offset _position;
  final BorderRadius _borderRadius;
  final double _targetRadius;
  final RectCallback? _clipCallback;
  final TextDirection _textDirection;

  late Animation<double> _radius;
  late AnimationController _radiusController;

  late Animation<int> _fadeIn;
  late AnimationController _fadeInController;

  late Animation<int> _fadeOut;
  late AnimationController _fadeOutController;

  static final Animatable<double> _easeCurveTween = CurveTween(
    curve: Curves.ease,
  );
  static final Animatable<double> _fadeOutIntervalTween = CurveTween(
    curve: const Interval(_kFadeOutIntervalStart, 1.0),
  );

  @override
  void confirm() {
    _radiusController
      ..duration = _kRadiusDuration
      ..forward();
    _fadeInController.forward();
    _fadeOutController.animateTo(1.0, duration: _kFadeOutDuration);
  }

  @override
  void cancel() {
    _fadeInController.stop();
    final double fadeOutValue = 1.0 - _fadeInController.value;
    _fadeOutController.value = fadeOutValue;
    if (fadeOutValue < 1.0) {
      _fadeOutController.animateTo(1.0, duration: _kCancelDuration);
    }
  }

  void _handleAlphaStatusChanged(AnimationStatus status) {
    if (status.isCompleted) {
      dispose();
    }
  }

  @override
  void dispose() {
    _radiusController.dispose();
    _fadeInController.dispose();
    _fadeOutController.dispose();
    super.dispose();
  }

  @override
  void paintFeature(Canvas canvas, Matrix4 transform) {
    final int alpha = _fadeInController.isAnimating
        ? _fadeIn.value
        : _fadeOut.value;
    if (alpha <= 0 || _radius.value <= 0) return;

    final Color solidColor = color.withAlpha(alpha);
    final Color transparentColor = color.withAlpha(0);

    final Rect? rect = _clipCallback?.call();
    final Offset center = Offset.lerp(
      _position,
      rect != null ? rect.center : referenceBox.size.center(Offset.zero),
      Curves.ease.transform(_radiusController.value),
    )!;

    final Paint paint = Paint()
      ..shader = RadialGradient(
        colors: [solidColor, solidColor, transparentColor],
        stops: const [0.0, 0.45, 1.0],
      ).createShader(Rect.fromCircle(center: center, radius: _radius.value));

    paintInkCircle(
      canvas: canvas,
      transform: transform,
      paint: paint,
      center: center,
      radius: _radius.value,
      textDirection: _textDirection,
      customBorder: customBorder,
      borderRadius: _borderRadius,
      clipCallback: _clipCallback,
    );
  }
}
