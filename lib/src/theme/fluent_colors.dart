import 'package:flutter/material.dart';

/// Fluent 2 Android 官方调色板与 Theme Semantic Colors
/// (基于 fluentui-android 源码与 FluentUI.md 规范)
class FluentColors {
  FluentColors._();

  // --- 基础通信与品牌色 (Communication & Brand Colors) ---
  static const Color communicationBlue = Color(0xFF0F6CBD); // primaryColor
  static const Color communicationShade10 = Color(0xFF0E61AA);
  static const Color communicationShade20 = Color(0xFF0C5290);
  static const Color communicationShade30 = Color(0xFF0A4172);
  static const Color communicationTint10 = Color(0xFF277AC2);
  static const Color communicationTint20 = Color(0xFF479EF5);
  static const Color communicationTint30 = Color(0xFF74B4F7);
  static const Color communicationTint40 = Color(0xFFA6D1FA);

  // --- 中性灰色调 (Neutral Gray Colors) ---
  static const Color gray900 = Color(0xFF242424); // Title & Primary text
  static const Color gray800 = Color(0xFF2E2E2E);
  static const Color gray700 = Color(0xFF333333);
  static const Color gray600 = Color(0xFF424242);
  static const Color gray500 = Color(0xFF616161); // Subtitle & Secondary text
  static const Color gray400 = Color(0xFF707070); // Secondary Icons
  static const Color gray300 = Color(0xFFA6A6A6); // Checkbox / Radio tint
  static const Color gray200 = Color(0xFFD1D1D1); // Borders & Strokes
  static const Color gray100 = Color(0xFFE0E0E0); // Dividers & Pressed background
  static const Color gray50 = Color(0xFFF5F5F5);  // Card / Light background
  static const Color white = Color(0xFFFFFFFF);

  // --- 暗黑模式中性色 (Dark Theme Neutrals) ---
  static const Color darkBackground1 = Color(0xFF1F1F1F);
  static const Color darkBackground2 = Color(0xFF292929); // Popup background dark
  static const Color darkBackgroundPressed = Color(0xFF383838);
  static const Color darkForeground1 = Color(0xFFFFFFFF);
  static const Color darkForeground2 = Color(0xFFD6D6D6);
  static const Color darkDivider = Color(0xFF333333);

  // --- 语义化 菜单 (PopupMenu) Colors ---
  static const Color popupMenuBackgroundLight = white;
  static const Color popupMenuBackgroundDark = darkBackground2;

  static const Color popupMenuItemPressedLight = Color(0xFFF0F0F0);
  static const Color popupMenuItemPressedDark = darkBackgroundPressed;

  static const Color popupMenuItemTitleColorLight = gray900;
  static const Color popupMenuItemTitleColorDark = darkForeground1;

  static const Color popupMenuItemForegroundSelectedLight = communicationBlue;
  static const Color popupMenuItemForegroundSelectedDark = communicationTint20;

  static const Color popupMenuItemIconTintLight = gray500;
  static const Color popupMenuItemIconTintDark = darkForeground2;

  static const Color popupMenuItemCheckboxTintLight = gray400;
  static const Color popupMenuItemCheckboxTintDark = gray300;
}
