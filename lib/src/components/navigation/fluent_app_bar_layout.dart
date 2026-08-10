import 'package:flutter/material.dart';
import '../avatar/fluent_avatar.dart';
import 'fluent_top_app_bar.dart';

/// 滚动行为类型 [FluentScrollBehavior]
///
/// 完全对齐 Kotlin AppBarLayout.ScrollBehavior (NONE, COLLAPSE_TOOLBAR, PIN)
enum FluentScrollBehavior {
  /// 不做滚动隐退
  none,

  /// 随列表向上滚动隐退折叠 Toolbar
  collapseToolbar,

  /// 固定 Pin 吸顶 Toolbar
  pin,
}

/// 导航图标形态类型 [FluentNavigationIconType]
///
/// 完全对齐 Kotlin AppBarLayoutActivity.NavigationIconType (NONE, AVATAR, BACK_ICON)
enum FluentNavigationIconType {
  /// 无导航图标
  none,

  /// 用户 Person Avatar 头像形态
  avatar,

  /// 返回箭号图标形态
  backIcon,
}

/// Fluent 2 AppBarLayout 容器组件 [FluentAppBarLayout]
///
/// 完全移植自 Android Kotlin AppBarLayout.kt, AppBarLayoutActivity.kt 与 V2AppBarLayoutUITest.kt
class FluentAppBarLayout extends StatelessWidget
    implements PreferredSizeWidget {
  /// 主标题
  final String title;

  /// 副标题 (可选)
  final String? subtitle;

  /// 导航图标形态 (none, avatar, backIcon)
  final FluentNavigationIconType navigationIconType;

  /// 头像图片 URL 或图像路径 (当 navigationIconType 为 avatar 时可选)
  final String? avatarCustomImage;

  /// 头像文字简称 (当 navigationIconType 为 avatar 时默认)
  final String avatarName;

  /// 导航按钮点击回调
  final VoidCallback? onNavigationIconClick;

  /// 滚动行为控制 (none, collapseToolbar, pin)
  final FluentScrollBehavior scrollBehavior;

  /// 风格样式 (neutral, brand, custom)
  final FluentStyle style;

  /// 自定义背景颜色 (可选)
  final Color? backgroundColor;

  /// 自定义前景色 / 主文本与图标颜色 (可选)
  final Color? foregroundColor;

  /// 自定义副文本与次要图标颜色 (可选)
  final Color? secondaryForegroundColor;

  /// 自定义底部边框颜色 (可选)
  final Color? borderColor;

  /// 顶部右侧动作控件组 (Actions)
  final List<Widget>? actions;

  /// 操作按钮组之间的间距 (默认 4.0dp)
  final double actionsSpacing;

  /// 标题对齐方式 (left, center, right)
  final FluentTitleAlignment titleAlignment;

  /// 是否居中显示标题
  final bool centerTitle;

  /// 标题与两侧控件之间的间距 (默认 8.0dp)
  final double titleSpacing;

  /// 底部 Accessory View 槽位 (如搜索栏 SearchBar、PillBar 或 TabBar)
  final Widget? accessoryView;

  /// 是否在底部显示 1dp 分割线
  final bool showBottomBorder;

  /// 阴影高度 (Elevation)
  final double elevation;

  /// 阴影颜色
  final Color? shadowColor;

  /// 是否改变鼠标光标
  final bool enableCursor;

  const FluentAppBarLayout({
    super.key,
    required this.title,
    this.subtitle,
    this.navigationIconType = FluentNavigationIconType.backIcon,
    this.avatarCustomImage,
    this.avatarName = 'Mauricio August',
    this.onNavigationIconClick,
    this.scrollBehavior = FluentScrollBehavior.collapseToolbar,
    this.style = FluentStyle.neutral,
    this.backgroundColor,
    this.foregroundColor,
    this.secondaryForegroundColor,
    this.borderColor,
    this.actions,
    this.actionsSpacing = 4.0,
    this.titleAlignment = FluentTitleAlignment.left,
    this.centerTitle = false,
    this.titleSpacing = 8.0,
    this.accessoryView,
    this.showBottomBorder = true,
    this.elevation = 0.0,
    this.shadowColor,
    this.enableCursor = true,
  });

  @override
  Size get preferredSize {
    double h = subtitle != null ? 64.0 : 56.0;
    if (accessoryView != null) h += 56.0;
    return Size.fromHeight(h);
  }

  @override
  Widget build(BuildContext context) {
    Widget? leadingWidget;

    switch (navigationIconType) {
      case FluentNavigationIconType.none:
        leadingWidget = null;
        break;
      case FluentNavigationIconType.avatar:
        leadingWidget = Padding(
          padding: const EdgeInsets.symmetric(horizontal: 4.0, vertical: 8.0),
          child: GestureDetector(
            onTap: onNavigationIconClick,
            child: FluentAvatar(
              name: avatarName,
              size: FluentAvatarSize.size32,
              image: avatarCustomImage != null
                  ? NetworkImage(avatarCustomImage!)
                  : null,
            ),
          ),
        );
        break;
      case FluentNavigationIconType.backIcon:
        leadingWidget = IconButton(
          mouseCursor: enableCursor
              ? SystemMouseCursors.click
              : SystemMouseCursors.basic,
          icon: const Icon(Icons.arrow_back),
          onPressed: onNavigationIconClick ?? () => Navigator.maybePop(context),
        );
        break;
    }

    return FluentTopAppBar(
      title: title,
      subtitle: subtitle,
      style: style,
      backgroundColor: backgroundColor,
      foregroundColor: foregroundColor,
      secondaryForegroundColor: secondaryForegroundColor,
      borderColor: borderColor,
      leftActions: leadingWidget != null ? [leadingWidget] : null,
      rightActions: actions,
      actionsSpacing: actionsSpacing,
      titleAlignment: titleAlignment,
      centerTitle: centerTitle,
      titleSpacing: titleSpacing,
      bottomBar: accessoryView,
      showBottomBorder: showBottomBorder,
      elevation: elevation,
      shadowColor: shadowColor,
      enableCursor: enableCursor,
    );
  }
}
