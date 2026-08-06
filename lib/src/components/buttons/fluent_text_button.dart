import 'package:flutter/material.dart';
import '../../theme/fluent_motion_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 包含悬浮高亮、波纹 (Ripple) 与按压缩放反馈的文本按钮 [FluentTextButton]
class FluentTextButton extends StatefulWidget {
  /// 按钮显示文本
  final String? text;

  /// 按钮 Icon (可选)
  final Widget? icon;

  /// 点击回调
  final VoidCallback? onPressed;

  /// 是否启用 Mouse Hover 悬浮高亮反馈 (默认 true)
  final bool enableHoverFeedback;

  /// 是否启用 Touch Press 按压微动效缩放反馈 (默认 false)
  final bool enablePressFeedback;

  /// 是否启用 Ripple 水波纹点击扩散反馈 (默认 true)
  final bool enableRipple;

  /// 按压缩放比例 (默认 0.95)
  final double pressScale;

  /// 自定义文本颜色 (为 null 时使用主题 Primary 色彩)
  final Color? textColor;

  /// 自定义字体大小
  final double fontSize;

  /// 自定义字重
  final FontWeight fontWeight;

  /// 自定义内边距
  final EdgeInsetsGeometry padding;

  const FluentTextButton({
    super.key,
    this.text,
    this.icon,
    this.onPressed,
    this.enableHoverFeedback = true,
    this.enablePressFeedback = false,
    this.enableRipple = true,
    this.pressScale = 0.95,
    this.textColor,
    this.fontSize = 13.0,
    this.fontWeight = FontWeight.w600,
    this.padding = const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
  });

  @override
  State<FluentTextButton> createState() => _FluentTextButtonState();
}

class _FluentTextButtonState extends State<FluentTextButton> {
  bool _isHovered = false;
  bool _isPressed = false;

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isEnabled = widget.onPressed != null;
    final Color effectiveTextColor = widget.textColor ?? theme.primaryColor;

    final Widget buttonChild = Padding(
      padding: widget.padding,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (widget.icon != null) ...[
            IconTheme(
              data: IconThemeData(
                color: isEnabled
                    ? effectiveTextColor
                    : theme.foregroundSecondaryColor.withAlpha(120),
                size: widget.fontSize + 3.0,
              ),
              child: widget.icon!,
            ),
            if (widget.text != null && widget.text!.isNotEmpty)
              const SizedBox(width: 4.0),
          ],
          if (widget.text != null && widget.text!.isNotEmpty)
            Text(
              widget.text!,
              style: TextStyle(
                fontSize: widget.fontSize,
                fontWeight: widget.fontWeight,
                color: isEnabled
                    ? effectiveTextColor
                    : theme.foregroundSecondaryColor.withAlpha(120),
              ),
            ),
        ],
      ),
    );

    // 启用波纹 (Ripple InkWell 模式)
    if (widget.enableRipple) {
      final double scale =
          (_isPressed && widget.enablePressFeedback && isEnabled)
          ? widget.pressScale
          : 1.0;

      return AnimatedScale(
        scale: scale,
        duration: FluentMotionDuration.ultraFast,
        curve: FluentMotionCurve.standard,
        child: Material(
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(6.0),
          child: InkWell(
            onTap: isEnabled ? widget.onPressed : null,
            mouseCursor: isEnabled
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
            onHighlightChanged: (isPressed) {
              if (isEnabled && widget.enablePressFeedback) {
                setState(() => _isPressed = isPressed);
              }
            },
            borderRadius: BorderRadius.circular(6.0),
            splashColor: effectiveTextColor.withAlpha(35),
            highlightColor: effectiveTextColor.withAlpha(20),
            hoverColor: widget.enableHoverFeedback
                ? effectiveTextColor.withAlpha(25)
                : Colors.transparent,
            child: buttonChild,
          ),
        ),
      );
    }

    // 非波纹模式 (Custom MouseRegion + GestureDetector)
    final Color hoverBgColor =
        _isHovered && widget.enableHoverFeedback && isEnabled
        ? effectiveTextColor.withAlpha(25)
        : Colors.transparent;

    final double scale = (_isPressed && widget.enablePressFeedback && isEnabled)
        ? widget.pressScale
        : 1.0;

    return MouseRegion(
      cursor: isEnabled ? SystemMouseCursors.click : SystemMouseCursors.basic,
      onEnter: (_) {
        if (isEnabled && widget.enableHoverFeedback) {
          setState(() => _isHovered = true);
        }
      },
      onExit: (_) {
        if (widget.enableHoverFeedback) {
          setState(() => _isHovered = false);
        }
      },
      child: GestureDetector(
        onTapDown: (_) {
          if (isEnabled && widget.enablePressFeedback) {
            setState(() => _isPressed = true);
          }
        },
        onTapUp: (_) {
          if (isEnabled && widget.enablePressFeedback) {
            setState(() => _isPressed = false);
          }
        },
        onTapCancel: () {
          if (widget.enablePressFeedback) {
            setState(() => _isPressed = false);
          }
        },
        onTap: isEnabled ? widget.onPressed : null,
        child: AnimatedScale(
          scale: scale,
          duration: FluentMotionDuration.ultraFast,
          curve: FluentMotionCurve.standard,
          child: AnimatedContainer(
            duration: FluentMotionDuration.fast,
            decoration: BoxDecoration(
              color: hoverBgColor,
              borderRadius: BorderRadius.circular(6.0),
            ),
            child: buttonChild,
          ),
        ),
      ),
    );
  }
}
