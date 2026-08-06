import 'package:flutter/material.dart';
import 'fluent_theme_data.dart';

/// Fluent 2 主题 InheritedWidget 节点
class FluentTheme extends InheritedWidget {
  final Fluent2ThemeData data;

  const FluentTheme({
    super.key,
    required this.data,
    required super.child,
  });

  /// 获取当前上下文中的 [Fluent2ThemeData]，若不存在则返回基于 MediaQuery/Theme 的默认配置
  static Fluent2ThemeData of(BuildContext context) {
    final FluentTheme? inherited =
        context.dependOnInheritedWidgetOfExactType<FluentTheme>();
    if (inherited != null) {
      return inherited.data;
    }
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.dark
        ? Fluent2ThemeData.dark()
        : Fluent2ThemeData.light();
  }

  @override
  bool updateShouldNotify(covariant FluentTheme oldWidget) {
    return data != oldWidget.data;
  }
}
