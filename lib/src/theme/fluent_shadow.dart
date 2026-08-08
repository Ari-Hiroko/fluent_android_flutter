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

/// 来自 tokens.json 的阴影颜色 Token 规范 [FluentShadowTokens]
abstract class FluentShadowTokens {
  // Light Mode Colors (来自 tokens.json mode.light)
  static const Color lightShadowAmbient = Color(
    0x1E000000,
  ); // #0000001e (Alpha: 0.12)
  static const Color lightShadowAmbientLighter = Color(
    0x0F000000,
  ); // #0000000f (Alpha: 0.06)
  static const Color lightShadowAmbientDarker = Color(
    0x33000000,
  ); // #00000033 (Alpha: 0.20)
  static const Color lightShadowBrandAmbient = Color(
    0x3F000000,
  ); // #0000003f (Alpha: 0.25)

  static const Color lightShadowKey = Color(
    0x23000000,
  ); // #00000023 (Alpha: 0.14)
  static const Color lightShadowKeyLighter = Color(
    0x11000000,
  ); // #00000011 (Alpha: 0.07)
  static const Color lightShadowKeyDarker = Color(
    0x3D000000,
  ); // #0000003d (Alpha: 0.24)
  static const Color lightShadowBrandKey = Color(
    0x4C000000,
  ); // #0000004c (Alpha: 0.30)

  // Dark Mode Colors (来自 tokens.json mode.dark)
  static const Color darkShadowAmbient = Color(
    0x3D000000,
  ); // #0000003d (Alpha: 0.24)
  static const Color darkShadowAmbientLighter = Color(
    0x1E000000,
  ); // #0000001e (Alpha: 0.12)
  static const Color darkShadowAmbientDarker = Color(
    0x66000000,
  ); // #00000066 (Alpha: 0.40)
  static const Color darkShadowBrandAmbient = Color(
    0x3F000000,
  ); // #0000003f (Alpha: 0.25)

  static const Color darkShadowKey = Color(
    0x47000000,
  ); // #00000047 (Alpha: 0.28)
  static const Color darkShadowKeyLighter = Color(
    0x23000000,
  ); // #00000023 (Alpha: 0.14)
  static const Color darkShadowKeyDarker = Color(
    0x7A000000,
  ); // #0000007a (Alpha: 0.48)
  static const Color darkShadowBrandKey = Color(
    0x4C000000,
  ); // #0000004c (Alpha: 0.30)
}

/// Fluent 2 阴影类 [FluentShadow]
///
/// 继承自 Flutter 标准 [BoxShadow]（间接继承 [Shadow]），完全兼容 FluentMaterial 3 与所有 Flutter 原生组件。
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
    final bool isDark =
        context != null &&
        FluentTheme.of(context).brightness == Brightness.dark;
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
      _getConstantShadows(
        context,
        _lightShadow2,
        _darkShadow2,
        FluentShadowLevel.shadow2,
      );

  static List<BoxShadow> shadow4([BuildContext? context]) =>
      _getConstantShadows(
        context,
        _lightShadow4,
        _darkShadow4,
        FluentShadowLevel.shadow4,
      );

  static List<BoxShadow> shadow8([BuildContext? context]) =>
      _getConstantShadows(
        context,
        _lightShadow8,
        _darkShadow8,
        FluentShadowLevel.shadow8,
      );

  static List<BoxShadow> shadow16([BuildContext? context]) =>
      _getConstantShadows(
        context,
        _lightShadow16,
        _darkShadow16,
        FluentShadowLevel.shadow16,
      );

  static List<BoxShadow> shadow28([BuildContext? context]) =>
      _getConstantShadows(
        context,
        _lightShadow28,
        _darkShadow28,
        FluentShadowLevel.shadow28,
      );

  static List<BoxShadow> shadow64([BuildContext? context]) =>
      _getConstantShadows(
        context,
        _lightShadow64,
        _darkShadow64,
        FluentShadowLevel.shadow64,
      );

  /// Brand 品牌感知彩光阴影 (基于主题 Brand 颜色进行微散)
  static List<BoxShadow> brand2(BuildContext context) => _getBrandShadows(
    context,
    elevation: 2.0,
    blur: 2.0,
    alpha: 0.18,
    level: FluentShadowLevel.shadow2Brand,
  );

  static List<BoxShadow> brand4(BuildContext context) => _getBrandShadows(
    context,
    elevation: 4.0,
    blur: 4.0,
    alpha: 0.22,
    level: FluentShadowLevel.shadow4Brand,
  );

  static List<BoxShadow> brand8(BuildContext context) => _getBrandShadows(
    context,
    elevation: 8.0,
    blur: 8.0,
    alpha: 0.25,
    level: FluentShadowLevel.shadow8Brand,
  );

  static List<BoxShadow> brand16(BuildContext context) => _getBrandShadows(
    context,
    elevation: 16.0,
    blur: 16.0,
    alpha: 0.28,
    level: FluentShadowLevel.shadow16Brand,
  );

  static List<BoxShadow> brand28(BuildContext context) => _getBrandShadows(
    context,
    elevation: 28.0,
    blur: 28.0,
    alpha: 0.30,
    level: FluentShadowLevel.shadow28Brand,
  );

  static List<BoxShadow> brand64(BuildContext context) => _getBrandShadows(
    context,
    elevation: 64.0,
    blur: 64.0,
    alpha: 0.32,
    level: FluentShadowLevel.shadow64Brand,
  );

  // ---------------- 内部 Helper ----------------
  static List<BoxShadow> _getConstantShadows(
    BuildContext? context,
    List<BoxShadow> lightShadows,
    List<BoxShadow> darkShadows,
    FluentShadowLevel level,
  ) {
    if (context == null) return lightShadows;
    final bool isDark = FluentTheme.of(context).brightness == Brightness.dark;
    return isDark ? darkShadows : lightShadows;
  }

  static List<BoxShadow> _getBrandShadows(
    BuildContext context, {
    required double elevation,
    required double blur,
    required double alpha,
    required FluentShadowLevel level,
  }) {
    final theme = FluentTheme.of(context);
    final brandColor = theme.primaryColor;
    return [
      BoxShadow(
        offset: Offset(0, elevation / 2),
        blurRadius: blur,
        color: brandColor.withValues(alpha: alpha),
      ),
    ];
  }

  // ---------------- 常量预设列表 (根据自然光源物理投影与 Figma 效果调优) ----------------
  // Shadow 02 (顶部 0 上溢，侧方微窄，下方自然沉降)
  static const List<BoxShadow> _lightShadow2 = [
    BoxShadow(
      offset: Offset(0, 0.5),
      blurRadius: 1.5,
      color: FluentShadowTokens.lightShadowAmbientLighter,
    ),
    BoxShadow(
      offset: Offset(0, 1.5),
      blurRadius: 2.0,
      color: FluentShadowTokens.lightShadowKeyLighter,
    ),
  ];
  static const List<BoxShadow> _darkShadow2 = [
    BoxShadow(
      offset: Offset(0, 0.5),
      blurRadius: 1.5,
      color: FluentShadowTokens.darkShadowAmbientLighter,
    ),
    BoxShadow(
      offset: Offset(0, 1.5),
      blurRadius: 2.0,
      color: FluentShadowTokens.darkShadowKeyLighter,
    ),
  ];

  // Shadow 04 (顶部精洁，下方产生 3~4px 主方向阴影)
  static const List<BoxShadow> _lightShadow4 = [
    BoxShadow(
      offset: Offset(0, 1.0),
      blurRadius: 2.0,
      color: FluentShadowTokens.lightShadowAmbient,
    ),
    BoxShadow(
      offset: Offset(0, 3.0),
      blurRadius: 4.0,
      color: FluentShadowTokens.lightShadowKey,
    ),
  ];
  static const List<BoxShadow> _darkShadow4 = [
    BoxShadow(
      offset: Offset(0, 1.0),
      blurRadius: 2.0,
      color: FluentShadowTokens.darkShadowAmbient,
    ),
    BoxShadow(
      offset: Offset(0, 3.0),
      blurRadius: 4.0,
      color: FluentShadowTokens.darkShadowKey,
    ),
  ];

  // Shadow 08 (顶部近乎无阴影，侧边极窄，下方为 6~8px 主投影区)
  static const List<BoxShadow> _lightShadow8 = [
    BoxShadow(
      offset: Offset(0, 1.0),
      blurRadius: 2.0,
      color: FluentShadowTokens.lightShadowAmbient,
    ),
    BoxShadow(
      offset: Offset(0, 6.0),
      blurRadius: 8.0,
      color: FluentShadowTokens.lightShadowKey,
    ),
  ];
  static const List<BoxShadow> _darkShadow8 = [
    BoxShadow(
      offset: Offset(0, 1.0),
      blurRadius: 2.0,
      color: FluentShadowTokens.darkShadowAmbient,
    ),
    BoxShadow(
      offset: Offset(0, 6.0),
      blurRadius: 8.0,
      color: FluentShadowTokens.darkShadowKey,
    ),
  ];

  // Shadow 16 (顶部干净，下方集中垂直延伸 12px)
  static const List<BoxShadow> _lightShadow16 = [
    BoxShadow(
      offset: Offset(0, 2.0),
      blurRadius: 4.0,
      color: FluentShadowTokens.lightShadowAmbient,
    ),
    BoxShadow(
      offset: Offset(0, 12.0),
      blurRadius: 16.0,
      color: FluentShadowTokens.lightShadowKeyDarker,
    ),
  ];
  static const List<BoxShadow> _darkShadow16 = [
    BoxShadow(
      offset: Offset(0, 2.0),
      blurRadius: 4.0,
      color: FluentShadowTokens.darkShadowAmbient,
    ),
    BoxShadow(
      offset: Offset(0, 12.0),
      blurRadius: 16.0,
      color: FluentShadowTokens.darkShadowKeyDarker,
    ),
  ];

  // Shadow 28 (模态面板下沉阴影)
  static const List<BoxShadow> _lightShadow28 = [
    BoxShadow(
      offset: Offset(0, 4.0),
      blurRadius: 8.0,
      color: FluentShadowTokens.lightShadowAmbientDarker,
    ),
    BoxShadow(
      offset: Offset(0, 20.0),
      blurRadius: 28.0,
      color: FluentShadowTokens.lightShadowKeyDarker,
    ),
  ];
  static const List<BoxShadow> _darkShadow28 = [
    BoxShadow(
      offset: Offset(0, 4.0),
      blurRadius: 8.0,
      color: FluentShadowTokens.darkShadowAmbientDarker,
    ),
    BoxShadow(
      offset: Offset(0, 20.0),
      blurRadius: 28.0,
      color: FluentShadowTokens.darkShadowKeyDarker,
    ),
  ];

  // Shadow 64 (大悬浮层下沉阴影)
  static const List<BoxShadow> _lightShadow64 = [
    BoxShadow(
      offset: Offset(0, 8.0),
      blurRadius: 16.0,
      color: FluentShadowTokens.lightShadowAmbientDarker,
    ),
    BoxShadow(
      offset: Offset(0, 48.0),
      blurRadius: 64.0,
      color: FluentShadowTokens.lightShadowKeyDarker,
    ),
  ];
  static const List<BoxShadow> _darkShadow64 = [
    BoxShadow(
      offset: Offset(0, 8.0),
      blurRadius: 16.0,
      color: FluentShadowTokens.darkShadowAmbientDarker,
    ),
    BoxShadow(
      offset: Offset(0, 48.0),
      blurRadius: 64.0,
      color: FluentShadowTokens.darkShadowKeyDarker,
    ),
  ];
}
