import 'package:flutter/material.dart';

/// Fluent 2 Android 全局规则 Tokens [FluentGlobalTokens]
/// 移植自 com.microsoft.fluentui.theme.token.FluentGlobalTokens.kt
class FluentGlobalTokens {
  FluentGlobalTokens._();

  // --- Corner Radius Tokens (圆角规范) ---
  static const double cornerRadiusNone = 0.0;
  static const double cornerRadius20 = 2.0;
  static const double cornerRadius40 = 4.0;
  static const double cornerRadius80 = 8.0;
  static const double cornerRadius120 = 12.0;
  static const double cornerRadius160 = 16.0;
  static const double cornerRadius240 = 24.0;
  static const double cornerRadiusCircular = 999.0;

  // --- Elevation Tokens (阴影高度规范) ---
  static const double shadow02 = 2.0;
  static const double shadow04 = 4.0;
  static const double shadow08 = 8.0;
  static const double shadow14 = 14.0;
  static const double shadow28 = 28.0;
  static const double shadow64 = 64.0;

  // --- Icon Size Tokens (图标尺寸规范) ---
  static const double iconSize120 = 12.0;
  static const double iconSize160 = 16.0;
  static const double iconSize200 = 20.0;
  static const double iconSize240 = 24.0; // 默认标准 Icon 尺寸
  static const double iconSize280 = 28.0;
  static const double iconSize320 = 32.0;
  static const double iconSize400 = 40.0;
  static const double iconSize480 = 48.0;

  // --- Stroke Width Tokens (边框粗细规范) ---
  static const double strokeWidth05 = 0.5;
  static const double strokeWidth10 = 1.0;
  static const double strokeWidth15 = 1.5;
  static const double strokeWidth20 = 2.0;
  static const double strokeWidth30 = 3.0;
  static const double strokeWidth40 = 4.0;

  // --- Size & Spacing Tokens (间距与尺寸规范) ---
  static const double sizeNone = 0.0;
  static const double size20 = 2.0;
  static const double size40 = 4.0;
  static const double size80 = 8.0;
  static const double size120 = 12.0;
  static const double size160 = 16.0;
  static const double size200 = 20.0;
  static const double size240 = 24.0;
  static const double size280 = 28.0;
  static const double size320 = 32.0;
  static const double size360 = 36.0;
  static const double size400 = 40.0;

  // --- Shared Color Sets (共享全局色彩集合) ---
  static const Color sharedRed = Color(0xFFD13438);
  static const Color sharedOrange = Color(0xFFF7630C);
  static const Color sharedYellow = Color(0xFFFDE300);
  static const Color sharedGreen = Color(0xFF107C10);
  static const Color sharedCyan = Color(0xFF0099BC);
  static const Color sharedBlue = Color(0xFF0078D4);
  static const Color sharedPurple = Color(0xFF5C2E91);
  static const Color sharedMagenta = Color(0xFFBF0077);
  static const Color sharedPink = Color(0xFFE43BA6);
  static const Color sharedCharcoal = Color(0xFF393939);
}
