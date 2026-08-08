import 'package:flutter/material.dart';
import 'fluent_global_tokens.dart';
import 'fluent_theme_data.dart';

/// 控件 Token 通用抽象接口 [IControlToken]
abstract class IControlToken {}

/// Control Token 基础定义集合
class ControlTokens {
  ControlTokens._();
}

/// Button Control Tokens
class ButtonTokens implements IControlToken {
  final FluentThemeData theme;
  const ButtonTokens(this.theme);

  Color backgroundRest(bool isPrimary) =>
      isPrimary ? theme.primaryColor : theme.backgroundColor;
  Color backgroundPressed(bool isPrimary) => isPrimary
      ? theme.primaryColor.withAlpha(200)
      : theme.backgroundPressedColor;
  Color backgroundDisabled(bool isPrimary) => theme.dividerColor;

  Color foregroundRest(bool isPrimary) =>
      isPrimary ? Colors.white : theme.foregroundColor;
  Color foregroundDisabled() => theme.foregroundSecondaryColor.withAlpha(128);

  double get cornerRadius => FluentGlobalTokens.cornerRadius80;
  double get minHeight => 40.0;
  EdgeInsets get padding =>
      const EdgeInsets.symmetric(horizontal: 16.0, vertical: 10.0);
}

/// CheckBox & Radio Control Tokens
class ToggleControlTokens implements IControlToken {
  final FluentThemeData theme;
  const ToggleControlTokens(this.theme);

  Color get activeColor => theme.foregroundSelectedColor;
  Color get inactiveColor => theme.popupMenuItemCheckboxTint;
  Color get disabledColor => theme.dividerColor;
  double get size => 20.0;
}

/// Divider Control Tokens
class DividerTokens implements IControlToken {
  final FluentThemeData theme;
  const DividerTokens(this.theme);

  Color get color => theme.dividerColor;
  double get thickness => FluentGlobalTokens.strokeWidth10;
}

/// Badge Control Tokens
class BadgeTokens implements IControlToken {
  final FluentThemeData theme;
  const BadgeTokens(this.theme);

  Color get backgroundColor => theme.foregroundSelectedColor;
  Color get textColor => Colors.white;
  double get height => 16.0;
  double get cornerRadius => FluentGlobalTokens.cornerRadiusCircular;
}

/// Card Control Tokens
class CardTokens implements IControlToken {
  final FluentThemeData theme;
  const CardTokens(this.theme);

  Color get backgroundColor => theme.backgroundColor;
  Color get borderColor => theme.dividerColor;
  double get cornerRadius => FluentGlobalTokens.cornerRadius120;
  double get elevation => FluentGlobalTokens.shadow04;
}

/// TextField Control Tokens
class TextFieldTokens implements IControlToken {
  final FluentThemeData theme;
  const TextFieldTokens(this.theme);

  Color get backgroundColor => theme.backgroundColor;
  Color get focusedBorderColor => theme.foregroundSelectedColor;
  Color get errorBorderColor => FluentGlobalTokens.sharedRed;
  Color get idleBorderColor => theme.dividerColor;
  double get cornerRadius => FluentGlobalTokens.cornerRadius80;
}

/// Snackbar Control Tokens
class SnackbarTokens implements IControlToken {
  final FluentThemeData theme;
  const SnackbarTokens(this.theme);

  Color backgroundColor(dynamic style) {
    final String name = style.toString().split('.').last;
    switch (name) {
      case 'neutral':
        return theme.brightness == Brightness.dark
            ? const Color(0xFF3B3B3B)
            : const Color(0xFF292929);
      case 'contrast':
        return const Color(0xFF111111);
      case 'accent':
      case 'brand':
        return theme.primaryColor;
      case 'success':
        return const Color(0xFF107C41);
      case 'info':
        return const Color(0xFF0078D4);
      case 'warning':
        return const Color(0xFFD83B01);
      case 'danger':
        return const Color(0xFFD13438);
      default:
        return const Color(0xFF292929);
    }
  }

  Color actionTextColor(dynamic style) {
    final String name = style.toString().split('.').last;
    switch (name) {
      case 'neutral':
        return theme.brightness == Brightness.dark
            ? const Color(0xFF2896F3)
            : const Color(0xFF60A5FA);
      case 'contrast':
        return const Color(0xFF2896F3);
      case 'accent':
      case 'brand':
      case 'success':
      case 'info':
      case 'warning':
      case 'danger':
      default:
        return Colors.white;
    }
  }

  Color textColor(dynamic style) => Colors.white;
  Color secondaryTextColor(dynamic style) => Colors.white.withAlpha(204);

  double get cornerRadius => FluentGlobalTokens.cornerRadius80;
  double get elevation => FluentGlobalTokens.shadow14;
}
