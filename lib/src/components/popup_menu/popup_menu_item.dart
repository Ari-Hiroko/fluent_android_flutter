import 'package:flutter/material.dart';

/// 定义弹出菜单项的选择行为模式
enum FluentItemCheckableBehavior {
  /// 不显示选择指示器 (标准菜单项)
  none,

  /// 单选模式 (显示 Radio 按钮，同组互斥)
  single,

  /// 多选模式 (显示 Checkbox，独立开关)
  all,
}

/// Fluent 2 弹出菜单项数据模型 [FluentPopupMenuItem]
class FluentPopupMenuItem<T> {
  /// 项唯一标识值 (用于在选中的回调中识别)
  final T? value;

  /// 菜单项标题文字
  final String title;

  /// 菜单项图标 (Widget 或 IconData)
  final Widget? icon;

  /// 是否处于选中状态
  bool isChecked;

  /// 是否在此项下方显示分割线 (showDividerBelow)
  final bool showDividerBelow;

  /// 无障碍角色描述信息
  final String? roleDescription;

  /// 是否可用/可点击
  final bool enabled;

  /// 自定义点击事件回调
  final VoidCallback? onTap;

  FluentPopupMenuItem({
    this.value,
    required this.title,
    this.icon,
    this.isChecked = false,
    this.showDividerBelow = false,
    this.roleDescription,
    this.enabled = true,
    this.onTap,
  });

  /// 链式复制更新状态
  FluentPopupMenuItem<T> copyWith({
    T? value,
    String? title,
    Widget? icon,
    bool? isChecked,
    bool? showDividerBelow,
    String? roleDescription,
    bool? enabled,
    VoidCallback? onTap,
  }) {
    return FluentPopupMenuItem<T>(
      value: value ?? this.value,
      title: title ?? this.title,
      icon: icon ?? this.icon,
      isChecked: isChecked ?? this.isChecked,
      showDividerBelow: showDividerBelow ?? this.showDividerBelow,
      roleDescription: roleDescription ?? this.roleDescription,
      enabled: enabled ?? this.enabled,
      onTap: onTap ?? this.onTap,
    );
  }
}
