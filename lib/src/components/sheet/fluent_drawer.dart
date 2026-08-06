import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// 侧边抽屉弹出位置 [FluentDrawerPosition]
enum FluentDrawerPosition {
  /// 左侧弹出 (导航菜单)
  left,

  /// 右侧弹出 (筛选/详情 SideSheet)
  right,
}

/// Fluent 2 侧边抽屉组件 [FluentDrawer]
///
/// 移植自 Android Kotlin Drawer.kt 与 HorizontalDrawer.kt
class FluentDrawer extends StatelessWidget {
  /// 抽屉内容 Widget
  final Widget child;

  /// 弹出位置 (left / right)
  final FluentDrawerPosition position;

  /// 抽屉宽度 (默认 280dp)
  final double width;

  const FluentDrawer({
    super.key,
    required this.child,
    this.position = FluentDrawerPosition.left,
    this.width = 280.0,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isLeft = position == FluentDrawerPosition.left;

    return Material(
      color: theme.backgroundColor,
      elevation: FluentGlobalTokens.shadow28,
      shadowColor: Colors.black.withAlpha(80),
      borderRadius: BorderRadius.only(
        topRight: isLeft ? Radius.circular(theme.cornerRadius * 2) : Radius.zero,
        bottomRight: isLeft ? Radius.circular(theme.cornerRadius * 2) : Radius.zero,
        topLeft: !isLeft ? Radius.circular(theme.cornerRadius * 2) : Radius.zero,
        bottomLeft: !isLeft ? Radius.circular(theme.cornerRadius * 2) : Radius.zero,
      ),
      child: Container(
        width: width,
        height: double.infinity,
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.only(
            topRight: isLeft ? Radius.circular(theme.cornerRadius * 2) : Radius.zero,
            bottomRight: isLeft ? Radius.circular(theme.cornerRadius * 2) : Radius.zero,
            topLeft: !isLeft ? Radius.circular(theme.cornerRadius * 2) : Radius.zero,
            bottomLeft: !isLeft ? Radius.circular(theme.cornerRadius * 2) : Radius.zero,
          ),
        ),
        child: SafeArea(
          child: child,
        ),
      ),
    );
  }
}

/// 符合 Flutter 操作习惯的侧边抽屉便捷弹出函数 [showFluentDrawer<T>]
Future<T?> showFluentDrawer<T>({
  required BuildContext context,
  required Widget child,
  FluentDrawerPosition position = FluentDrawerPosition.left,
  double width = 280.0,
  bool barrierDismissible = true,
}) {
  final fluentTheme = FluentTheme.of(context);
  final isLeft = position == FluentDrawerPosition.left;

  return Navigator.of(context).push<T>(
    PageRouteBuilder<T>(
      opaque: false,
      barrierDismissible: barrierDismissible,
      barrierColor: Colors.black54,
      transitionDuration: const Duration(milliseconds: 250),
      reverseTransitionDuration: const Duration(milliseconds: 200),
      pageBuilder: (context, anim, secondaryAnim) {
        return FluentTheme(
          data: fluentTheme,
          child: SlideTransition(
            position: Tween<Offset>(
              begin: Offset(isLeft ? -1.0 : 1.0, 0.0),
              end: Offset.zero,
            ).animate(CurvedAnimation(parent: anim, curve: Curves.easeOutCubic)),
            child: Align(
              alignment: isLeft ? Alignment.centerLeft : Alignment.centerRight,
              child: FluentDrawer(
                position: position,
                width: width,
                child: child,
              ),
            ),
          ),
        );
      },
    ),
  );
}
