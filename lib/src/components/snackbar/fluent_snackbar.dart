import 'dart:async';
import 'package:flutter/material.dart';
import '../../theme/control_tokens.dart';
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
enum FluentSnackbarStyle {
  /// 中性风格 (暗灰/黑色背景)
  neutral,

  /// 高对比度风格 (深黑背景)
  contrast,

  /// 品牌蓝强调风格 (#0F6CBD)
  accent,

  /// 品牌蓝别名
  brand,

  /// 成功绿风格 (#107C41)
  success,

  /// 信息蓝风格 (#0078D4)
  info,

  /// 警示橙黄风格 (#D83B01)
  warning,

  /// 危险红风格 (#D13438)
  danger,
}

/// Snackbar Toast 容器高级配置样式 [FluentSnackbarToastStyle]
class FluentSnackbarToastStyle {
  /// 容器外边距
  final EdgeInsetsGeometry? margin;

  /// 是否允许拖拽手势清除 (默认 true)
  final bool enableSwipeToDismiss;

  /// 拖拽方向 (left, right, both)
  final FluentSnackbarSwipeDirection swipeDirection;

  const FluentSnackbarToastStyle({
    this.margin,
    this.enableSwipeToDismiss = true,
    this.swipeDirection = FluentSnackbarSwipeDirection.both,
  });

  static const FluentSnackbarToastStyle defaultStyle =
      FluentSnackbarToastStyle();
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

  /// 风格样式 (neutral, contrast, accent, success, info, warning, danger)
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

  /// 成功样式预设 [FluentSnackbar.success]
  factory FluentSnackbar.success({
    Key? key,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon = const Icon(Icons.check_circle_outline),
    bool enableDismiss = false,
    VoidCallback? onDismiss,
    bool isFloating = true,
    bool enableCursor = true,
  }) {
    return FluentSnackbar(
      key: key,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      enableDismiss: enableDismiss,
      onDismiss: onDismiss,
      style: FluentSnackbarStyle.success,
      isFloating: isFloating,
      enableCursor: enableCursor,
    );
  }

  /// 提示/信息样式预设 [FluentSnackbar.info]
  factory FluentSnackbar.info({
    Key? key,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon = const Icon(Icons.info_outline),
    bool enableDismiss = false,
    VoidCallback? onDismiss,
    bool isFloating = true,
    bool enableCursor = true,
  }) {
    return FluentSnackbar(
      key: key,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      enableDismiss: enableDismiss,
      onDismiss: onDismiss,
      style: FluentSnackbarStyle.info,
      isFloating: isFloating,
      enableCursor: enableCursor,
    );
  }

  /// 警告样式预设 [FluentSnackbar.warning]
  factory FluentSnackbar.warning({
    Key? key,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon = const Icon(Icons.warning_amber_rounded),
    bool enableDismiss = false,
    VoidCallback? onDismiss,
    bool isFloating = true,
    bool enableCursor = true,
  }) {
    return FluentSnackbar(
      key: key,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      enableDismiss: enableDismiss,
      onDismiss: onDismiss,
      style: FluentSnackbarStyle.warning,
      isFloating: isFloating,
      enableCursor: enableCursor,
    );
  }

  /// 危险/错误样式预设 [FluentSnackbar.danger]
  factory FluentSnackbar.danger({
    Key? key,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon = const Icon(Icons.error_outline),
    bool enableDismiss = false,
    VoidCallback? onDismiss,
    bool isFloating = true,
    bool enableCursor = true,
  }) {
    return FluentSnackbar(
      key: key,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      enableDismiss: enableDismiss,
      onDismiss: onDismiss,
      style: FluentSnackbarStyle.danger,
      isFloating: isFloating,
      enableCursor: enableCursor,
    );
  }

  /// 品牌强调样式预设 [FluentSnackbar.accent]
  factory FluentSnackbar.accent({
    Key? key,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon,
    bool enableDismiss = false,
    VoidCallback? onDismiss,
    bool isFloating = true,
    bool enableCursor = true,
  }) {
    return FluentSnackbar(
      key: key,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      enableDismiss: enableDismiss,
      onDismiss: onDismiss,
      style: FluentSnackbarStyle.accent,
      isFloating: isFloating,
      enableCursor: enableCursor,
    );
  }

  /// 高对比度样式预设 [FluentSnackbar.contrast]
  factory FluentSnackbar.contrast({
    Key? key,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon,
    bool enableDismiss = false,
    VoidCallback? onDismiss,
    bool isFloating = true,
    bool enableCursor = true,
  }) {
    return FluentSnackbar(
      key: key,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      enableDismiss: enableDismiss,
      onDismiss: onDismiss,
      style: FluentSnackbarStyle.contrast,
      isFloating: isFloating,
      enableCursor: enableCursor,
    );
  }

  /// 中性暗色样式预设 [FluentSnackbar.neutral]
  factory FluentSnackbar.neutral({
    Key? key,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon,
    bool enableDismiss = false,
    VoidCallback? onDismiss,
    bool isFloating = true,
    bool enableCursor = true,
  }) {
    return FluentSnackbar(
      key: key,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      enableDismiss: enableDismiss,
      onDismiss: onDismiss,
      style: FluentSnackbarStyle.neutral,
      isFloating: isFloating,
      enableCursor: enableCursor,
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final tokens = SnackbarTokens(theme);

    final Color backgroundColor = tokens.backgroundColor(style);
    final Color textColor = tokens.textColor(style);
    final Color secondaryTextColor = tokens.secondaryTextColor(style);
    final Color actionTextColor = tokens.actionTextColor(style);

    final bool hasTitle = title != null && title!.isNotEmpty;
    final bool hasSubTitle = subTitle != null && subTitle!.isNotEmpty;

    return FluentMaterial(
      color: backgroundColor,
      elevation: isFloating ? tokens.elevation : 0,
      borderRadius: BorderRadius.circular(isFloating ? tokens.cornerRadius : 0),
      child: Container(
        constraints: const BoxConstraints(minHeight: 52.0),
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(
            isFloating ? tokens.cornerRadius : 0,
          ),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            // 前置 Icon
            if (leadingIcon != null) ...[
              IconTheme(
                data: IconThemeData(color: textColor, size: 20.0),
                child: leadingIcon!,
              ),
              const SizedBox(width: 12.0),
            ],

            // 消息/标题/副标题
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

            // 右侧 Action 按钮
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

            // 右侧 X 关闭按钮
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

/// Snackbar 手势滑动清除允许的方向 [FluentSnackbarSwipeDirection]
enum FluentSnackbarSwipeDirection {
  /// 仅允许向左滑动清除
  left,

  /// 仅允许向右滑动清除
  right,

  /// 允许向左或向右双向滑动清除
  both,
}

/// 对应 Android Kotlin `V2SnackbarActivity.kt` 与 `NotificationCommon.kt` 的 `swipeToDismiss` 与 `AnimationBehavior`
///
/// 入场 (onShowAnimation): pop from bottom/top (500ms, LinearOutSlowInEasing, offsetY: 50dp -> 0dp)
/// 普通退场 (onDismissAnimation): fade out (150ms, Linear, opacity: 1.0 -> 0.0)
/// 拖拽退场 (swipeToDismiss): 手势划动过阈值触发侧向滑出 slide out (500ms, FastOutSlowInEasing)
class AnimatedFluentSnackbar extends StatefulWidget {
  final FluentSnackbar child;
  final ValueChanged<FluentNotificationResult>? onResult;
  final FluentSnackbarDuration duration;
  final bool enableSwipeToDismiss;
  final FluentSnackbarSwipeDirection swipeDirection;

  /// 是否为 Stackable 堆叠模式 (Stackable 模式下退场统一为 Slide Out 向左/右划出)
  final bool isStackable;

  /// 入场/退场滑出的基准方向：若为 true 则从上方滑入，否则从下方滑入
  final bool slideFromTop;

  const AnimatedFluentSnackbar({
    super.key,
    required this.child,
    this.onResult,
    this.duration = FluentSnackbarDuration.short,
    this.enableSwipeToDismiss = true,
    this.swipeDirection = FluentSnackbarSwipeDirection.both,
    this.isStackable = false,
    this.slideFromTop = false,
  });

  @override
  State<AnimatedFluentSnackbar> createState() => AnimatedFluentSnackbarState();
}

class AnimatedFluentSnackbarState extends State<AnimatedFluentSnackbar>
    with TickerProviderStateMixin {
  /// 入场 500ms pop 动画控制器 (对标 LinearOutSlowInEasing)
  late AnimationController _showController;
  late Animation<double> _showOffsetYAnimation;

  /// 普通 Fade 退场 150ms 动画控制器 (对标 NotificationCommon.kt fade out)
  late AnimationController _fadeController;
  late Animation<double> _fadeOpacityAnimation;

  /// 手势 Swipe 退场 500ms slide out 动画控制器 (对标 FastOutSlowInEasing)
  late AnimationController _swipeDismissController;
  late Animation<double> _swipeDismissOffsetXAnimation;

  /// 拖拽松手复位 300ms 动画控制器 (对标 tween(300))
  late AnimationController _resetController;
  Animation<double>? _resetAnimation;

  double _dragOffsetX = 0.0;
  bool _isDismissing = false;
  Timer? _timer;

  @override
  void initState() {
    super.initState();

    // 1. 入场动画：500ms, LinearOutSlowInEasing (Cubic(0.0, 0.0, 0.2, 1.0))
    _showController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    final double startY = widget.slideFromTop ? -50.0 : 50.0;
    _showOffsetYAnimation = Tween<double>(begin: startY, end: 0.0).animate(
      CurvedAnimation(
        parent: _showController,
        curve: const Cubic(0.0, 0.0, 0.2, 1.0),
      ),
    );

    // 2. 普通退场 Fade 渐隐动画：150ms, Linear (对标 NotificationCommon.kt onDismissAnimation)
    _fadeController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 150),
      value: 1.0,
    );
    _fadeOpacityAnimation = CurvedAnimation(
      parent: _fadeController,
      curve: Curves.linear,
    );

    // 3. 手势/Stackable Swipe 离场动画：500ms, FastOutSlowInEasing
    _swipeDismissController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 500),
    );

    _swipeDismissOffsetXAnimation = Tween<double>(begin: 0.0, end: -2000.0)
        .animate(
          CurvedAnimation(
            parent: _swipeDismissController,
            curve: Curves.fastOutSlowIn,
          ),
        );

    // 4. 拖拽松手复位动画：300ms, tween(300)
    _resetController =
        AnimationController(
          vsync: this,
          duration: const Duration(milliseconds: 300),
        )..addListener(() {
          if (_resetAnimation != null) {
            setState(() {
              _dragOffsetX = _resetAnimation!.value;
            });
          }
        });

    _showController.forward();
    _scheduleAutoDismiss();
  }

  void _scheduleAutoDismiss() {
    if (widget.duration == FluentSnackbarDuration.indefinite) return;
    final ms = widget.duration == FluentSnackbarDuration.short ? 4000 : 10000;
    _timer = Timer(Duration(milliseconds: ms), () {
      if (mounted) dismiss(FluentNotificationResult.timeout);
    });
  }

  /// 公开的主动关闭与退场入口
  Future<void> dismiss([
    FluentNotificationResult result = FluentNotificationResult.dismissed,
  ]) async {
    _timer?.cancel();
    if (_isDismissing) return;

    if (widget.isStackable) {
      // 只要是 Stackable 堆叠模式，无论是点击按钮、点击关闭、超时还是手势，统一使用 Slide Out 向左划出屏外动画
      final double screenWidth = mounted
          ? MediaQuery.of(context).size.width
          : 500.0;
      await _dismissSwiped(result, targetOffsetX: -screenWidth * 1.5);
    } else {
      // 普通 Toast 模式：点击按钮/超时播放 150ms Fade 淡出
      await _dismissNormal(result);
    }
  }

  /// 普通退场 (Fade 淡出 150ms)
  Future<void> _dismissNormal(FluentNotificationResult result) async {
    _timer?.cancel();
    if (_isDismissing) return;
    _isDismissing = true;

    await _fadeController.reverse();

    if (mounted) {
      widget.onResult?.call(result);
    }
  }

  /// 手势 Swipe 侧滑退场 (Slide Out 500ms)
  Future<void> _dismissSwiped(
    FluentNotificationResult result, {
    required double targetOffsetX,
  }) async {
    _timer?.cancel();
    if (_isDismissing) return;
    _isDismissing = true;

    _swipeDismissOffsetXAnimation =
        Tween<double>(begin: _dragOffsetX, end: targetOffsetX).animate(
          CurvedAnimation(
            parent: _swipeDismissController,
            curve: Curves.fastOutSlowIn,
          ),
        );

    await _swipeDismissController.forward(from: 0.0);

    if (mounted) {
      widget.onResult?.call(result);
    }
  }

  void _onHorizontalDragUpdate(DragUpdateDetails details) {
    if (!widget.enableSwipeToDismiss || _isDismissing) return;
    final double delta = details.delta.dx;

    // 根据 swipeDirection 限制拖拽方向
    if (widget.swipeDirection == FluentSnackbarSwipeDirection.left &&
        (_dragOffsetX + delta) > 0) {
      return;
    }
    if (widget.swipeDirection == FluentSnackbarSwipeDirection.right &&
        (_dragOffsetX + delta) < 0) {
      return;
    }

    _resetController.stop();
    setState(() {
      _dragOffsetX += delta;
    });
  }

  void _onHorizontalDragEnd(DragEndDetails details) {
    if (!widget.enableSwipeToDismiss || _isDismissing) return;
    final double velocity = details.velocity.pixelsPerSecond.dx;
    final double screenWidth = MediaQuery.of(context).size.width;
    final double dismissThreshold = screenWidth * 0.33;

    final bool isLeftDismiss =
        (widget.swipeDirection == FluentSnackbarSwipeDirection.left ||
            widget.swipeDirection == FluentSnackbarSwipeDirection.both) &&
        (_dragOffsetX < -dismissThreshold || velocity < -400.0);

    final bool isRightDismiss =
        (widget.swipeDirection == FluentSnackbarSwipeDirection.right ||
            widget.swipeDirection == FluentSnackbarSwipeDirection.both) &&
        (_dragOffsetX > dismissThreshold || velocity > 400.0);

    if (isLeftDismiss) {
      _dismissSwiped(
        FluentNotificationResult.dismissed,
        targetOffsetX: -screenWidth * 1.5,
      );
    } else if (isRightDismiss) {
      _dismissSwiped(
        FluentNotificationResult.dismissed,
        targetOffsetX: screenWidth * 1.5,
      );
    } else {
      // 未达到滑出阈值，300ms 弹回 0 (对标 Kotlin tween(300))
      _resetAnimation = Tween<double>(begin: _dragOffsetX, end: 0.0).animate(
        CurvedAnimation(parent: _resetController, curve: Curves.easeOut),
      );
      _resetController.forward(from: 0.0);
    }
  }

  @override
  void dispose() {
    _timer?.cancel();
    _showController.dispose();
    _fadeController.dispose();
    _swipeDismissController.dispose();
    _resetController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onHorizontalDragUpdate: _onHorizontalDragUpdate,
      onHorizontalDragEnd: _onHorizontalDragEnd,
      child: AnimatedBuilder(
        animation: Listenable.merge([
          _showOffsetYAnimation,
          _fadeOpacityAnimation,
          _swipeDismissOffsetXAnimation,
        ]),
        builder: (context, child) {
          final double totalX =
              _swipeDismissController.isAnimating || _isDismissing
              ? _swipeDismissOffsetXAnimation.value
              : _dragOffsetX;
          final double totalY = _showOffsetYAnimation.value;

          return Transform.translate(
            offset: Offset(totalX, totalY),
            child: Opacity(
              opacity: _fadeOpacityAnimation.value,
              child: widget.child,
            ),
          );
        },
      ),
    );
  }
}

/// 极简 Toast 面向对象静态门面助手 [FluentSnackbarToast]
class FluentSnackbarToast {
  FluentSnackbarToast._();

  /// 弹出通用 Toast
  static FluentSnackbarController show({
    required BuildContext context,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    ValueChanged<FluentNotificationResult>? onResult,
    VoidCallback? onActionTap,
    Widget? leadingIcon,
    FluentSnackbarDuration duration = FluentSnackbarDuration.short,
    FluentSnackbarToastStyle? style,
  }) {
    return showFluentSnackbarToast(
      context: context,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onResult: onResult,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      duration: duration,
      toastStyle: style,
    );
  }

  /// 弹出成功绿 Toast
  static FluentSnackbarController success({
    required BuildContext context,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon = const Icon(Icons.check_circle_outline),
    FluentSnackbarDuration duration = FluentSnackbarDuration.short,
    Offset offset = Offset.zero,
    FluentSnackbarToastStyle? toastStyle,
  }) {
    return showFluentSnackbarToast(
      context: context,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      style: FluentSnackbarStyle.success,
      duration: duration,
      offset: offset,
      toastStyle: toastStyle,
    );
  }

  /// 弹出提示蓝 Toast
  static FluentSnackbarController info({
    required BuildContext context,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon = const Icon(Icons.info_outline),
    FluentSnackbarDuration duration = FluentSnackbarDuration.short,
    Offset offset = Offset.zero,
    FluentSnackbarToastStyle? toastStyle,
  }) {
    return showFluentSnackbarToast(
      context: context,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      style: FluentSnackbarStyle.info,
      duration: duration,
      offset: offset,
      toastStyle: toastStyle,
    );
  }

  /// 弹出警告橙 Toast
  static FluentSnackbarController warning({
    required BuildContext context,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon = const Icon(Icons.warning_amber_rounded),
    FluentSnackbarDuration duration = FluentSnackbarDuration.short,
    Offset offset = Offset.zero,
    FluentSnackbarToastStyle? toastStyle,
  }) {
    return showFluentSnackbarToast(
      context: context,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      style: FluentSnackbarStyle.warning,
      duration: duration,
      offset: offset,
      toastStyle: toastStyle,
    );
  }

  /// 弹出危险红 Toast
  static FluentSnackbarController danger({
    required BuildContext context,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon = const Icon(Icons.error_outline),
    FluentSnackbarDuration duration = FluentSnackbarDuration.short,
    Offset offset = Offset.zero,
    FluentSnackbarToastStyle? toastStyle,
  }) {
    return showFluentSnackbarToast(
      context: context,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      style: FluentSnackbarStyle.danger,
      duration: duration,
      offset: offset,
      toastStyle: toastStyle,
    );
  }

  /// 弹出堆叠 Toast
  static FluentSnackbarController stackable({
    required BuildContext context,
    required String message,
    String? title,
    String? subTitle,
    String? actionText,
    VoidCallback? onActionTap,
    Widget? leadingIcon,
    FluentSnackbarStyle style = FluentSnackbarStyle.neutral,
    FluentSnackbarDuration duration = FluentSnackbarDuration.short,
    Offset offset = Offset.zero,
    FluentSnackbarToastStyle? toastStyle,
  }) {
    return showFluentSnackbarToast(
      context: context,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      style: style,
      duration: duration,
      offset: offset,
      isStackable: true,
      toastStyle: toastStyle,
    );
  }
}

/// 显示 Overlay 浮动 Toast 消息 [showFluentSnackbarToast]
/// 符合 Flutter 规范的标准全局弹出函数。支持直接传入 [FluentSnackbarToastStyle] 样式对象，
/// 也支持指定具体的对齐、偏移与变体风格。
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
  VoidCallback? onDismiss,
  FluentSnackbarStyle style = FluentSnackbarStyle.neutral,
  FluentSnackbarDuration duration = FluentSnackbarDuration.short,
  Alignment alignment = Alignment.bottomCenter,
  Offset offset = Offset.zero,
  GlobalKey? targetKey,
  BuildContext? targetContext,
  Rect? targetRect,
  FluentSnackbarPosition targetPosition = FluentSnackbarPosition.bottom,
  bool isStackable = false,
  FluentSnackbarToastStyle? toastStyle,
}) {
  final effMargin = toastStyle?.margin;
  final effEnableSwipeToDismiss = toastStyle?.enableSwipeToDismiss ?? true;
  final effSwipeDirection =
      toastStyle?.swipeDirection ?? FluentSnackbarSwipeDirection.both;

  if (isStackable) {
    return showFluentStackableSnackbarToast(
      context: context,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onResult: onResult,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      enableDismiss: enableDismiss,
      enableSwipeToDismiss: effEnableSwipeToDismiss,
      swipeDirection: effSwipeDirection,
      onDismiss: onDismiss,
      style: style,
      duration: duration,
      alignment: alignment,
      offset: offset,
      margin: effMargin,
    );
  }

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
  final snackbarKey = GlobalKey<AnimatedFluentSnackbarState>();

  void removeOverlayImmediately(FluentNotificationResult result) {
    if (!isDismissed) {
      isDismissed = true;
      try {
        entry.remove();
      } catch (_) {}
      onResult?.call(result);
    }
  }

  void requestAnimatedDismiss(FluentNotificationResult result) {
    if (snackbarKey.currentState != null) {
      snackbarKey.currentState!.dismiss(result);
    } else {
      removeOverlayImmediately(result);
    }
  }

  final controller = FluentSnackbarController(() {
    requestAnimatedDismiss(FluentNotificationResult.dismissed);
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
        key: snackbarKey,
        duration: duration,
        enableSwipeToDismiss: effEnableSwipeToDismiss,
        swipeDirection: effSwipeDirection,
        slideFromTop: slideFromTop,
        onResult: (result) {
          removeOverlayImmediately(result);
        },
        child: FluentSnackbar(
          message: message,
          title: title,
          subTitle: subTitle,
          actionText: actionText,
          onActionTap: () {
            onActionTap?.call();
            requestAnimatedDismiss(FluentNotificationResult.clicked);
          },
          leadingIcon: leadingIcon,
          enableDismiss: enableDismiss,
          onDismiss: () {
            onDismiss?.call();
            requestAnimatedDismiss(FluentNotificationResult.dismissed);
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
          final double bottomPadding =
              screenSize.height - bounds.top + 8.0 - offset.dy;
          final double leftPos =
              (bounds.left + bounds.width / 2 - 160.0 + offset.dx).clamp(
                16.0,
                (screenSize.width - 336.0).clamp(16.0, double.infinity),
              );
          return Positioned(
            left: leftPos,
            bottom: bottomPadding,
            width: (screenSize.width - 32.0).clamp(0.0, 320.0),
            child: FluentTheme(themeData: fluentTheme, child: snackbarContent),
          );
        } else {
          final double topPadding = bounds.bottom + 8.0 + offset.dy;
          final double leftPos =
              (bounds.left + bounds.width / 2 - 160.0 + offset.dx).clamp(
                16.0,
                (screenSize.width - 336.0).clamp(16.0, double.infinity),
              );
          return Positioned(
            left: leftPos,
            top: topPadding,
            width: (screenSize.width - 32.0).clamp(0.0, 320.0),
            child: FluentTheme(themeData: fluentTheme, child: snackbarContent),
          );
        }
      }

      final EdgeInsetsGeometry effMarginValue =
          effMargin ??
          const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0);

      return SafeArea(
        child: Align(
          alignment: alignment,
          child: Transform.translate(
            offset: offset,
            child: Padding(
              padding: effMarginValue,
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

/// Fluent 2 堆叠消息提示组件 [FluentStackableSnackbar]
///
/// 完全映射自 Android Kotlin `StackableSnackbar.kt` (SnackBarStack & SnackBarStackState)
/// 支持在 Collapsed 状态下重叠 Stack Peek 显示，以及点击展开 Expanded 列表展示。
class FluentStackableSnackbar extends StatefulWidget {
  /// Snackbar 列表内容
  final List<Widget> children;

  /// 是否默认展开 (true: Expanded 展开模式, false: Collapsed 折叠堆叠模式)
  final bool isExpanded;

  /// 展开状态切换回调
  final ValueChanged<bool>? onExpandedChanged;

  /// 折叠状态下最多显示的层叠数量 (默认 5)
  final int maxCollapsedCount;

  /// 卡片间距 (展开模式下)
  final double spacing;

  const FluentStackableSnackbar({
    super.key,
    required this.children,
    this.isExpanded = false,
    this.onExpandedChanged,
    this.maxCollapsedCount = 5,
    this.spacing = 8.0,
  });

  /// 方便调用的关联方法 [FluentSnackbar.stackable]
  static Widget stackable({
    Key? key,
    required List<Widget> children,
    bool isExpanded = false,
    ValueChanged<bool>? onExpandedChanged,
    int maxCollapsedCount = 5,
    double spacing = 8.0,
  }) {
    return FluentStackableSnackbar(
      key: key,
      isExpanded: isExpanded,
      onExpandedChanged: onExpandedChanged,
      maxCollapsedCount: maxCollapsedCount,
      spacing: spacing,
      children: children,
    );
  }

  @override
  State<FluentStackableSnackbar> createState() =>
      _FluentStackableSnackbarState();
}

class _FluentStackableSnackbarState extends State<FluentStackableSnackbar> {
  late bool _expanded;

  @override
  void initState() {
    super.initState();
    _expanded = widget.isExpanded;
  }

  @override
  void didUpdateWidget(covariant FluentStackableSnackbar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isExpanded != widget.isExpanded) {
      _expanded = widget.isExpanded;
    }
  }

  void _toggleExpanded() {
    setState(() {
      _expanded = !_expanded;
    });
    widget.onExpandedChanged?.call(_expanded);
  }

  @override
  Widget build(BuildContext context) {
    if (widget.children.isEmpty) return const SizedBox.shrink();

    // 根据 _expanded 条件单向渲染，避免 AnimatedCrossFade 在后台双重 build 导致 GlobalKey 重复挂载冲突
    if (_expanded) {
      // Expanded 模式：纵向展开卡片列表 (对标 Kotlin SnackBarStack Expanded)
      return GestureDetector(
        onTap: _toggleExpanded,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: widget.children.map((child) {
            return Padding(
              padding: EdgeInsets.only(bottom: widget.spacing),
              child: child,
            );
          }).toList(),
        ),
      );
    } else {
      // Collapsed 模式：卡片层叠 Peek 呈现 (对标 Kotlin SnackBarStack Collapsed)
      return GestureDetector(
        onTap: _toggleExpanded,
        child: _buildCollapsedStack(),
      );
    }
  }

  Widget _buildCollapsedStack() {
    final int count = widget.children.length.clamp(0, widget.maxCollapsedCount);
    final List<Widget> visibleChildren = widget.children.take(count).toList();

    return Stack(
      alignment: Alignment.bottomCenter,
      children: List.generate(visibleChildren.length, (index) {
        // 反向层叠，最前端/最新放置在最顶层
        final int reverseIndex = visibleChildren.length - 1 - index;
        final double targetScale = (1.0 - (reverseIndex * 0.05)).clamp(
          0.8,
          1.0,
        );
        final double targetOffsetY = -reverseIndex * 8.0;
        final Widget childWidget = visibleChildren[index];

        return TweenAnimationBuilder<double>(
          key: ValueKey('offset_${childWidget.key}'),
          tween: Tween<double>(end: targetOffsetY),
          duration: const Duration(milliseconds: 250),
          curve: Curves.fastOutSlowIn,
          builder: (context, offsetY, child) {
            return Transform.translate(
              offset: Offset(0, offsetY),
              child: TweenAnimationBuilder<double>(
                key: ValueKey('scale_${childWidget.key}'),
                tween: Tween<double>(end: targetScale),
                duration: const Duration(milliseconds: 250),
                curve: Curves.fastOutSlowIn,
                builder: (context, scale, child) {
                  return Transform.scale(scale: scale, child: child);
                },
                child: child,
              ),
            );
          },
          child: childWidget,
        );
      }),
    );
  }
}

/// 弹出可堆叠的多条 Toast [showFluentStackableSnackbarToast]
///
/// 连续调用时会自动在 Overlay 层使用 [FluentStackableSnackbar] 堆叠显示多条 Toast
FluentSnackbarController showFluentStackableSnackbarToast({
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
  FluentSnackbarSwipeDirection swipeDirection =
      FluentSnackbarSwipeDirection.both,
  VoidCallback? onDismiss,
  FluentSnackbarStyle style = FluentSnackbarStyle.neutral,
  FluentSnackbarDuration duration = FluentSnackbarDuration.short,
  Alignment alignment = Alignment.bottomCenter,
  Offset offset = Offset.zero,
  EdgeInsetsGeometry? margin,
}) {
  return _FluentStackableToastManager.instance.addToast(
    context: context,
    message: message,
    title: title,
    subTitle: subTitle,
    actionText: actionText,
    onResult: onResult,
    onActionTap: onActionTap,
    leadingIcon: leadingIcon,
    enableDismiss: enableDismiss,
    enableSwipeToDismiss: enableSwipeToDismiss,
    swipeDirection: swipeDirection,
    onDismiss: onDismiss,
    style: style,
    duration: duration,
    alignment: alignment,
    offset: offset,
    margin: margin,
  );
}

class _StackableToastItem {
  final String id;
  final GlobalKey<AnimatedFluentSnackbarState> key;
  final String message;
  final String? title;
  final String? subTitle;
  final String? actionText;
  final VoidCallback? onActionTap;
  final Widget? leadingIcon;
  final bool enableDismiss;
  final VoidCallback? onDismiss;
  final FluentSnackbarStyle style;
  final FluentSnackbarDuration duration;
  final ValueChanged<FluentNotificationResult>? onResult;

  _StackableToastItem({
    required this.id,
    required this.key,
    required this.message,
    this.title,
    this.subTitle,
    this.actionText,
    this.onActionTap,
    this.leadingIcon,
    this.enableDismiss = false,
    this.onDismiss,
    this.style = FluentSnackbarStyle.neutral,
    this.duration = FluentSnackbarDuration.short,
    this.onResult,
  });
}

class _FluentStackableToastManager {
  static final _FluentStackableToastManager instance =
      _FluentStackableToastManager._();
  _FluentStackableToastManager._();

  OverlayEntry? _overlayEntry;
  final List<_StackableToastItem> _items = [];
  final Map<String, Timer> _timers = {};
  StateSetter? _rebuildOverlay;

  FluentSnackbarController addToast({
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
    FluentSnackbarSwipeDirection swipeDirection =
        FluentSnackbarSwipeDirection.both,
    VoidCallback? onDismiss,
    FluentSnackbarStyle style = FluentSnackbarStyle.neutral,
    FluentSnackbarDuration duration = FluentSnackbarDuration.short,
    Alignment alignment = Alignment.bottomCenter,
    Offset offset = Offset.zero,
    EdgeInsetsGeometry? margin,
  }) {
    final overlayState =
        Overlay.maybeOf(context, rootOverlay: true) ??
        Navigator.maybeOf(context, rootNavigator: true)?.overlay;

    if (overlayState == null) {
      assert(
        false,
        'showFluentStackableSnackbarToast 需要在 MaterialApp 之下的 context 中调用',
      );
      return FluentSnackbarController(() {});
    }

    final id = DateTime.now().microsecondsSinceEpoch.toString();
    final itemKey = GlobalKey<AnimatedFluentSnackbarState>();
    final item = _StackableToastItem(
      id: id,
      key: itemKey,
      message: message,
      title: title,
      subTitle: subTitle,
      actionText: actionText,
      onActionTap: onActionTap,
      leadingIcon: leadingIcon,
      enableDismiss: enableDismiss,
      onDismiss: onDismiss,
      style: style,
      duration: duration,
      onResult: onResult,
    );

    _items.add(item);

    // 维持计时器，到期触发 Slide Out 退场动画
    if (duration != FluentSnackbarDuration.indefinite) {
      final ms = duration == FluentSnackbarDuration.short ? 4000 : 10000;
      _timers[id] = Timer(Duration(milliseconds: ms), () {
        item.key.currentState?.dismiss(FluentNotificationResult.timeout);
      });
    }

    if (_overlayEntry == null) {
      _overlayEntry = OverlayEntry(
        builder: (context) {
          final fluentTheme = FluentTheme.of(context);
          final EdgeInsetsGeometry effMargin =
              margin ??
              const EdgeInsets.symmetric(horizontal: 20.0, vertical: 16.0);

          return StatefulBuilder(
            builder: (context, setState) {
              _rebuildOverlay = setState;

              if (_items.isEmpty) {
                return const SizedBox.shrink();
              }

              final children = _items.map((it) {
                return KeyedSubtree(
                  key: ValueKey(it.id),
                  child: AnimatedFluentSnackbar(
                    key: it.key,
                    isStackable: true,
                    duration: FluentSnackbarDuration.indefinite, // 屏蔽内部二次 Timer
                    enableSwipeToDismiss: enableSwipeToDismiss,
                    swipeDirection: swipeDirection,
                    onResult: (res) {
                      _removeItemImmediately(it.id, result: res);
                    },
                    child: FluentSnackbar(
                      message: it.message,
                      title: it.title,
                      subTitle: it.subTitle,
                      actionText: it.actionText,
                      onActionTap: () {
                        it.onActionTap?.call();
                        it.key.currentState?.dismiss(
                          FluentNotificationResult.clicked,
                        );
                      },
                      leadingIcon: it.leadingIcon,
                      enableDismiss: it.enableDismiss,
                      onDismiss: () {
                        it.onDismiss?.call();
                        it.key.currentState?.dismiss(
                          FluentNotificationResult.dismissed,
                        );
                      },
                      style: it.style,
                      isFloating: true,
                    ),
                  ),
                );
              }).toList();

              return SafeArea(
                child: Align(
                  alignment: alignment,
                  child: Transform.translate(
                    offset: offset,
                    child: Padding(
                      padding: effMargin,
                      child: FluentTheme(
                        themeData: fluentTheme,
                        child: FluentStackableSnackbar.stackable(
                          children: children,
                        ),
                      ),
                    ),
                  ),
                ),
              );
            },
          );
        },
      );

      overlayState.insert(_overlayEntry!);
    } else {
      _rebuildOverlay?.call(() {});
    }

    return FluentSnackbarController(() {
      item.key.currentState?.dismiss(FluentNotificationResult.dismissed);
    });
  }

  void removeToast(String id, {FluentNotificationResult? result}) {
    final index = _items.indexWhere((it) => it.id == id);
    if (index != -1) {
      _items[index].key.currentState?.dismiss(
        result ?? FluentNotificationResult.dismissed,
      );
    }
  }

  void _removeItemImmediately(String id, {FluentNotificationResult? result}) {
    _timers[id]?.cancel();
    _timers.remove(id);

    final index = _items.indexWhere((it) => it.id == id);
    if (index != -1) {
      final item = _items.removeAt(index);
      if (result != null) {
        item.onResult?.call(result);
      }
    }

    if (_items.isEmpty) {
      _overlayEntry?.remove();
      _overlayEntry = null;
      _rebuildOverlay = null;
    } else {
      _rebuildOverlay?.call(() {});
    }
  }
}
