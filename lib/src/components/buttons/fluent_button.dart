import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
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

/// Fluent 2 官方按钮组件 [FluentButton]
///
/// 移植自 Android Kotlin Button.kt 与 ButtonTokens.kt
class FluentButton extends StatelessWidget {
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

  const FluentButton({
    super.key,
    required this.text,
    this.icon,
    this.onPressed,
    this.style = FluentButtonStyle.primary,
    this.size = FluentButtonSize.medium,
    this.isFullWidth = false,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isEnabled = onPressed != null;

    // 尺寸高度与 padding 计算
    double height = 40.0;
    double fontSize = 14.0;
    EdgeInsets padding = const EdgeInsets.symmetric(horizontal: 16.0);

    switch (size) {
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

    switch (style) {
      case FluentButtonStyle.primary:
        backgroundColor = isEnabled ? theme.primaryColor : theme.dividerColor;
        foregroundColor = isEnabled ? Colors.white : theme.foregroundSecondaryColor;
        break;
      case FluentButtonStyle.secondary:
        backgroundColor = isEnabled ? theme.backgroundColor : theme.backgroundColor.withAlpha(128);
        foregroundColor = isEnabled ? theme.primaryColor : theme.foregroundSecondaryColor;
        borderSide = BorderSide(
          color: isEnabled ? theme.primaryColor : theme.dividerColor,
          width: 1.0,
        );
        break;
      case FluentButtonStyle.borderless:
        backgroundColor = Colors.transparent;
        foregroundColor = isEnabled ? theme.primaryColor : theme.foregroundSecondaryColor;
        break;
      case FluentButtonStyle.danger:
        backgroundColor = isEnabled ? FluentGlobalTokens.sharedRed : theme.dividerColor;
        foregroundColor = isEnabled ? Colors.white : theme.foregroundSecondaryColor;
        break;
    }

    Widget content = Row(
      mainAxisSize: isFullWidth ? MainAxisSize.max : MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null) ...[
          IconTheme(
            data: IconThemeData(
              color: foregroundColor,
              size: fontSize + 4.0,
            ),
            child: icon!,
          ),
          const SizedBox(width: 8.0),
        ],
        Text(
          text,
          style: TextStyle(
            fontSize: fontSize,
            fontWeight: FontWeight.w600,
            color: foregroundColor,
          ),
        ),
      ],
    );

    return SizedBox(
      height: height,
      width: isFullWidth ? double.infinity : null,
      child: Material(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(FluentGlobalTokens.cornerRadius80),
        child: InkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(FluentGlobalTokens.cornerRadius80),
          highlightColor: Colors.black.withAlpha(20),
          splashColor: Colors.black.withAlpha(30),
          child: Container(
            padding: padding,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(FluentGlobalTokens.cornerRadius80),
              border: borderSide != BorderSide.none ? Border.fromBorderSide(borderSide) : null,
            ),
            alignment: Alignment.center,
            child: content,
          ),
        ),
      ),
    );
  }
}
