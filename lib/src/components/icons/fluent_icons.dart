import 'package:flutter/material.dart';

/// Fluent 2 图标封装模型 [FluentIconData]
class FluentIconData {
  final IconData icon;
  final String? contentDescription;
  final double defaultSize;

  const FluentIconData(
    this.icon, {
    this.contentDescription,
    this.defaultSize = 24.0,
  });
}

/// Fluent 2 图标字典与渲染辅助工具类 [FluentIcons]
///
/// 移植自 Android Kotlin fluentui_icons.md (__ActionBarIcons, __AvatarIcons, __ListItemIcons, etc.)
class FluentIcons {
  FluentIcons._();

  // 基础常用系统图标映射
  static const IconData arrowBack = Icons.arrow_back;
  static const IconData arrowForward = Icons.arrow_forward;
  static const IconData chevronRight = Icons.chevron_right;
  static const IconData chevronDown = Icons.keyboard_arrow_down;
  static const IconData chevronUp = Icons.keyboard_arrow_up;
  static const IconData search = Icons.search;
  static const IconData clear = Icons.cancel;
  static const IconData check = Icons.check;
  static const IconData close = Icons.close;
  static const IconData share = Icons.share;
  static const IconData settings = Icons.settings_outlined;
  static const IconData info = Icons.info_outline;
  static const IconData warning = Icons.warning_amber_rounded;
  static const IconData error = Icons.error_outline;
  static const IconData success = Icons.check_circle_outline;

  // 状态与在线 Presence Icon 数据
  static const IconData presenceAvailable = Icons.circle;
  static const IconData presenceAway = Icons.access_time_filled;
  static const IconData presenceBusy = Icons.remove_circle;
  static const IconData presenceDnd = Icons.do_not_disturb_on;
  static const IconData presenceOffline = Icons.radio_button_unchecked;

  /// 构建 Icon Widget
  static Widget icon(
    IconData iconData, {
    Color? color,
    double size = 24.0,
    String? semanticLabel,
  }) {
    return Icon(
      iconData,
      color: color,
      size: size,
      semanticLabel: semanticLabel,
    );
  }
}
