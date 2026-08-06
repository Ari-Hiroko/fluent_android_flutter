import 'package:flutter/material.dart';
import '../../theme/fluent_colors.dart';
import '../../theme/fluent_theme.dart';
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
class FluentAppBarLayout extends StatelessWidget implements PreferredSizeWidget {
  /// 主标题
  final String title;

  /// 副标题 (可选)
  final String? subTitle;

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

  /// 风格样式 (neutral, brand)
  final FluentStyle style;

  /// 顶部右侧动作控件组 (Actions)
  final List<Widget>? actions;

  /// 底部 Accessory View 槽位 (如搜索栏 SearchBar、PillBar 或 TabBar)
  final Widget? accessoryView;

  /// 是否改变鼠标光标
  final bool enableCursor;

  const FluentAppBarLayout({
    super.key,
    required this.title,
    this.subTitle,
    this.navigationIconType = FluentNavigationIconType.backIcon,
    this.avatarCustomImage,
    this.avatarName = 'Mauricio August',
    this.onNavigationIconClick,
    this.scrollBehavior = FluentScrollBehavior.collapseToolbar,
    this.style = FluentStyle.neutral,
    this.actions,
    this.accessoryView,
    this.enableCursor = true,
  });

  @override
  Size get preferredSize {
    double h = subTitle != null ? 64.0 : 56.0;
    if (accessoryView != null) h += 56.0;
    return Size.fromHeight(h);
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isBrand = style == FluentStyle.brand;

    Widget? leadingWidget;

    switch (navigationIconType) {
      case FluentNavigationIconType.none:
        leadingWidget = null;
        break;
      case FluentNavigationIconType.avatar:
        leadingWidget = Padding(
          padding: const EdgeInsets.all(8.0),
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
          icon: Icon(
            Icons.arrow_back,
            color: isBrand ? FluentColors.white : theme.foregroundColor,
          ),
          onPressed: onNavigationIconClick ?? () => Navigator.maybePop(context),
        );
        break;
    }

    return FluentTopAppBar(
      title: title,
      subTitle: subTitle,
      style: style,
      navigationIcon: leadingWidget,
      actions: actions,
      bottomBar: accessoryView,
      enableCursor: enableCursor,
    );
  }
}
