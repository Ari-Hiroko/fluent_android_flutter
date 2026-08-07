import 'package:flutter/material.dart';
import 'fluent_theme_data.dart';

/// Fluent 2 主题 InheritedWidget 节点
class FluentTheme extends InheritedWidget {
  final FluentThemeData themeData;

  const FluentTheme({super.key, required this.themeData, required super.child});

  /// 获取当前上下文中的 [FluentThemeData]，若不存在则返回基于 MediaQuery/Theme 的默认配置
  static FluentThemeData of(BuildContext context) {
    final FluentTheme? inherited = context
        .dependOnInheritedWidgetOfExactType<FluentTheme>();
    if (inherited != null) {
      return inherited.themeData;
    }
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.dark
        ? FluentThemeData.dark()
        : FluentThemeData.light();
  }

  @override
  bool updateShouldNotify(covariant FluentTheme oldWidget) {
    return themeData != oldWidget.themeData;
  }
}
