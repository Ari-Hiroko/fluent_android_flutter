import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 气泡提示组件 [FluentTooltip]
///
/// 移植自 Android Kotlin ToolTip.kt 与 ToolTipIcons.kt
class FluentTooltip extends StatelessWidget {
  /// 提示文本
  final String message;

  /// 包裹的目标子组件 Child
  final Widget child;

  /// 是否开启长按提示 (默认 true)
  final bool enableFeedback;

  const FluentTooltip({
    super.key,
    required this.message,
    required this.child,
    this.enableFeedback = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final Color bgColor = isDark
        ? const Color(0xFF3B3B3B)
        : const Color(0xFF292929);

    return Tooltip(
      message: message,
      enableFeedback: enableFeedback,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(FluentGlobalTokens.cornerRadius80),
        boxShadow: const [
          BoxShadow(
            color: Colors.black26,
            blurRadius: 6.0,
            offset: Offset(0, 3),
          ),
        ],
      ),
      textStyle: const TextStyle(
        fontSize: 12.0,
        color: Colors.white,
        fontWeight: FontWeight.normal,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 6.0),
      child: child,
    );
  }
}
