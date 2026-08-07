import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_motion_tokens.dart';
import '../../theme/fluent_theme.dart';

/// 按钮款式风格 [FluentButtonStyle]
enum FluentButtonStyle {
  /// 品牌主色实心按钮 (Primary Blue)
  primary,

  /// 次要/描边按钮 (Outlined)
  secondary,

  /// 无边框/纯文本按钮 (Borderless)
  borderless,

  /// 危险/警示按钮 (Danger Red)
  danger,
}

/// 按钮尺寸大小 [FluentButtonSize]
enum FluentButtonSize {
  /// 小号 (32dp)
  small,

  /// 中号 (40dp - 标准尺寸)
  medium,

  /// 大号 (48dp)
  large,
}

/// Fluent 2 按钮组件 [FluentButton]
///
/// 移植自 Android Kotlin Button.kt，支持 Fluent 2 Motion 按压缩放与色彩平滑过渡动画
class FluentButton extends StatefulWidget {
  /// 按钮文本
  final String text;

  /// 图标 (可选，置于文本左侧)
  final Widget? icon;

  /// 点击回调 (为 null 时呈现 Disabled 禁用状态)
  final VoidCallback? onPressed;

  /// 按钮款式
  final FluentButtonStyle style;

  /// 按钮尺寸
  final FluentButtonSize size;

  /// 是否填充父容器宽度 (Full Width)
  final bool isFullWidth;

  /// 是否改变光标
  final bool enableCursor;

  /// 是否开启按压与过渡动画 (默认 true)
  final bool enableAnimation;

  /// 动画过渡时长 (默认 FluentMotionDuration.fast 150ms)
  final Duration animationDuration;

  /// 动画缓动曲线 (默认 FluentMotionCurve.standard)
  final Curve animationCurve;

  /// 按压时的微小缩放比例 (默认 0.97)
  final double pressScale;

  const FluentButton({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
    this.style = FluentButtonStyle.primary,
    this.size = FluentButtonSize.medium,
    this.isFullWidth = false,
    this.enableCursor = true,
    this.enableAnimation = true,
    this.animationDuration = FluentMotionDuration.fast,
    this.animationCurve = FluentMotionCurve.standard,
    this.pressScale = 0.97,
  });

  /// 品牌主色实心按钮便利构造器
  const FluentButton.primary({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
    this.size = FluentButtonSize.medium,
    this.isFullWidth = false,
    this.enableCursor = true,
    this.enableAnimation = true,
    this.animationDuration = FluentMotionDuration.fast,
    this.animationCurve = FluentMotionCurve.standard,
    this.pressScale = 0.97,
  }) : style = FluentButtonStyle.primary;

  /// 危险/红色警示按钮便利构造器
  const FluentButton.danger({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
    this.size = FluentButtonSize.medium,
    this.isFullWidth = false,
    this.enableCursor = true,
    this.enableAnimation = true,
    this.animationDuration = FluentMotionDuration.fast,
    this.animationCurve = FluentMotionCurve.standard,
    this.pressScale = 0.97,
  }) : style = FluentButtonStyle.danger;

  /// 描边/次要按钮便利构造器
  const FluentButton.secondary({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
    this.size = FluentButtonSize.medium,
    this.isFullWidth = false,
    this.enableCursor = true,
    this.enableAnimation = true,
    this.animationDuration = FluentMotionDuration.fast,
    this.animationCurve = FluentMotionCurve.standard,
    this.pressScale = 0.97,
  }) : style = FluentButtonStyle.secondary;

  /// 无边框/文本按钮便利构造器
  const FluentButton.borderless({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
    this.size = FluentButtonSize.medium,
    this.isFullWidth = false,
    this.enableCursor = true,
    this.enableAnimation = true,
    this.animationDuration = FluentMotionDuration.fast,
    this.animationCurve = FluentMotionCurve.standard,
    this.pressScale = 0.97,
  }) : style = FluentButtonStyle.borderless;

  @override
  State<FluentButton> createState() => _FluentButtonState();
}

class _FluentButtonState extends State<FluentButton> {
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isEnabled = widget.onPressed != null;

    // 尺寸高度与 padding 计算
    double height = 40.0;
    double fontSize = 14.0;
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 16.0);

    switch (widget.size) {
      case FluentButtonSize.small:
        height = 32.0;
        fontSize = 13.0;
        padding = const EdgeInsets.symmetric(horizontal: 12.0);
        break;
      case FluentButtonSize.medium:
        height = 40.0;
        fontSize = 14.0;
        padding = const EdgeInsets.symmetric(horizontal: 16.0);
        break;
      case FluentButtonSize.large:
        height = 48.0;
        fontSize = 16.0;
        padding = const EdgeInsets.symmetric(horizontal: 20.0);
        break;
    }

    // 颜色与背景计算
    Color backgroundColor;
    Color foregroundColor;
    BorderSide borderSide = BorderSide.none;

    switch (widget.style) {
      case FluentButtonStyle.primary:
        backgroundColor = isEnabled ? theme.primaryColor : theme.dividerColor;
        foregroundColor = isEnabled
            ? Colors.white
            : theme.foregroundSecondaryColor;
        break;
      case FluentButtonStyle.secondary:
        backgroundColor = isEnabled
            ? theme.backgroundColor
            : theme.backgroundColor.withAlpha(128);
        foregroundColor = isEnabled
            ? theme.primaryColor
            : theme.foregroundSecondaryColor;
        borderSide = BorderSide(
          color: isEnabled ? theme.primaryColor : theme.dividerColor,
          width: 1.0,
        );
        break;
      case FluentButtonStyle.borderless:
        backgroundColor = Colors.transparent;
        foregroundColor = isEnabled
            ? theme.primaryColor
            : theme.foregroundSecondaryColor;
        break;
      case FluentButtonStyle.danger:
        backgroundColor = isEnabled
            ? FluentGlobalTokens.sharedRed
            : theme.dividerColor;
        foregroundColor = isEnabled
            ? Colors.white
            : theme.foregroundSecondaryColor;
        break;
    }

    Widget content = Row(
      mainAxisSize: widget.isFullWidth ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (widget.icon != null) ...[
          IconTheme(
            data: IconThemeData(color: foregroundColor, size: fontSize + 4.0),
            child: widget.icon!,
          ),
          const SizedBox(width: 8.0),
        ],
        Text(
          widget.text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            color: foregroundColor,
          ),
        ),
      ],
    );

    final double currentScale = (widget.enableAnimation && _isPressed)
        ? widget.pressScale
        : 1.0;

    return AnimatedScale(
      scale: currentScale,
      duration: widget.animationDuration,
      curve: widget.animationCurve,
      child: SizedBox(
        height: height,
        width: widget.isFullWidth ? double.infinity : null,
        child: AnimatedContainer(
          duration: widget.enableAnimation
              ? widget.animationDuration
              : Duration.zero,
          curve: widget.animationCurve,
          decoration: BoxDecoration(
            color: backgroundColor,
            borderRadius: BorderRadius.circular(
              FluentGlobalTokens.cornerRadius80,
            ),
            border: borderSide != BorderSide.none
                ? Border.fromBorderSide(borderSide)
                : null,
          ),
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: widget.onPressed,
              onHighlightChanged: (highlighted) {
                if (widget.enableAnimation && isEnabled) {
                  setState(() {
                    _isPressed = highlighted;
                  });
                }
              },
              mouseCursor: (widget.enableCursor && isEnabled)
                  ? SystemMouseCursors.click
                  : SystemMouseCursors.basic,
              borderRadius: BorderRadius.circular(
                FluentGlobalTokens.cornerRadius80,
              ),
              highlightColor: Colors.black.withAlpha(15),
              splashColor: Colors.black.withAlpha(25),
              child: Container(
                padding: padding,
                alignment: Alignment.center,
                child: content,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
