// Copyright 2014 The Flutter Authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

library;

import 'dart:collection';
import 'dart:math' as math;

import 'package:flutter/foundation.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart'
    hide InkResponse, InkWell, MaterialStatesController;

import 'fluent_ink_highlight.dart';
import '../material/fluent_material.dart';
import '../material/fluent_material_state.dart';
import '../../theme/fluent_theme.dart';

/// Microsoft Fluent 2 边缘羽化渐变波纹 Factory [FluentSplashFactory]
class FluentSplashFactory extends InteractiveInkFeatureFactory {
  const FluentSplashFactory();

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

/// 对应 Fluent 2 边缘羽化带 [RadialGradient] 扩散的 InkRipple
class FluentInkRipple extends InteractiveInkFeature {
  FluentInkRipple({
    required super.controller,
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
           _getTargetRadius(referenceBox, containedInkWell, rectCallback),
       _clipCallback = _getClipCallback(
         referenceBox,
         containedInkWell,
         rectCallback,
       ),
       super(color: color) {
    _fadeInController =
        AnimationController(
            duration: const Duration(milliseconds: 75),
            vsync: controller.vsync,
          )
          ..addListener(controller.markNeedsPaint)
          ..forward();
    _fadeIn = _fadeInController.drive(
      IntTween(begin: 0, end: (color.a * 255.0).round().clamp(0, 255)),
    );

    _radiusController =
        AnimationController(
            duration: const Duration(milliseconds: 225),
            vsync: controller.vsync,
          )
          ..addListener(controller.markNeedsPaint)
          ..forward();
    _radius = _radiusController.drive(
      Tween<double>(
        begin: _targetRadius * 0.30,
        end: _targetRadius + 5.0,
      ).chain(CurveTween(curve: Curves.ease)),
    );

    _fadeOutController =
        AnimationController(
            duration: const Duration(milliseconds: 375),
            vsync: controller.vsync,
          )
          ..addListener(controller.markNeedsPaint)
          ..addStatusListener(_handleAlphaStatusChanged);
    _fadeOut = _fadeOutController.drive(
      IntTween(begin: (color.a * 255.0).round().clamp(0, 255), end: 0),
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

  static RectCallback? _getClipCallback(
    RenderBox referenceBox,
    bool containedInkWell,
    RectCallback? rectCallback,
  ) {
    if (rectCallback != null) return rectCallback;
    if (containedInkWell) return () => Offset.zero & referenceBox.size;
    return null;
  }

  static double _getTargetRadius(
    RenderBox referenceBox,
    bool containedInkWell,
    RectCallback? rectCallback,
  ) {
    final Size size = rectCallback != null
        ? rectCallback().size
        : referenceBox.size;
    final double d1 = size.bottomRight(Offset.zero).distance;
    final double d2 =
        (size.topRight(Offset.zero) - size.bottomLeft(Offset.zero)).distance;
    return math.max(d1, d2) / 2.0;
  }

  @override
  void confirm() {
    _radiusController.forward();
    _fadeOutController.forward();
  }

  @override
  void cancel() {
    _fadeOutController.forward();
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
    final int alpha;
    if (_fadeOutController.isAnimating || _fadeOutController.isCompleted) {
      alpha = _fadeOut.value;
    } else if (_fadeInController.isAnimating) {
      alpha = _fadeIn.value;
    } else {
      alpha = (color.a * 255.0).round().clamp(0, 255);
    }
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

abstract class _ParentInkResponseState {
  void markChildInkResponsePressed(
    _ParentInkResponseState childState,
    bool value,
  );
}

class _ParentInkResponseProvider extends InheritedWidget {
  const _ParentInkResponseProvider({required this.state, required super.child});

  final _ParentInkResponseState state;

  @override
  bool updateShouldNotify(_ParentInkResponseProvider oldWidget) =>
      state != oldWidget.state;

  static _ParentInkResponseState? maybeOf(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<_ParentInkResponseProvider>()
        ?.state;
  }
}

typedef _GetRectCallback = RectCallback? Function(RenderBox referenceBox);
typedef _CheckContext = bool Function(BuildContext context);

/// Microsoft Fluent 2 手势与墨水响应控件 [FluentInkResponse]
class FluentInkResponse extends StatelessWidget {
  const FluentInkResponse({
    super.key,
    this.child,
    this.onTap,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onDoubleTap,
    this.onLongPress,
    this.onLongPressUp,
    this.onSecondaryTap,
    this.onSecondaryTapUp,
    this.onSecondaryTapDown,
    this.onSecondaryTapCancel,
    this.onHighlightChanged,
    this.onHover,
    this.mouseCursor,
    this.containedInkWell = false,
    this.highlightShape = BoxShape.circle,
    this.radius,
    this.borderRadius,
    this.customBorder,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.overlayColor,
    this.splashColor,
    this.splashFactory,
    this.enableFeedback = true,
    this.excludeFromSemantics = false,
    this.focusNode,
    this.canRequestFocus = true,
    this.onFocusChange,
    this.autofocus = false,
    this.statesController,
    this.hoverDuration,
    this.gradient,
    this.splashGradient,
    this.hoverGradient,
    this.highlightGradient,
    this.gradientRadius = 0.45,
  });

  final Widget? child;
  final GestureTapCallback? onTap;
  final GestureTapDownCallback? onTapDown;
  final GestureTapUpCallback? onTapUp;
  final GestureTapCallback? onTapCancel;
  final GestureTapCallback? onDoubleTap;
  final GestureLongPressCallback? onLongPress;
  final GestureLongPressUpCallback? onLongPressUp;
  final GestureTapCallback? onSecondaryTap;
  final GestureTapDownCallback? onSecondaryTapDown;
  final GestureTapUpCallback? onSecondaryTapUp;
  final GestureTapCallback? onSecondaryTapCancel;
  final ValueChanged<bool>? onHighlightChanged;
  final ValueChanged<bool>? onHover;
  final MouseCursor? mouseCursor;
  final bool containedInkWell;
  final BoxShape highlightShape;
  final double? radius;
  final BorderRadius? borderRadius;
  final ShapeBorder? customBorder;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final WidgetStateProperty<Color?>? overlayColor;
  final Color? splashColor;
  final InteractiveInkFeatureFactory? splashFactory;
  final bool enableFeedback;
  final bool excludeFromSemantics;
  final ValueChanged<bool>? onFocusChange;
  final bool autofocus;
  final FocusNode? focusNode;
  final bool canRequestFocus;
  final MaterialStatesController? statesController;
  final Duration? hoverDuration;
  final Gradient? gradient;
  final Gradient? splashGradient;
  final Gradient? hoverGradient;
  final Gradient? highlightGradient;
  final double gradientRadius;

  RectCallback? getRectCallback(RenderBox referenceBox) => null;

  @override
  Widget build(BuildContext context) {
    final _ParentInkResponseState? parentState =
        _ParentInkResponseProvider.maybeOf(context);
    return _FluentInkResponseStateWidget(
      onTap: onTap,
      onTapDown: onTapDown,
      onTapUp: onTapUp,
      onTapCancel: onTapCancel,
      onDoubleTap: onDoubleTap,
      onLongPress: onLongPress,
      onLongPressUp: onLongPressUp,
      onSecondaryTap: onSecondaryTap,
      onSecondaryTapUp: onSecondaryTapUp,
      onSecondaryTapDown: onSecondaryTapDown,
      onSecondaryTapCancel: onSecondaryTapCancel,
      onHighlightChanged: onHighlightChanged,
      onHover: onHover,
      mouseCursor: mouseCursor,
      containedInkWell: containedInkWell,
      highlightShape: highlightShape,
      radius: radius,
      borderRadius: borderRadius,
      customBorder: customBorder,
      focusColor: focusColor,
      hoverColor: hoverColor,
      highlightColor: highlightColor,
      overlayColor: overlayColor,
      splashColor: splashColor,
      splashFactory: splashFactory,
      enableFeedback: enableFeedback,
      excludeFromSemantics: excludeFromSemantics,
      focusNode: focusNode,
      canRequestFocus: canRequestFocus,
      onFocusChange: onFocusChange,
      autofocus: autofocus,
      parentState: parentState,
      getRectCallback: getRectCallback,
      debugCheckContext: debugCheckContext,
      statesController: statesController,
      hoverDuration: hoverDuration,
      gradient: gradient,
      splashGradient: splashGradient,
      hoverGradient: hoverGradient,
      highlightGradient: highlightGradient,
      gradientRadius: gradientRadius,
      child: child,
    );
  }

  @mustCallSuper
  bool debugCheckContext(BuildContext context) {
    assert(debugCheckHasMaterial(context));
    assert(debugCheckHasDirectionality(context));
    return true;
  }
}

/// Microsoft Fluent 2 视觉风尚墨水控件 [FluentInkWell]
class FluentInkWell extends FluentInkResponse {
  const FluentInkWell({
    super.key,
    super.child,
    super.onTap,
    super.onDoubleTap,
    super.onLongPress,
    super.onLongPressUp,
    super.onTapDown,
    super.onTapUp,
    super.onTapCancel,
    super.onSecondaryTap,
    super.onSecondaryTapUp,
    super.onSecondaryTapDown,
    super.onSecondaryTapCancel,
    super.onHighlightChanged,
    super.onHover,
    super.mouseCursor,
    super.focusColor,
    super.hoverColor,
    super.highlightColor,
    super.overlayColor,
    super.splashColor,
    super.splashFactory,
    super.radius,
    super.borderRadius,
    super.customBorder,
    super.enableFeedback,
    super.excludeFromSemantics,
    super.focusNode,
    super.canRequestFocus,
    super.onFocusChange,
    super.autofocus,
    super.statesController,
    super.hoverDuration,
    super.gradient,
    super.splashGradient,
    super.hoverGradient,
    super.highlightGradient,
    super.gradientRadius,
  }) : super(containedInkWell: true, highlightShape: BoxShape.rectangle);
}

class _FluentInkResponseStateWidget extends StatefulWidget {
  const _FluentInkResponseStateWidget({
    this.child,
    this.onTap,
    this.onTapDown,
    this.onTapUp,
    this.onTapCancel,
    this.onDoubleTap,
    this.onLongPress,
    this.onLongPressUp,
    this.onSecondaryTap,
    this.onSecondaryTapUp,
    this.onSecondaryTapDown,
    this.onSecondaryTapCancel,
    this.onHighlightChanged,
    this.onHover,
    this.mouseCursor,
    this.containedInkWell = false,
    this.highlightShape = BoxShape.circle,
    this.radius,
    this.borderRadius,
    this.customBorder,
    this.focusColor,
    this.hoverColor,
    this.highlightColor,
    this.overlayColor,
    this.splashColor,
    this.splashFactory,
    this.enableFeedback = true,
    this.excludeFromSemantics = false,
    this.focusNode,
    this.canRequestFocus = true,
    this.onFocusChange,
    this.autofocus = false,
    this.parentState,
    this.getRectCallback,
    required this.debugCheckContext,
    this.statesController,
    this.hoverDuration,
    this.gradient,
    this.splashGradient,
    this.hoverGradient,
    this.highlightGradient,
    this.gradientRadius = 0.45,
  });

  final Widget? child;
  final GestureTapCallback? onTap;
  final GestureTapDownCallback? onTapDown;
  final GestureTapUpCallback? onTapUp;
  final GestureTapCancelCallback? onTapCancel;
  final GestureTapCallback? onDoubleTap;
  final GestureLongPressCallback? onLongPress;
  final GestureLongPressUpCallback? onLongPressUp;
  final GestureTapCallback? onSecondaryTap;
  final GestureTapUpCallback? onSecondaryTapUp;
  final GestureTapDownCallback? onSecondaryTapDown;
  final GestureTapCallback? onSecondaryTapCancel;
  final ValueChanged<bool>? onHighlightChanged;
  final ValueChanged<bool>? onHover;
  final MouseCursor? mouseCursor;
  final bool containedInkWell;
  final BoxShape highlightShape;
  final double? radius;
  final BorderRadius? borderRadius;
  final ShapeBorder? customBorder;
  final Color? focusColor;
  final Color? hoverColor;
  final Color? highlightColor;
  final WidgetStateProperty<Color?>? overlayColor;
  final Color? splashColor;
  final InteractiveInkFeatureFactory? splashFactory;
  final bool enableFeedback;
  final bool excludeFromSemantics;
  final ValueChanged<bool>? onFocusChange;
  final bool autofocus;
  final FocusNode? focusNode;
  final bool canRequestFocus;
  final _ParentInkResponseState? parentState;
  final _GetRectCallback? getRectCallback;
  final _CheckContext debugCheckContext;
  final MaterialStatesController? statesController;
  final Duration? hoverDuration;
  final Gradient? gradient;
  final Gradient? splashGradient;
  final Gradient? hoverGradient;
  final Gradient? highlightGradient;
  final double gradientRadius;

  @override
  _FluentInkResponseState createState() => _FluentInkResponseState();
}

enum _HighlightType { pressed, hover, focus }

class _FluentInkResponseState extends State<_FluentInkResponseStateWidget>
    with AutomaticKeepAliveClientMixin<_FluentInkResponseStateWidget>
    implements _ParentInkResponseState {
  Set<InteractiveInkFeature>? _splashes;
  InteractiveInkFeature? _currentSplash;
  bool _hovering = false;
  final Map<_HighlightType, FluentInkHighlight?> _highlights =
      <_HighlightType, FluentInkHighlight?>{};
  late final Map<Type, Action<Intent>> _actionMap = <Type, Action<Intent>>{
    ActivateIntent: CallbackAction<ActivateIntent>(onInvoke: activateOnIntent),
    ButtonActivateIntent: CallbackAction<ButtonActivateIntent>(
      onInvoke: activateOnIntent,
    ),
  };
  MaterialStatesController? internalStatesController;

  bool get highlightsExist => _highlights.values
      .where((FluentInkHighlight? highlight) => highlight != null)
      .isNotEmpty;

  final ObserverList<_ParentInkResponseState> _activeChildren =
      ObserverList<_ParentInkResponseState>();

  @override
  void markChildInkResponsePressed(
    _ParentInkResponseState childState,
    bool value,
  ) {
    final bool lastAnyPressed = _anyChildInkResponsePressed;
    if (value) {
      _activeChildren.add(childState);
    } else {
      _activeChildren.remove(childState);
    }

    final bool nowAnyPressed = _anyChildInkResponsePressed;
    if (nowAnyPressed != lastAnyPressed) {
      widget.parentState?.markChildInkResponsePressed(this, nowAnyPressed);
    }
  }

  bool get _anyChildInkResponsePressed => _activeChildren.isNotEmpty;

  void activateOnIntent(Intent? intent) {
    _startNewSplash(context: context);
    _currentSplash?.confirm();
    _currentSplash = null;
    if (widget.onTap != null) {
      if (widget.enableFeedback) {
        Feedback.forTap(context);
      }
      widget.onTap?.call();
    }
  }

  void handleStatesControllerChange() {
    setState(() {});
  }

  MaterialStatesController get statesController =>
      widget.statesController ?? internalStatesController!;

  void initStatesController() {
    if (widget.statesController == null) {
      internalStatesController = MaterialStatesController();
    }
    statesController.update(WidgetState.disabled, !enabled);
    statesController.addListener(handleStatesControllerChange);
  }

  @override
  void initState() {
    super.initState();
    initStatesController();
    FocusManager.instance.addHighlightModeListener(
      handleFocusHighlightModeChange,
    );
  }

  @override
  void didUpdateWidget(_FluentInkResponseStateWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.statesController != oldWidget.statesController) {
      oldWidget.statesController?.removeListener(handleStatesControllerChange);
      if (widget.statesController != null) {
        internalStatesController?.dispose();
        internalStatesController = null;
      }
      initStatesController();
    }
    if (widget.radius != oldWidget.radius ||
        widget.highlightShape != oldWidget.highlightShape ||
        widget.borderRadius != oldWidget.borderRadius) {
      final FluentInkHighlight? hoverHighlight =
          _highlights[_HighlightType.hover];
      if (hoverHighlight != null) {
        hoverHighlight.dispose();
        updateHighlight(
          _HighlightType.hover,
          value: _hovering,
          callOnHover: false,
        );
      }
    }
  }

  @override
  void dispose() {
    FocusManager.instance.removeHighlightModeListener(
      handleFocusHighlightModeChange,
    );
    statesController.removeListener(handleStatesControllerChange);
    internalStatesController?.dispose();
    super.dispose();
  }

  @override
  bool get wantKeepAlive =>
      highlightsExist || (_splashes != null && _splashes!.isNotEmpty);

  Duration getFadeDurationForType(_HighlightType type) {
    switch (type) {
      case _HighlightType.pressed:
        return const Duration(milliseconds: 200);
      case _HighlightType.hover:
      case _HighlightType.focus:
        return widget.hoverDuration ?? const Duration(milliseconds: 50);
    }
  }

  void updateHighlight(
    _HighlightType type, {
    required bool value,
    bool callOnHover = true,
  }) {
    final FluentInkHighlight? highlight = _highlights[type];
    void handleInkRemoval() {
      _highlights[type] = null;
      updateKeepAlive();
    }

    switch (type) {
      case _HighlightType.pressed:
        statesController.update(WidgetState.pressed, value);
      case _HighlightType.hover:
        if (callOnHover) {
          statesController.update(WidgetState.hovered, value);
        }
      case _HighlightType.focus:
        break;
    }

    if (type == _HighlightType.pressed) {
      widget.parentState?.markChildInkResponsePressed(this, value);
    }

    if (value == (highlight != null && highlight.active)) {
      return;
    }

    if (value) {
      if (highlight == null) {
        final Color resolvedOverlayColor =
            widget.overlayColor?.resolve(statesController.value) ??
            switch (type) {
              _HighlightType.pressed =>
                widget.highlightColor ?? Theme.of(context).highlightColor,
              _HighlightType.focus =>
                widget.focusColor ?? Theme.of(context).focusColor,
              _HighlightType.hover =>
                widget.hoverColor ?? Theme.of(context).hoverColor,
            };
        final referenceBox = context.findRenderObject()! as RenderBox;
        _highlights[type] = FluentInkHighlight(
          controller: FluentMaterial.of(context),
          referenceBox: referenceBox,
          color: enabled
              ? resolvedOverlayColor
              : resolvedOverlayColor.withAlpha(0),
          gradient: type == _HighlightType.hover
              ? widget.hoverGradient
              : (type == _HighlightType.pressed
                    ? widget.highlightGradient
                    : null),
          shape: widget.highlightShape,
          radius: widget.radius,
          borderRadius: widget.borderRadius,
          customBorder: widget.customBorder,
          rectCallback: widget.getRectCallback?.call(referenceBox),
          onRemoved: handleInkRemoval,
          textDirection: Directionality.of(context),
          fadeDuration: getFadeDurationForType(type),
        );
        updateKeepAlive();
      } else {
        highlight.activate();
      }
    } else {
      highlight?.deactivate();
    }
  }

  void handleFocusHighlightModeChange(FocusHighlightMode mode) {
    if (!mounted) return;
    setState(() {});
  }

  bool get enabled =>
      widget.onTap != null ||
      widget.onDoubleTap != null ||
      widget.onLongPress != null ||
      widget.onTapDown != null ||
      widget.onTapUp != null ||
      widget.onTapCancel != null ||
      widget.onSecondaryTap != null ||
      widget.onSecondaryTapUp != null ||
      widget.onSecondaryTapDown != null ||
      widget.onSecondaryTapCancel != null;

  void _startNewSplash({TapDownDetails? details, BuildContext? context}) {
    final RenderBox referenceBox =
        (context ?? this.context).findRenderObject()! as RenderBox;
    final Offset position;
    if (details != null) {
      position = details.localPosition;
    } else {
      final RectCallback? cb = widget.getRectCallback?.call(referenceBox);
      final Rect? rect = cb?.call();
      position = rect != null
          ? rect.center
          : referenceBox.size.center(Offset.zero);
    }
    final InteractiveInkFeature splash = _createSplash(position);
    _splashes ??= HashSet<InteractiveInkFeature>();
    _splashes!.add(splash);
    _currentSplash = splash;
    updateKeepAlive();
  }

  InteractiveInkFeature _createSplash(Offset position) {
    final MaterialInkController inkController = FluentMaterial.of(context);
    final referenceBox = context.findRenderObject()! as RenderBox;
    final Color color =
        widget.overlayColor?.resolve(statesController.value) ??
        widget.splashColor ??
        Theme.of(context).splashColor;
    final RectCallback? rectCallback = widget.containedInkWell
        ? widget.getRectCallback?.call(referenceBox)
        : null;

    InteractiveInkFeature? splash;
    void onRemoved() {
      if (_splashes != null) {
        _splashes!.remove(splash);
        if (_currentSplash == splash) {
          _currentSplash = null;
        }
        updateKeepAlive();
      }
    }

    splash = (widget.splashFactory ?? FluentSplashFactory.splashFactory).create(
      controller: inkController,
      referenceBox: referenceBox,
      position: position,
      color: color,
      containedInkWell: widget.containedInkWell,
      rectCallback: rectCallback,
      radius: widget.radius,
      borderRadius: widget.borderRadius,
      customBorder: widget.customBorder,
      onRemoved: onRemoved,
      textDirection: Directionality.of(context),
    );

    return splash;
  }

  void handleTapDown(TapDownDetails details) {
    _startNewSplash(details: details);
    updateHighlight(_HighlightType.pressed, value: true);
    if (widget.onTapDown != null) {
      widget.onTapDown!(details);
    }
  }

  void handleTapUp(TapUpDetails details) {
    if (_currentSplash != null) {
      _currentSplash!.confirm();
      _currentSplash = null;
    }
    updateHighlight(_HighlightType.pressed, value: false);
    if (widget.onTapUp != null) {
      widget.onTapUp!(details);
    }
  }

  void handleTap() {
    if (_currentSplash != null) {
      _currentSplash!.confirm();
      _currentSplash = null;
    }
    updateHighlight(_HighlightType.pressed, value: false);
    if (widget.onTap != null) {
      if (widget.enableFeedback) {
        Feedback.forTap(context);
      }
      widget.onTap!();
    }
  }

  void handleTapCancel() {
    if (_currentSplash != null) {
      _currentSplash!.cancel();
      _currentSplash = null;
    }
    updateHighlight(_HighlightType.pressed, value: false);
    if (widget.onTapCancel != null) {
      widget.onTapCancel!();
    }
  }

  void handleLongPress() {
    if (widget.onLongPress != null) {
      if (widget.enableFeedback) {
        Feedback.forLongPress(context);
      }
      widget.onLongPress!();
    }
  }

  void handleMouseEnter(PointerEnterEvent event) {
    _hovering = true;
    updateHighlight(_HighlightType.hover, value: true);
    widget.onHover?.call(true);
  }

  void handleMouseExit(PointerExitEvent event) {
    _hovering = false;
    updateHighlight(_HighlightType.hover, value: false);
    widget.onHover?.call(false);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    final MouseCursor effectiveMouseCursor =
        widget.mouseCursor ??
        (enabled ? SystemMouseCursors.click : SystemMouseCursors.basic);

    return Actions(
      actions: _actionMap,
      child: MouseRegion(
        cursor: effectiveMouseCursor,
        onEnter: handleMouseEnter,
        onExit: handleMouseExit,
        child: GestureDetector(
          onTapDown: handleTapDown,
          onTapUp: handleTapUp,
          onTap: handleTap,
          onTapCancel: handleTapCancel,
          onLongPress: handleLongPress,
          behavior: HitTestBehavior.opaque,
          child: widget.child,
        ),
      ),
    );
  }
}
