import 'package:flutter/material.dart';
import '../../theme/fluent_colors.dart';
import '../../theme/fluent_theme.dart';

/// TopAppBar 的尺寸形态 [FluentAppBarSize]
enum FluentAppBarSize {
  /// 标准单行或带副标题的高度 (56dp/64dp)
  small,

  /// 中等高度 (带次要文本信息)
  medium,

  /// 大标题形态 (包含大号页面标题 96dp)
  large,
}

/// TopAppBar 的风格样式 [FluentStyle]
enum FluentStyle {
  /// 中性风格 (浅色模式下为白色背景，深色模式下为暗灰背景)
  neutral,

  /// 品牌主色风格 (微软通信蓝 #0F6CBD 背景 + 白色前景色)
  brand,
}

/// Fluent 2 导航栏组件 [FluentTopAppBar]
///
/// 移植自 Android Kotlin Tokenized AppBar.kt 与 AppBarLayout.kt
class FluentTopAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// 主标题
  final String title;

  /// 副标题 (可选)
  final String? subTitle;

  /// 尺寸形态 (small, medium, large)
  final FluentAppBarSize appBarSize;

  /// 风格样式 (neutral, brand)
  final FluentStyle style;

  /// 导航按钮 (位于最左侧，如返回箭头或抽屉菜单图标)
  final Widget? navigationIcon;

  /// 标示 Icon / Logo (紧接导航按钮右侧)
  final Widget? logo;

  /// 右侧操作按钮组 (Actions)
  final List<Widget>? actions;

  /// 嵌套在 AppBar 内部的搜索栏 Widget (可选)
  final Widget? searchBar;

  /// 底部扩展视图 (如 TabBar / PillBar 可选)
  final Widget? bottomBar;

  /// 是否在底部显示 1dp 分割线 (默认在无 searchBar/bottomBar 时开启)
  final bool showBottomBorder;

  /// 点击标题时的回调
  final VoidCallback? onTitleTap;

  /// 是否改变光标
  final bool enableCursor;

  const FluentTopAppBar({
    super.key,
    required this.title,
    this.subTitle,
    this.appBarSize = FluentAppBarSize.small,
    this.style = FluentStyle.neutral,
    this.navigationIcon,
    this.logo,
    this.actions,
    this.searchBar,
    this.bottomBar,
    this.showBottomBorder = true,
    this.onTitleTap,
    this.enableCursor = true,
  });

  bool get _hasSubTitle => subTitle != null && subTitle!.isNotEmpty;

  @override
  Size get preferredSize {
    double baseHeight = _hasSubTitle ? 64.0 : 56.0;
    if (appBarSize == FluentAppBarSize.large) baseHeight = 96.0;
    if (searchBar != null) baseHeight += 56.0;
    if (bottomBar != null) baseHeight += 56.0;
    return Size.fromHeight(baseHeight);
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isBrand = style == FluentStyle.brand;

    // 背景色计算
    final Color backgroundColor = isBrand
        ? theme.primaryColor
        : theme.backgroundColor;

    // 前景文本与图标颜色计算
    final Color foregroundColor = isBrand
        ? FluentColors.white
        : theme.foregroundColor;

    final Color secondaryForegroundColor = isBrand
        ? FluentColors.white.withAlpha(204)
        : theme.foregroundSecondaryColor;

    final double mainRowHeight = _hasSubTitle ? 64.0 : 56.0;

    return Container(
      decoration: BoxDecoration(
        color: backgroundColor,
        border: (showBottomBorder && searchBar == null && bottomBar == null)
            ? Border(
                bottom: BorderSide(
                  color: isBrand
                      ? Colors.white.withAlpha(40)
                      : theme.dividerColor,
                  width: 1.0,
                ),
              )
            : null,
      ),
      child: SafeArea(
        bottom: false,
        child: Container(
          constraints: BoxConstraints(minHeight: preferredSize.height),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // 主栏 Row (Height 56dp / 64dp)
              SizedBox(
                height:
                    mainRowHeight -
                    (showBottomBorder && searchBar == null && bottomBar == null
                        ? 1.0
                        : 0.0),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Row(
                    children: [
                      // 左侧导航 Icon
                      if (navigationIcon != null)
                        MouseRegion(
                          cursor: enableCursor
                              ? SystemMouseCursors.click
                              : SystemMouseCursors.basic,
                          child: IconTheme(
                            data: IconThemeData(
                              color: foregroundColor,
                              size: 24.0,
                            ),
                            child: navigationIcon!,
                          ),
                        ),

                      // Logo
                      if (logo != null) ...[const SizedBox(width: 8.0), logo!],

                      const SizedBox(width: 8.0),

                      // 标题与副标题区
                      Expanded(
                        child: InkWell(
                          onTap: onTitleTap,
                          borderRadius: BorderRadius.circular(4.0),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                title,
                                style: TextStyle(
                                  fontSize: appBarSize == FluentAppBarSize.large
                                      ? 20.0
                                      : 16.0,
                                  fontWeight: FontWeight.bold,
                                  color: foregroundColor,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                              if (_hasSubTitle) ...[
                                const SizedBox(height: 2.0),
                                Text(
                                  subTitle!,
                                  style: TextStyle(
                                    fontSize: 12.0,
                                    color: secondaryForegroundColor,
                                  ),
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ],
                          ),
                        ),
                      ),

                      // 右侧 Actions 动作图标组
                      if (actions != null && actions!.isNotEmpty)
                        MouseRegion(
                          cursor: enableCursor
                              ? SystemMouseCursors.click
                              : SystemMouseCursors.basic,
                          child: IconTheme(
                            data: IconThemeData(
                              color: foregroundColor,
                              size: 24.0,
                            ),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: actions!,
                            ),
                          ),
                        ),
                    ],
                  ),
                ),
              ),

              // 嵌套搜索栏
              if (searchBar != null)
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 6.0,
                  ),
                  child: searchBar!,
                ),

              // 底部扩展视图
              if (bottomBar != null) ...[bottomBar!],
            ],
          ),
        ),
      ),
    );
  }
}
