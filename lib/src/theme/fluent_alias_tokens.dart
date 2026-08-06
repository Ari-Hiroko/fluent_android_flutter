import 'package:flutter/material.dart';
import 'fluent_colors.dart';
import 'fluent_global_tokens.dart';

/// Fluent 2 Android 别名 Tokens [FluentAliasTokens]
/// 移植自 com.microsoft.fluentui.theme.token.FluentAliasTokens.kt
class FluentAliasTokens {
  final Brightness brightness;

  const FluentAliasTokens({required this.brightness});

  bool get isDark => brightness == Brightness.dark;

  // --- Background Alias Tokens ---
  Color get background1 => isDark ? FluentColors.darkBackground1 : FluentColors.white;
  Color get background1Pressed => isDark ? FluentColors.darkBackgroundPressed : FluentColors.gray100;
  Color get background1Selected => isDark ? FluentColors.darkBackgroundPressed : FluentColors.gray50;

  Color get background2 => isDark ? FluentColors.darkBackground2 : FluentColors.gray50;
  Color get background2Pressed => isDark ? FluentColors.darkBackgroundPressed : FluentColors.gray100;

  Color get background3 => isDark ? const Color(0xFF333333) : FluentColors.gray100;
  Color get backgroundDisabled => isDark ? const Color(0xFF383838) : FluentColors.gray50;
  Color get backgroundInverted => isDark ? FluentColors.white : FluentColors.gray900;

  // --- Foreground Alias Tokens ---
  Color get foreground1 => isDark ? FluentColors.white : FluentColors.gray900;
  Color get foreground2 => isDark ? FluentColors.darkForeground2 : FluentColors.gray500;
  Color get foreground3 => isDark ? const Color(0xFFA6A6A6) : FluentColors.gray400;
  Color get foregroundDisable1 => isDark ? const Color(0xFF5C5C5C) : const Color(0xFFBDBDBD);
  Color get foregroundOnColor => FluentColors.white;

  // --- Stroke Alias Tokens ---
  Color get stroke1 => isDark ? const Color(0xFF424242) : FluentColors.gray200;
  Color get stroke2 => isDark ? const Color(0xFF333333) : FluentColors.gray100;
  Color get strokeDisabled => isDark ? const Color(0xFF2E2E2E) : FluentColors.gray50;
  Color get strokeAccessible => isDark ? FluentColors.darkForeground2 : FluentColors.gray500;

  // --- Brand Alias Tokens ---
  Color get brandBackground1 => FluentColors.communicationBlue;
  Color get brandBackground1Pressed => FluentColors.communicationShade20;
  Color get brandBackground1Selected => FluentColors.communicationShade10;
  Color get brandBackgroundTint => isDark ? FluentColors.communicationShade30 : FluentColors.communicationTint40;
  Color get brandBackgroundDisabled => isDark ? const Color(0xFF142E47) : FluentColors.gray100;

  Color get brandForeground1 => isDark ? FluentColors.communicationTint20 : FluentColors.communicationBlue;
  Color get brandForeground1Pressed => isDark ? FluentColors.communicationTint30 : FluentColors.communicationShade10;
  Color get brandForegroundDisabled => isDark ? const Color(0xFF385573) : FluentColors.gray400;

  Color get brandStroke1 => isDark ? FluentColors.communicationTint20 : FluentColors.communicationBlue;

  // --- Status Alias Tokens ---
  Color get dangerBackground1 => isDark ? const Color(0xFF441215) : const Color(0xFFFDF3F4);
  Color get dangerForeground1 => isDark ? const Color(0xFFEEACB2) : FluentGlobalTokens.sharedRed;

  Color get successBackground1 => isDark ? const Color(0xFF0D280D) : const Color(0xFFF1FAF1);
  Color get successForeground1 => isDark ? const Color(0xFF9FD89F) : FluentGlobalTokens.sharedGreen;

  Color get warningBackground1 => isDark ? const Color(0xFF3D3100) : const Color(0xFFFFFAD6);
  Color get warningForeground1 => isDark ? const Color(0xFFFEE566) : const Color(0xFF817400);
}
