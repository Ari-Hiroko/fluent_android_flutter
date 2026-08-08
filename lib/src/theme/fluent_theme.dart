import 'package:flutter/material.dart';
import 'fluent_theme_data.dart';

export '../components/material/fluent_material.dart';
export '../components/ripple/fluent_ink_well.dart';
export 'fluent_theme_data.dart';

/// Fluent 2 主题控件 [FluentTheme]
class FluentTheme extends StatelessWidget {
  final FluentThemeData themeData;
  final Widget child;

  const FluentTheme({super.key, required this.themeData, required this.child});

  /// 获取当前上下文中的 [FluentThemeData]，若不存在则返回基于 MediaQuery/Theme 的默认配置
  static FluentThemeData of(BuildContext context) {
    final _FluentThemeInherited? inherited = context
        .dependOnInheritedWidgetOfExactType<_FluentThemeInherited>();
    if (inherited != null) {
      return inherited.themeData;
    }
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.dark
        ? FluentThemeData.dark()
        : FluentThemeData.light();
  }

  @override
  Widget build(BuildContext context) {
    return _FluentThemeInherited(
      themeData: themeData,
      child: Theme(data: themeData.toMaterialTheme(), child: child),
    );
  }
}

class _FluentThemeInherited extends InheritedWidget {
  final FluentThemeData themeData;

  const _FluentThemeInherited({required this.themeData, required super.child});

  @override
  bool updateShouldNotify(covariant _FluentThemeInherited oldWidget) {
    return themeData != oldWidget.themeData;
  }
}
