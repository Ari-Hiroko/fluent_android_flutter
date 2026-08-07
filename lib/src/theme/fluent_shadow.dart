import 'package:flutter/material.dart';
import 'fluent_theme.dart';

/// Fluent 2 Elevation 阴影层级 [FluentShadowLevel]
enum FluentShadowLevel {
  none,
  shadow2,
  shadow4,
  shadow8,
  shadow16,
  shadow28,
  shadow64,
  shadow2Brand,
  shadow4Brand,
  shadow8Brand,
  shadow16Brand,
  shadow28Brand,
  shadow64Brand,
}

/// Fluent 2 阴影类 [FluentShadow]
///
/// 继承自 Flutter 标准 [BoxShadow]（间接继承 [Shadow]），完全兼容 Material 3 与所有 Flutter 原生组件。
/// 内部预设阴影采用 `const` 静态分配，大幅降低 build 时的 GC 压力与内存开销。
class FluentShadow extends BoxShadow {
  final FluentShadowLevel? level;

  const FluentShadow({
    super.color = const Color(0x1A000000),
    super.offset = Offset.zero,
    super.blurRadius = 0.0,
    super.spreadRadius = 0.0,
    this.level,
  });

  /// 半透明 / Acrylic 弥散阴影预设 [translucent]
  static List<BoxShadow> translucent([BuildContext? context]) {
    final bool isDark = context != null && FluentTheme.of(context).brightness == Brightness.dark;
    return isDark ? _darkTranslucent : _lightTranslucent;
  }

  static const List<BoxShadow> _lightTranslucent = [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.03),
      blurRadius: 8.0,
      offset: Offset(0, 2),
    ),
  ];

  static const List<BoxShadow> _darkTranslucent = [
    BoxShadow(
      color: Color.fromRGBO(0, 0, 0, 0.15),
      blurRadius: 8.0,
      offset: Offset(0, 2),
    ),
  ];

  /// Fluent 2 常用标准阴影 Tokens (双层 Ambient + Key 叠加)
  static List<BoxShadow> shadow2([BuildContext? context]) =>
      _getConstantShadows(context, _lightShadow2, _darkShadow2, FluentShadowLevel.shadow2);

  static List<BoxShadow> shadow4([BuildContext? context]) =>
      _getConstantShadows(context, _lightShadow4, _darkShadow4, FluentShadowLevel.shadow4);

  static List<BoxShadow> shadow8([BuildContext? context]) =>
      _getConstantShadows(context, _lightShadow8, _darkShadow8, FluentShadowLevel.shadow8);

  static List<BoxShadow> shadow16([BuildContext? context]) =>
      _getConstantShadows(context, _lightShadow16, _darkShadow16, FluentShadowLevel.shadow16);

  static List<BoxShadow> shadow28([BuildContext? context]) =>
      _getConstantShadows(context, _lightShadow28, _darkShadow28, FluentShadowLevel.shadow28);

  static List<BoxShadow> shadow64([BuildContext? context]) =>
      _getConstantShadows(context, _lightShadow64, _darkShadow64, FluentShadowLevel.shadow64);

  /// 品牌色彩阴影 Tokens
  static List<BoxShadow> brand2([BuildContext? context, Color? brandColor]) =>
      getShadows(context, FluentShadowLevel.shadow2Brand, brandColor: brandColor);

  static List<BoxShadow> brand4([BuildContext? context, Color? brandColor]) =>
      getShadows(context, FluentShadowLevel.shadow4Brand, brandColor: brandColor);

  static List<BoxShadow> brand8([BuildContext? context, Color? brandColor]) =>
      getShadows(context, FluentShadowLevel.shadow8Brand, brandColor: brandColor);

  static List<BoxShadow> brand16([BuildContext? context, Color? brandColor]) =>
      getShadows(context, FluentShadowLevel.shadow16Brand, brandColor: brandColor);

  static List<BoxShadow> brand28([BuildContext? context, Color? brandColor]) =>
      getShadows(context, FluentShadowLevel.shadow28Brand, brandColor: brandColor);

  static List<BoxShadow> brand64([BuildContext? context, Color? brandColor]) =>
      getShadows(context, FluentShadowLevel.shadow64Brand, brandColor: brandColor);

  static List<BoxShadow> _getConstantShadows(
    BuildContext? context,
    List<BoxShadow> light,
    List<BoxShadow> dark,
    FluentShadowLevel level,
  ) {
    if (context == null) return light;
    final bool isDark = FluentTheme.of(context).brightness == Brightness.dark;
    return isDark ? dark : light;
  }

  /// 依据 [context] 与 [FluentShadowLevel] 动态生成阴影列表
  static List<BoxShadow> getShadows(
    BuildContext? context,
    FluentShadowLevel level, {
    Color? brandColor,
    bool? isDarkOverride,
    Offset? offset,
  }) {
    if (level == FluentShadowLevel.none) return const [];

    final bool isDark = context != null
        ? (isDarkOverride ?? (FluentTheme.of(context).brightness == Brightness.dark))
        : (isDarkOverride ?? false);

    List<BoxShadow> baseShadows;

    switch (level) {
      case FluentShadowLevel.shadow2:
        baseShadows = isDark ? _darkShadow2 : _lightShadow2;
        break;
      case FluentShadowLevel.shadow4:
        baseShadows = isDark ? _darkShadow4 : _lightShadow4;
        break;
      case FluentShadowLevel.shadow8:
        baseShadows = isDark ? _darkShadow8 : _lightShadow8;
        break;
      case FluentShadowLevel.shadow16:
        baseShadows = isDark ? _darkShadow16 : _lightShadow16;
        break;
      case FluentShadowLevel.shadow28:
        baseShadows = isDark ? _darkShadow28 : _lightShadow28;
        break;
      case FluentShadowLevel.shadow64:
        baseShadows = isDark ? _darkShadow64 : _lightShadow64;
        break;
      default:
        final Color effectiveBrandColor = context != null
            ? (brandColor ?? FluentTheme.of(context).primaryColor)
            : (brandColor ?? const Color(0xFF0078D4));
        baseShadows = _generateBrandShadows(level, effectiveBrandColor);
        break;
    }

    if (offset != null && offset != Offset.zero) {
      return baseShadows
          .map((s) => BoxShadow(
                offset: s.offset + offset,
                blurRadius: s.blurRadius,
                spreadRadius: s.spreadRadius,
                color: s.color,
              ))
          .toList();
    }

    return baseShadows;
  }

  static List<BoxShadow> _generateBrandShadows(FluentShadowLevel level, Color brandColor) {
    switch (level) {
      case FluentShadowLevel.shadow2Brand:
        return [
          BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: _getBrandShadowColor(brandColor, 0.20)),
          BoxShadow(offset: const Offset(0, 1), blurRadius: 2.0, color: _getBrandShadowColor(brandColor, 0.15)),
        ];
      case FluentShadowLevel.shadow4Brand:
        return [
          BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: _getBrandShadowColor(brandColor, 0.20)),
          BoxShadow(offset: const Offset(0, 2), blurRadius: 4.0, color: _getBrandShadowColor(brandColor, 0.15)),
        ];
      case FluentShadowLevel.shadow8Brand:
        return [
          BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: _getBrandShadowColor(brandColor, 0.20)),
          BoxShadow(offset: const Offset(0, 4), blurRadius: 8.0, color: _getBrandShadowColor(brandColor, 0.15)),
        ];
      case FluentShadowLevel.shadow16Brand:
        return [
          BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: _getBrandShadowColor(brandColor, 0.20)),
          BoxShadow(offset: const Offset(0, 8), blurRadius: 16.0, color: _getBrandShadowColor(brandColor, 0.15)),
        ];
      case FluentShadowLevel.shadow28Brand:
        return [
          BoxShadow(offset: Offset.zero, blurRadius: 8.0, color: _getBrandShadowColor(brandColor, 0.20)),
          BoxShadow(offset: const Offset(0, 14), blurRadius: 28.0, color: _getBrandShadowColor(brandColor, 0.15)),
        ];
      case FluentShadowLevel.shadow64Brand:
        return [
          BoxShadow(offset: Offset.zero, blurRadius: 8.0, color: _getBrandShadowColor(brandColor, 0.20)),
          BoxShadow(offset: const Offset(0, 32), blurRadius: 64.0, color: _getBrandShadowColor(brandColor, 0.15)),
        ];
      default:
        return const [];
    }
  }

  static Color _getBrandShadowColor(Color brandColor, double alphaFraction) {
    return Color.fromRGBO(
      (brandColor.r * 255 * 0.2).round().clamp(0, 255),
      (brandColor.g * 255 * 0.2).round().clamp(0, 255),
      (brandColor.b * 255 * 0.2).round().clamp(0, 255),
      alphaFraction,
    );
  }

  // ---------------- 常量预设列表 ----------------
  static const List<BoxShadow> _lightShadow2 = [
    BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.06)),
    BoxShadow(offset: Offset(0, 1), blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.08)),
  ];
  static const List<BoxShadow> _darkShadow2 = [
    BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.16)),
    BoxShadow(offset: Offset(0, 1), blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.20)),
  ];

  static const List<BoxShadow> _lightShadow4 = [
    BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.06)),
    BoxShadow(offset: Offset(0, 2), blurRadius: 4.0, color: Color.fromRGBO(0, 0, 0, 0.08)),
  ];
  static const List<BoxShadow> _darkShadow4 = [
    BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.16)),
    BoxShadow(offset: Offset(0, 2), blurRadius: 4.0, color: Color.fromRGBO(0, 0, 0, 0.20)),
  ];

  static const List<BoxShadow> _lightShadow8 = [
    BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.06)),
    BoxShadow(offset: Offset(0, 4), blurRadius: 8.0, color: Color.fromRGBO(0, 0, 0, 0.08)),
  ];
  static const List<BoxShadow> _darkShadow8 = [
    BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.16)),
    BoxShadow(offset: Offset(0, 4), blurRadius: 8.0, color: Color.fromRGBO(0, 0, 0, 0.20)),
  ];

  static const List<BoxShadow> _lightShadow16 = [
    BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.08)),
    BoxShadow(offset: Offset(0, 8), blurRadius: 16.0, color: Color.fromRGBO(0, 0, 0, 0.10)),
  ];
  static const List<BoxShadow> _darkShadow16 = [
    BoxShadow(offset: Offset.zero, blurRadius: 2.0, color: Color.fromRGBO(0, 0, 0, 0.18)),
    BoxShadow(offset: Offset(0, 8), blurRadius: 16.0, color: Color.fromRGBO(0, 0, 0, 0.22)),
  ];

  static const List<BoxShadow> _lightShadow28 = [
    BoxShadow(offset: Offset.zero, blurRadius: 8.0, color: Color.fromRGBO(0, 0, 0, 0.08)),
    BoxShadow(offset: Offset(0, 14), blurRadius: 28.0, color: Color.fromRGBO(0, 0, 0, 0.10)),
  ];
  static const List<BoxShadow> _darkShadow28 = [
    BoxShadow(offset: Offset.zero, blurRadius: 8.0, color: Color.fromRGBO(0, 0, 0, 0.18)),
    BoxShadow(offset: Offset(0, 14), blurRadius: 28.0, color: Color.fromRGBO(0, 0, 0, 0.22)),
  ];

  static const List<BoxShadow> _lightShadow64 = [
    BoxShadow(offset: Offset.zero, blurRadius: 8.0, color: Color.fromRGBO(0, 0, 0, 0.10)),
    BoxShadow(offset: Offset(0, 32), blurRadius: 64.0, color: Color.fromRGBO(0, 0, 0, 0.12)),
  ];
  static const List<BoxShadow> _darkShadow64 = [
    BoxShadow(offset: Offset.zero, blurRadius: 8.0, color: Color.fromRGBO(0, 0, 0, 0.20)),
    BoxShadow(offset: Offset(0, 32), blurRadius: 64.0, color: Color.fromRGBO(0, 0, 0, 0.24)),
  ];
}
