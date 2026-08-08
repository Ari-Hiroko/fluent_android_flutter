import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 浮动操作按钮组件 [FluentFloatingActionButton]
class FluentFloatingActionButton extends StatelessWidget {
  /// 图标
  final Widget icon;

  /// 展开时的扩展文本 (当不为 null 时呈现 Extended FAB 形式)
  final String? text;

  /// 点击回调
  final VoidCallback? onPressed;

  /// 提示信息
  final String? tooltip;

  const FluentFloatingActionButton({
    super.key,
    required this.icon,
    this.text,
    this.onPressed,
    this.tooltip,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isExtended = text != null && text!.isNotEmpty;

    return Tooltip(
      message: tooltip ?? text ?? '',
      child: FluentMaterial(
        color: theme.primaryColor,
        elevation: FluentGlobalTokens.shadow14,
        shadowColor: Colors.black.withAlpha(80),
        borderRadius: BorderRadius.circular(
          FluentGlobalTokens.cornerRadiusCircular,
        ),
        child: FluentInkWell(
          onTap: onPressed,
          borderRadius: BorderRadius.circular(
            FluentGlobalTokens.cornerRadiusCircular,
          ),
          child: Container(
            height: 48.0,
            padding: EdgeInsets.symmetric(horizontal: isExtended ? 20.0 : 12.0),
            constraints: const BoxConstraints(minWidth: 48.0),
            alignment: Alignment.center,
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                IconTheme(
                  data: const IconThemeData(color: Colors.white, size: 24.0),
                  child: icon,
                ),
                if (isExtended) ...[
                  const SizedBox(width: 8.0),
                  Text(
                    text!,
                    style: const TextStyle(
                      fontSize: 14.0,
                      fontWeight: FontWeight.w600,
                      color: Colors.white,
                    ),
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
