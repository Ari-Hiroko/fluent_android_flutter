import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_motion_tokens.dart';
import '../../theme/fluent_theme.dart';
import '../buttons/fluent_text_button.dart';

/// Fluent 2 官方横幅通知组件 [FluentBanner]
///
/// 完全移植自 Android Kotlin Banner.kt, V2BannerActivity.kt 与 V2BannerUITest.kt
class FluentBanner extends StatefulWidget {
  /// 主文本消息
  final String text;

  /// 描述正文消息 (可选)
  final String? message;

  /// 是否居中显示文本 (当无前置 Icon 和右侧按钮时有效)
  final bool isTextCentered;

  /// 前置图标 Leading Icon
  final Widget? leadingIcon;

  /// 核心操作按钮文本
  final String? actionButtonText;

  /// 核心操作按钮图标 Icon
  final Widget? actionButtonIcon;

  /// 核心操作按钮点击回调 (注意：必须不为 null 才渲染按钮，完全与 V2BannerUITest 单元测试行为一致)
  final VoidCallback? actionButtonOnClick;

  /// 辅助文本按钮 1 标签
  final String? accessoryTextButton1;

  /// 辅助文本按钮 1 点击回调 (必须不为 null 才渲染，完全与 V2BannerUITest 对齐)
  final VoidCallback? accessoryTextButton1OnClick;

  /// 辅助文本按钮 2 标签
  final String? accessoryTextButton2;

  /// 辅助文本按钮 2 点击回调 (必须不为 null 才渲染，完全与 V2BannerUITest 对齐)
  final VoidCallback? accessoryTextButton2OnClick;

  /// 是否开启按钮鼠标悬浮高亮反馈 (默认 true)
  final bool enableHoverFeedback;

  /// 是否开启按钮按压微动效反馈 (默认 true)
  final bool enablePressFeedback;

  /// 控制横幅展开/收起/淡入淡出的隐式动画显示状态
  final bool visible;

  /// 是否开启展开收起动画
  final bool enableAnimation;

  /// 动画持续时间
  final Duration animationDuration;

  const FluentBanner({
    super.key,
    required this.text,
    this.message,
    this.isTextCentered = false,
    this.leadingIcon,
    this.actionButtonText,
    this.actionButtonIcon,
    this.actionButtonOnClick,
    this.accessoryTextButton1,
    this.accessoryTextButton1OnClick,
    this.accessoryTextButton2,
    this.accessoryTextButton2OnClick,
    this.enableHoverFeedback = true,
    this.enablePressFeedback = false,
    this.visible = true,
    this.enableAnimation = true,
    this.animationDuration = FluentMotionDuration.normal,
  });

  @override
  State<FluentBanner> createState() => _FluentBannerState();
}

class _FluentBannerState extends State<FluentBanner>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _expandAnimation;
  late Animation<double> _fadeAnimation;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: widget.animationDuration,
      value: widget.visible ? 1.0 : 0.0,
    );

    _expandAnimation = CurvedAnimation(
      parent: _controller,
      curve: FluentMotionCurve.standard,
    );

    _fadeAnimation = CurvedAnimation(parent: _controller, curve: Curves.easeIn);
  }

  @override
  void didUpdateWidget(covariant FluentBanner oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.visible != oldWidget.visible) {
      if (widget.enableAnimation) {
        if (widget.visible) {
          _controller.forward();
        } else {
          _controller.reverse();
        }
      } else {
        _controller.value = widget.visible ? 1.0 : 0.0;
      }
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final Color backgroundColor = isDark
        ? const Color(0xFF292929)
        : const Color(0xFFF0F6FF); // Fluent 2 Subtle Tint

    final bool hasActionButton =
        widget.actionButtonOnClick != null &&
        (widget.actionButtonText != null || widget.actionButtonIcon != null);

    final bool hasAccessory1 =
        widget.accessoryTextButton1 != null &&
        widget.accessoryTextButton1OnClick != null;

    final bool hasAccessory2 =
        widget.accessoryTextButton2 != null &&
        widget.accessoryTextButton2OnClick != null;

    final bool hasAccessoryRow = hasAccessory1 || hasAccessory2;

    final bool isCentered =
        widget.isTextCentered &&
        widget.leadingIcon == null &&
        !hasActionButton &&
        !hasAccessoryRow;

    final Widget bannerContent = Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(FluentGlobalTokens.cornerRadius80),
        border: Border.all(color: theme.primaryColor.withAlpha(25), width: 1.0),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: isCentered
            ? CrossAxisAlignment.center
            : CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // 前置 Leading Icon
              if (widget.leadingIcon != null) ...[
                IconTheme(
                  data: IconThemeData(color: theme.primaryColor, size: 22.0),
                  child: widget.leadingIcon!,
                ),
                const SizedBox(width: 12.0),
              ],

              // 主要文本与描述
              Expanded(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: isCentered
                      ? CrossAxisAlignment.center
                      : CrossAxisAlignment.start,
                  children: [
                    Text(
                      widget.text,
                      textAlign: isCentered ? TextAlign.center : TextAlign.left,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w600,
                        color: theme.foregroundColor,
                        height: 1.3,
                      ),
                    ),
                    if (widget.message != null &&
                        widget.message!.isNotEmpty) ...[
                      const SizedBox(height: 3.0),
                      Text(
                        widget.message!,
                        textAlign: isCentered
                            ? TextAlign.center
                            : TextAlign.left,
                        style: TextStyle(
                          fontSize: 12.0,
                          color: theme.foregroundSecondaryColor,
                          height: 1.3,
                        ),
                      ),
                    ],
                  ],
                ),
              ),

              // 右侧主 Action 按钮
              if (hasActionButton) ...[
                const SizedBox(width: 12.0),
                FluentTextButton(
                  text: widget.actionButtonText,
                  icon: widget.actionButtonIcon,
                  onPressed: widget.actionButtonOnClick,
                  enableHoverFeedback: widget.enableHoverFeedback,
                  enablePressFeedback: widget.enablePressFeedback,
                  fontSize: 13.0,
                ),
              ],
            ],
          ),

          // 底部 Accessory Text Buttons 行
          if (hasAccessoryRow) ...[
            const SizedBox(height: 8.0),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                if (hasAccessory1)
                  FluentTextButton(
                    text: widget.accessoryTextButton1,
                    onPressed: widget.accessoryTextButton1OnClick,
                    enableHoverFeedback: widget.enableHoverFeedback,
                    enablePressFeedback: widget.enablePressFeedback,
                    fontSize: 13.0,
                  ),
                if (hasAccessory1 && hasAccessory2) const SizedBox(width: 4.0),
                if (hasAccessory2)
                  FluentTextButton(
                    text: widget.accessoryTextButton2,
                    onPressed: widget.accessoryTextButton2OnClick,
                    enableHoverFeedback: widget.enableHoverFeedback,
                    enablePressFeedback: widget.enablePressFeedback,
                    fontSize: 13.0,
                  ),
              ],
            ),
          ],
        ],
      ),
    );

    return SizeTransition(
      sizeFactor: _expandAnimation,
      axisAlignment: -1.0,
      child: FadeTransition(opacity: _fadeAnimation, child: bannerContent),
    );
  }
}
