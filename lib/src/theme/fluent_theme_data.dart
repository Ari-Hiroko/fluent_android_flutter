import 'package:flutter/material.dart';
import 'fluent_colors.dart';
import 'fluent_typography.dart';

/// Fluent 2 Android 主题配置数据 [FluentThemeData]
///
/// 严格映射 FluentUI Android XML themes.xml / attrs.xml 属性名
class FluentThemeData {
  final Brightness brightness;

  // Theme Semantic Colors
  final Color primaryColor; // colorPrimary
  final Color backgroundColor; // fluentuiBackgroundColor
  final Color backgroundPressedColor; // fluentuiBackgroundPressedColor
  final Color foregroundColor; // fluentuiForegroundColor
  final Color foregroundSelectedColor; // fluentuiForegroundSelectedColor
  final Color foregroundSecondaryColor; // fluentuiForegroundSecondaryColor
  final Color dividerColor; // fluentuiDividerColor

  // Popup Menu Semantic Colors (themes.xml lines 217-226)
  final Color popupMenuBackgroundColor; // fluentuiPopupMenuBackgroundColor
  final Color
  popupMenuBackgroundPressedColor; // fluentuiPopupMenuBackgroundPressedColor
  final Color popupMenuItemTitleColor; // fluentuiPopupMenuItemTitleColor
  final Color
  popupMenuItemForegroundSelectedColor; // fluentuiPopupMenuItemForegroundSelectedColor
  final Color popupMenuItemIconTint; // fluentuiPopupMenuItemIconTint
  final Color popupMenuItemCheckboxTint; // fluentuiPopupMenuItemCheckboxTint
  final Color
  popupMenuItemRadiobuttonTint; // fluentuiPopupMenuItemRadiobuttonTint

  final double cornerRadius; // fluentui_popup_menu_corner_radius (8.0 / 4.0)
  final double elevation;

  const FluentThemeData({
    required this.brightness,
    required this.primaryColor,
    required this.backgroundColor,
    required this.backgroundPressedColor,
    required this.foregroundColor,
    required this.foregroundSelectedColor,
    required this.foregroundSecondaryColor,
    required this.dividerColor,
    required this.popupMenuBackgroundColor,
    required this.popupMenuBackgroundPressedColor,
    required this.popupMenuItemTitleColor,
    required this.popupMenuItemForegroundSelectedColor,
    required this.popupMenuItemIconTint,
    required this.popupMenuItemCheckboxTint,
    required this.popupMenuItemRadiobuttonTint,
    this.cornerRadius = 8.0,
    this.elevation = 8.0,
  });

  /// Fluent 2 浅色主题 (Theme.FluentUI Light)
  factory FluentThemeData.light() {
    return const FluentThemeData(
      brightness: Brightness.light,
      primaryColor: FluentColors.communicationBlue,
      backgroundColor: FluentColors.white,
      backgroundPressedColor: FluentColors.gray100,
      foregroundColor: FluentColors.gray900,
      foregroundSelectedColor: FluentColors.communicationBlue,
      foregroundSecondaryColor: FluentColors.gray500,
      dividerColor: FluentColors.gray100,
      popupMenuBackgroundColor: FluentColors.popupMenuBackgroundLight,
      popupMenuBackgroundPressedColor: FluentColors.popupMenuItemPressedLight,
      popupMenuItemTitleColor: FluentColors.popupMenuItemTitleColorLight,
      popupMenuItemForegroundSelectedColor:
          FluentColors.popupMenuItemForegroundSelectedLight,
      popupMenuItemIconTint: FluentColors.popupMenuItemIconTintLight,
      popupMenuItemCheckboxTint: FluentColors.popupMenuItemCheckboxTintLight,
      popupMenuItemRadiobuttonTint: FluentColors.popupMenuItemCheckboxTintLight,
      cornerRadius: 8.0,
      elevation: 8.0,
    );
  }

  /// Fluent 2 深色主题 (Theme.FluentUI Dark)
  factory FluentThemeData.dark() {
    return const FluentThemeData(
      brightness: Brightness.dark,
      primaryColor: FluentColors.communicationBlue,
      backgroundColor: FluentColors.darkBackground1,
      backgroundPressedColor: FluentColors.darkBackgroundPressed,
      foregroundColor: FluentColors.darkForeground1,
      foregroundSelectedColor: FluentColors.communicationTint20,
      foregroundSecondaryColor: FluentColors.darkForeground2,
      dividerColor: FluentColors.darkDivider,
      popupMenuBackgroundColor: FluentColors.popupMenuBackgroundDark,
      popupMenuBackgroundPressedColor: FluentColors.popupMenuItemPressedDark,
      popupMenuItemTitleColor: FluentColors.popupMenuItemTitleColorDark,
      popupMenuItemForegroundSelectedColor:
          FluentColors.popupMenuItemForegroundSelectedDark,
      popupMenuItemIconTint: FluentColors.popupMenuItemIconTintDark,
      popupMenuItemCheckboxTint: FluentColors.popupMenuItemCheckboxTintDark,
      popupMenuItemRadiobuttonTint: FluentColors.popupMenuItemCheckboxTintDark,
      cornerRadius: 8.0,
      elevation: 12.0,
    );
  }

  /// 根据种子颜色 [seedColor] 动态衍生与生成 Fluent 2 主题配置 [FluentThemeData]
  ///
  /// 对标 Material 3 的 [ColorScheme.fromSeed]，能根据单一种子主调颜色自动匹配出配套的品牌前景色、选中态高亮与深浅色模式。
  factory FluentThemeData.fromSeed({
    required Color seedColor,
    Brightness brightness = Brightness.light,
    Color? backgroundColor,
    Color? foregroundColor,
    double cornerRadius = 8.0,
    double elevation = 8.0,
  }) {
    final isDark = brightness == Brightness.dark;
    final baseTheme = isDark ? FluentThemeData.dark() : FluentThemeData.light();
    final colorScheme = ColorScheme.fromSeed(
      seedColor: seedColor,
      brightness: brightness,
    );

    final Color primary = seedColor;
    final Color selectedColor = isDark ? colorScheme.primary : primary;

    return FluentThemeData(
      brightness: brightness,
      primaryColor: primary,
      backgroundColor: backgroundColor ?? baseTheme.backgroundColor,
      backgroundPressedColor: baseTheme.backgroundPressedColor,
      foregroundColor: foregroundColor ?? baseTheme.foregroundColor,
      foregroundSelectedColor: selectedColor,
      foregroundSecondaryColor: baseTheme.foregroundSecondaryColor,
      dividerColor: baseTheme.dividerColor,
      popupMenuBackgroundColor: baseTheme.popupMenuBackgroundColor,
      popupMenuBackgroundPressedColor: baseTheme.popupMenuBackgroundPressedColor,
      popupMenuItemTitleColor: baseTheme.popupMenuItemTitleColor,
      popupMenuItemForegroundSelectedColor: selectedColor,
      popupMenuItemIconTint: baseTheme.popupMenuItemIconTint,
      popupMenuItemCheckboxTint: baseTheme.popupMenuItemCheckboxTint,
      popupMenuItemRadiobuttonTint: baseTheme.popupMenuItemRadiobuttonTint,
      cornerRadius: cornerRadius,
      elevation: isDark ? 12.0 : elevation,
    );
  }

  /// 转换为 Material ThemeData，仅用于为 Flutter 控件提供通用配置
  ThemeData toMaterialTheme() {
    final isDark = brightness == Brightness.dark;
    return ThemeData(
      useMaterial3: true,
      brightness: brightness,
      colorScheme: ColorScheme.fromSeed(
        seedColor: primaryColor,
        brightness: brightness,
        surface: backgroundColor,
        onSurface: foregroundColor,
      ),
      scaffoldBackgroundColor: isDark
          ? FluentColors.darkBackground1
          : FluentColors.gray50,
      dividerColor: dividerColor,
      fontFamily: FluentTypography.fontFamily,
    );
  }
}
