import 'dart:async';
import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Snackbar 提示显示时长 [FluentSnackbarDuration]
///
/// 完全映射自 Android Kotlin NotificationDuration (SHORT: 4000ms, LONG: 10000ms, INDEFINITE)
enum FluentSnackbarDuration {
  /// 短暂提示 (4000ms)
  short,

  /// 较长提示 (10000ms)
  long,

  /// 不自动隐藏 (需手动关闭或点击操作)
  indefinite,
}

/// Snackbar 触发/关闭结果状态 [FluentNotificationResult]
///
/// 完全映射自 Android Kotlin NotificationResult (TIMEOUT, DISMISSED, CLICKED)
enum FluentNotificationResult {
  /// 自动超时关闭
  timeout,

  /// 手动点击 Action 或滑动 Dismiss 关闭
  dismissed,

  /// 点击了操作按钮
  clicked,
}

/// Snackbar 风格款式 [FluentSnackbarStyle]
///
/// 完全映射自 Android Kotlin SnackbarStyle (Neutral, Contrast, Accent, Warning, Danger)
enum FluentSnackbarStyle {
  /// 中性风格 (暗灰/黑色背景)
  neutral,

  /// 高对比度风格 (深黑背景)
  contrast,

  /// 品牌蓝强调风格 (#0F6CBD)
  accent,

  /// 品牌蓝别名
  brand,

  /// 警示橙黄风格 (#D83B01)
  warning,

  /// 危险红风格 (#D13438)
  danger,
}

/// Snackbar 相对目标绑定的垂直相对位置 [FluentSnackbarPosition]
enum FluentSnackbarPosition {
  /// 显示在目标组件上方
  top,

  /// 显示在目标组件下方
  bottom,
}

/// FluentSnackbar Toast 控制器，可用于在代码中随时主动关闭 Toast 提示
class FluentSnackbarController {
  final VoidCallback _dismissCallback;
  bool _isDismissed = false;

  FluentSnackbarController(this._dismissCallback);

  /// 手动主动关闭 Toast
  void dismiss() {
    if (!_isDismissed) {
      _isDismissed = true;
      _dismissCallback();
    }
  }

  /// 是否已被关闭
  bool get isDismissed => _isDismissed;
}

/// Fluent 2 消息提示条组件 [FluentSnackbar]
///
/// 移植自 Android Kotlin Snackbar.kt, V2SnackbarActivity.kt 与 V2SnackbarActivityUITest.kt
class FluentSnackbar extends StatelessWidget {
  /// 消息主要内容
  final String message;

  /// 标题 (可选)
  final String? title;

  /// 副标题 (可选，位于第三行或下方)
  final String? subTitle;

  /// 右侧操作按钮文本 (如 "撤销", "重试", "查看")
  final String? actionText;

  /// 右侧操作按钮点击回调
  final VoidCallback? onActionTap;

  /// 前置 Icon / Badge (可选)
  final Widget? leadingIcon;

  /// 是否包含右侧 X 关闭按键 (Enable Dismiss Button)
  final bool enableDismiss;

  /// 右侧 X 关闭按键回调
  final VoidCallback? onDismiss;

  /// 风格样式 (neutral, contrast, accent, warning, danger)
  final FluentSnackbarStyle style;

  /// 是否开启阴影圆角浮动效果 (默认 true)
  final bool isFloating;

  /// 是否开启悬停手形光标 (默认 true)
  final bool enableCursor;

  const FluentSnackbar({
    super.key,
    required this.message,
    this.title,
    this.subTitle,
    this.actionText,
    this.onActionTap,
    this.leadingIcon,
    this.enableDismiss = false,
    this.onDismiss,
    this.style = FluentSnackbarStyle.neutral,
    this.isFloating = true,
    this.enableCursor = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    Color backgroundColor;
    Color textColor = Colors.white;
    Color secondaryTextColor = Colors.white.withAlpha(204);
    Color actionTextColor;

    switch (style) {
      case FluentSnackbarStyle.neutral:
        backgroundColor = isDark
            ? const Color(0xFF3B3B3B)
            : const Color(0xFF292929);
        actionTextColor = isDark
            ? const Color(0xFF2896F3)
            : const Color(0xFF60A5FA);
        break;
      case FluentSnackbarStyle.contrast:
        backgroundColor = const Color(0xFF111111);
        actionTextColor = const Color(0xFF2896F3);
        break;
      case FluentSnackbarStyle.accent:
      case FluentSnackbarStyle.brand:
        backgroundColor = theme.primaryColor;
        actionTextColor = Colors.white;
        break;
      case FluentSnackbarStyle.warning:
        backgroundColor = const Color(0xFFD83B01);
        actionTextColor = Colors.white;
        break;
      case FluentSnackbarStyle.danger:
        backgroundColor = const Color(0xFFD13438);
        actionTextColor = Colors.white;
        break;
    }

    final bool hasTitle = title != null && title!.isNotEmpty;
    final bool hasSubTitle = subTitle != null && subTitle!.isNotEmpty;

    return Material(
      color: backgroundColor,
      elevation: isFloating ? FluentGlobalTokens.shadow14 : 0,
      borderRadius: BorderRadius.circular(
        isFloating ? FluentGlobalTokens.cornerRadius80 : 0,
      ),
      child: Container(
        constraints: const BoxConstraints(minHeight: 52.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(
            isFloating ? FluentGlobalTokens.cornerRadius80 : 0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 前置 Icon (Icon Param)
            if (leadingIcon != null) ...[
              IconTheme(
                data: IconThemeData(color: textColor, size: 20.0),
                child: leadingIcon!,
              ),
              const SizedBox(width: 12.0),
            ],

            // 消息与标题与副标题 (Title & Subtitle Param)
            Expanded(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  if (hasTitle) ...[
                    Text(
                      title!,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: textColor,
                      ),
                    ),
                    const SizedBox(height: 2.0),
                  ],
                  Text(
                    message,
                    style: TextStyle(
                      fontSize: 13.0,
                      color: hasTitle ? secondaryTextColor : textColor,
                    ),
                  ),
                  if (hasSubTitle) ...[
                    const SizedBox(height: 2.0),
                    Text(
                      subTitle!,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: secondaryTextColor,
                      ),
                    ),
                  ],
                ],
              ),
            ),

            // 右侧 Action 按钮 (Action Button Param)
            if (actionText != null && actionText!.isNotEmpty) ...[
              const SizedBox(width: 12.0),
              MouseRegion(
                cursor: enableCursor
                    ? SystemMouseCursors.click
                    : SystemMouseCursors.basic,
                child: GestureDetector(
                  onTap: onActionTap,
                  child: Text(
                    actionText!,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.bold,
                      color: actionTextColor,
                    ),
                  ),
                ),
              ),
            ],

            // 右侧 X 关闭按钮 (Dismiss Button Param)
            if (enableDismiss) ...[
              const SizedBox(width: 12.0),
              MouseRegion(
                cursor: enableCursor
                    ? SystemMouseCursors.click
                    : SystemMouseCursors.basic,
                child: GestureDetector(
                  onTap: onDismiss,
                  child: Icon(
                    Icons.close,
                    size: 18.0,
                    color: secondaryTextColor,
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}

/// 带有弹跳弹出、淡隐与 [Swipe-To-Dismiss] 滑动手势的 [AnimatedFluentSnackbar] 容器
///
/// 100% 对标 Android Kotlin `Snackbar.kt` 的 `Modifier.swipeToDismiss` 与 `AnimationBehavior`
class AnimatedFluentSnackbar extends StatefulWidget {
  final FluentSnackbar child;
  final ValueChanged<FluentNotificationResult>? onResult;
  final FluentSnackbarDuration duration;
  final bool enableSwipeToDismiss;

  /// 入场/退场滑出的基准方向：若为 true 则从上方滑入，否则从下方滑入
  final bool slideFromTop;

  const AnimatedFluentSnackbar({
    super.key,
    required this.child,
    this.onResult,
    this.duration = FluentSnackbarDuration.long,
    this.enableSwipeToDismiss = true,
    this.slideFromTop = false,
  });

  @override
  State<AnimatedFluentSnackbar> createState() => _AnimatedFluentSnackbarState();
}

class _AnimatedFluentSnackbarState extends State<AnimatedFluentSnackbar>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _fadeAnimation;
  late Animation<Offset> _offsetAnimation;
  late Animation<double> _scaleAnimation;

  double _dragOffsetX = 0.0;
  bool _isDragging = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 300),
    );

    _fadeAnimation = CurvedAnimation(
      parent: _controller,
      curve: Curves.easeInOut,
    );

    // 根据滑入方向设置始发 Offset (Top: -0.4, Bottom: 0.4)
    final Offset beginOffset = widget.slideFromTop
        ? const Offset(0.0, -0.4)
        : const Offset(0.0, 0.4);

    _offsetAnimation = Tween<Offset>(
      begin: beginOffset,
      end: Offset.zero,
    ).animate(
      CurvedAnimation(parent: _controller, curve: Curves.fastOutSlowIn),
    );

    // 对标 AnimationVariables.scale (0.85 -> 1.0)
    _scaleAnimation = Tween<double>(
      begin: 0.85,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeOutBack));

    _controller.forward();

    _scheduleAutoDismiss();
  }

  void _scheduleAutoDismiss() {
    if (widget.duration == FluentSnackbarDuration.indefinite) return;
    final ms = widget.duration == FluentSnackbarDuration.short ? 4000 : 10000;
    _timer = Timer(Duration(milliseconds: ms), () {
      if (mounted) _dismiss(FluentNotificationResult.timeout);
    });
  }

  Future<void> _dismiss(FluentNotificationResult result) async {
    _timer?.cancel();
    if (_controller.isAnimating &&
        _controller.status == AnimationStatus.reverse) {
      return;
    }
    await _controller.reverse();
    if (mounted) {
      widget.onResult?.call(result);
    }
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    if (!widget.enableSwipeToDismiss) return;
    setState(() {
      _isDragging = true;
      _dragOffsetX += details.delta.dx;
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (!widget.enableSwipeToDismiss) return;
    final double velocity = details.velocity.pixelsPerSecond.dx;
    const double dismissThreshold = 80.0;

    if (_dragOffsetX.abs() > dismissThreshold || velocity.abs() > 400.0) {
      // 对标 Kotlin swipeToDismiss 达到阈值划出隐藏
      _dismiss(FluentNotificationResult.dismissed);
    } else {
      // 未达到阈值平滑弹回原位
      setState(() {
        _isDragging = false;
        _dragOffsetX = 0.0;
      });
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    // 拖拽时的透明度衰减 (对标 Kotlin graphicsLayer alpha)
    final double dragAlpha = (1.0 - (_dragOffsetX.abs() / 300.0)).clamp(
      0.0,
      1.0,
    );

    return GestureDetector(
      onHorizontalDragUpdate: _onHorizontalDragUpdate,
      onHorizontalDragEnd: _onHorizontalDragEnd,
      child: AnimatedContainer(
        duration: _isDragging
            ? Duration.zero
            : const Duration(milliseconds: 250),
        curve: Curves.easeOut,
        transform: Matrix4.translationValues(_dragOffsetX, 0, 0),
        child: Opacity(
          opacity: _isDragging ? dragAlpha : 1.0,
          child: FadeTransition(
            opacity: _fadeAnimation,
            child: SlideTransition(
              position: _offsetAnimation,
              child: ScaleTransition(
                scale: _scaleAnimation,
                child: widget.child,
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// 显示带有平滑弹跳、淡隐与 [Swipe-To-Dismiss] 滑动手势的 Overlay 浮动 Toast 消息 [showFluentSnackbarToast]
///
/// 完全映射 Kotlin `snackbarState.showSnackbar` 与 `Modifier.swipeToDismiss`。
/// 支持配置 `alignment` 对齐方向、`offset` 偏置偏移量、`margin` 内外边距，
/// 以及绑定 `targetKey` / `targetContext` / `targetRect` 目标组件进行精准锚点定位。
/// 返回 [FluentSnackbarController]，可用于在逻辑代码中随时主动关闭此 Toast 提示。
FluentSnackbarController showFluentSnackbarToast({
  required BuildContext context,
  required String message,
  String? title,
  String? subTitle,
  String? actionText,
  ValueChanged<FluentNotificationResult>? onResult,
  VoidCallback? onActionTap,
  Widget? leadingIcon,
  bool enableDismiss = false,
  bool enableSwipeToDismiss = true,
  VoidCallback? onDismiss,
  FluentSnackbarStyle style = FluentSnackbarStyle.neutral,
  FluentSnackbarDuration duration = FluentSnackbarDuration.long,
  Alignment alignment = Alignment.bottomCenter,
  Offset offset = Offset.zero,
  EdgeInsetsGeometry? margin,
  GlobalKey? targetKey,
  BuildContext? targetContext,
  Rect? targetRect,
  FluentSnackbarPosition targetPosition = FluentSnackbarPosition.bottom,
}) {
  final overlayState =
      Overlay.maybeOf(context, rootOverlay: true) ??
      Navigator.maybeOf(context, rootNavigator: true)?.overlay;

  if (overlayState == null) {
    assert(false, 'showFluentSnackbarToast 需要在 MaterialApp 之下的 context 中调用');
    return FluentSnackbarController(() {});
  }

  final fluentTheme = FluentTheme.of(context);
  late OverlayEntry entry;
  bool isDismissed = false;

  void dismissEntry(FluentNotificationResult result) {
    if (!isDismissed) {
      isDismissed = true;
      try {
        entry.remove();
      } catch (_) {}
      onResult?.call(result);
    }
  }

  final controller = FluentSnackbarController(() {
    dismissEntry(FluentNotificationResult.dismissed);
  });

  entry = OverlayEntry(
    builder: (context) {
      Rect? bounds = targetRect;
      if (bounds == null) {
        final ctx = targetKey?.currentContext ?? targetContext;
        if (ctx != null) {
          final renderBox = ctx.findRenderObject() as RenderBox?;
          if (renderBox != null && renderBox.hasSize) {
            final origin = renderBox.localToGlobal(Offset.zero);
            bounds = origin & renderBox.size;
          }
        }
      }

      final bool slideFromTop = bounds != null
          ? targetPosition == FluentSnackbarPosition.top
          : alignment.y < 0;

      Widget snackbarContent = AnimatedFluentSnackbar(
        duration: duration,
        enableSwipeToDismiss: enableSwipeToDismiss,
        slideFromTop: slideFromTop,
        onResult: (result) {
          dismissEntry(result);
        },
        child: FluentSnackbar(
          message: message,
          title: title,
          subTitle: subTitle,
          actionText: actionText,
          onActionTap: () {
            dismissEntry(FluentNotificationResult.clicked);
            onActionTap?.call();
          },
          leadingIcon: leadingIcon,
          enableDismiss: enableDismiss,
          onDismiss: () {
            dismissEntry(FluentNotificationResult.dismissed);
            onDismiss?.call();
          },
          style: style,
          isFloating: true,
        ),
      );

      if (bounds != null) {
        final mediaQuery = MediaQuery.of(context);
        final screenSize = mediaQuery.size;
        final bool isTargetTop = targetPosition == FluentSnackbarPosition.top;

        if (isTargetTop) {
          final double bottomPadding = screenSize.height - bounds.top + 8.0 - offset.dy;
          final double leftPos = (bounds.left + bounds.width / 2 - 160.0 + offset.dx)
              .clamp(16.0, (screenSize.width - 336.0).clamp(16.0, double.infinity));
          return Positioned(
            left: leftPos,
            bottom: bottomPadding,
            width: (screenSize.width - 32.0).clamp(0.0, 320.0),
            child: FluentTheme(
              themeData: fluentTheme,
              child: snackbarContent,
            ),
          );
        } else {
          final double topPadding = bounds.bottom + 8.0 + offset.dy;
          final double leftPos = (bounds.left + bounds.width / 2 - 160.0 + offset.dx)
              .clamp(16.0, (screenSize.width - 336.0).clamp(16.0, double.infinity));
          return Positioned(
            left: leftPos,
            top: topPadding,
            width: (screenSize.width - 32.0).clamp(0.0, 320.0),
            child: FluentTheme(
              themeData: fluentTheme,
              child: snackbarContent,
            ),
          );
        }
      }

      final EdgeInsetsGeometry effMargin = margin ??
          const EdgeInsets.symmetric(
            horizontal: 20.0,
            vertical: 16.0,
          );

      return SafeArea(
        child: Align(
          alignment: alignment,
          child: Transform.translate(
            offset: offset,
            child: Padding(
              padding: effMargin,
              child: FluentTheme(
                themeData: fluentTheme,
                child: snackbarContent,
              ),
            ),
          ),
        ),
      );
    },
  );

  overlayState.insert(entry);
  return controller;
}

/// 标准 Scaffold 系统的 [showFluentSnackbar] 弹出助手
ScaffoldFeatureController<SnackBar, SnackBarClosedReason> showFluentSnackbar({
  required BuildContext context,
  required String message,
  String? title,
  String? subTitle,
  String? actionText,
  VoidCallback? onActionTap,
  Widget? leadingIcon,
  bool enableDismiss = false,
  VoidCallback? onDismiss,
  FluentSnackbarStyle style = FluentSnackbarStyle.neutral,
  Duration duration = const Duration(seconds: 4),
}) {
  final fluentTheme = FluentTheme.of(context);

  final snackBar = SnackBar(
    content: FluentTheme(
      themeData: fluentTheme,
      child: FluentSnackbar(
        message: message,
        title: title,
        subTitle: subTitle,
        actionText: actionText,
        onActionTap: onActionTap != null
            ? () {
                ScaffoldMessenger.of(context).hideCurrentSnackBar();
                onActionTap();
              }
            : null,
        leadingIcon: leadingIcon,
        enableDismiss: enableDismiss,
        onDismiss: () {
          ScaffoldMessenger.of(context).hideCurrentSnackBar();
          onDismiss?.call();
        },
        style: style,
        isFloating: true,
      ),
    ),
    behavior: SnackBarBehavior.floating,
    backgroundColor: Colors.transparent,
    elevation: 0,
    padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
    duration: duration,
  );

  return ScaffoldMessenger.of(context).showSnackBar(snackBar);
}

/// 立即主动关闭/撤销当前展示的 Snackbar [dismissFluentSnackbar]
void dismissFluentSnackbar(BuildContext context) {
  ScaffoldMessenger.of(context).hideCurrentSnackBar();
}
