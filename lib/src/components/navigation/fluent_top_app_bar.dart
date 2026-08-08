import 'package:flutter/material.dart';
import '../../theme/fluent_colors.dart';
import '../../theme/fluent_theme.dart';

/// TopAppBar 的尺寸形态 [FluentAppBarSize]
enum FluentAppBarSize {
  /// 标准单行或带副标题的高度 (56dp/64dp)
  small,

  /// 中等高度 (72dp)
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

  /// 自定义风格 (当使用自定义颜色时使用)
  custom,
}

/// TopAppBar 标题的对齐方式 [FluentTitleAlignment]
enum FluentTitleAlignment {
  /// 左对齐
  left,

  /// 居中对齐
  center,

  /// 右对齐
  right,
}

typedef TitleAlignment = FluentTitleAlignment;

/// Fluent 2 导航栏组件 [FluentTopAppBar]
///
/// 移植自 Android Kotlin Tokenized AppBar.kt 与 AppBarLayout.kt
/// 支持自定义背景/前景/次要文本/边框颜色并具备智能对比度自适应能力，
/// 并包含按钮间距 (actionsSpacing)、居中标题 (centerTitle)、阴影 (elevation) 等操作体验优化。
class FluentTopAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// 主标题
  final String title;

  /// 副标题 (可选)
  final String? subTitle;

  /// 尺寸形态 (small, medium, large)
  final FluentAppBarSize appBarSize;

  /// 风格样式 (neutral, brand, custom)
  final FluentStyle style;

  /// 自定义背景颜色 (可选。如果不传，则根据 style 与 FluentTheme 自适应)
  final Color? backgroundColor;

  /// 自定义前景色 / 主文本与图标颜色 (可选。如果不传，且传入了 backgroundColor 时，会根据背景亮度自动计算高对比度前景色)
  final Color? foregroundColor;

  /// 自定义副标题与次要文本颜色 (可选。如果不传，自动根据 foregroundColor 计算透明度自适应)
  final Color? secondaryForegroundColor;

  /// 自定义底部边框颜色 (可选。如果不传，自动基于前景色/主题自适应)
  final Color? borderColor;

  /// 导航按钮 (位于最左侧，如返回箭头或抽屉菜单图标)
  final List<Widget>? leftActions;

  /// 导航按钮 Padding
  final EdgeInsetsGeometry leftActionsPadding;

  /// 左侧操作按钮之间的间距 (如果未指定，默认使用 [actionsSpacing])
  final double? leftActionsSpacing;

  /// 标示 Icon / Logo (紧接导航按钮右侧)
  final Widget? logo;

  /// 右侧操作按钮组 (rightActions)
  final List<Widget>? rightActions;

  /// 右侧操作按钮组 Padding
  final EdgeInsetsGeometry rightActionsPadding;

  /// 右侧操作按钮之间的间距 (如果未指定，默认使用 [actionsSpacing])
  final double? rightActionsSpacing;

  /// 操作按钮组通用的间距 (默认 4.0dp)
  final double actionsSpacing;

  /// 标题对齐方式 (left, center, right)
  final FluentTitleAlignment titleAlignment;

  /// 是否居中显示标题 (为兼容保留，若为 true 则等效于 titleAlignment = FluentTitleAlignment.center)
  final bool centerTitle;

  /// 标题与两侧控件之间的间距 (默认 8.0dp)
  final double titleSpacing;

  /// 嵌套在 AppBar 内部的搜索栏 Widget (可选)
  final Widget? searchBar;

  /// 底部扩展视图 (如 TabBar / PillBar 可选)
  final Widget? bottomBar;

  /// 是否在底部显示 1dp 分割线 (默认在无 searchBar/bottomBar 时开启)
  final bool showBottomBorder;

  /// 阴影高度 (Elevation)
  final double elevation;

  /// 阴影颜色
  final Color? shadowColor;

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
    this.backgroundColor,
    this.foregroundColor,
    this.secondaryForegroundColor,
    this.borderColor,
    this.leftActions,
    this.leftActionsPadding = const EdgeInsets.all(0),
    this.leftActionsSpacing,
    this.logo,
    this.rightActions,
    this.rightActionsPadding = const EdgeInsets.all(0),
    this.rightActionsSpacing,
    this.actionsSpacing = 4.0,
    this.titleAlignment = FluentTitleAlignment.left,
    this.centerTitle = false,
    this.titleSpacing = 8.0,
    this.searchBar,
    this.bottomBar,
    this.showBottomBorder = true,
    this.elevation = 0.0,
    this.shadowColor,
    this.onTitleTap,
    this.enableCursor = true,
  });

  bool get _hasSubTitle => subTitle != null && subTitle!.isNotEmpty;

  FluentTitleAlignment get _effectiveTitleAlignment {
    if (centerTitle) return FluentTitleAlignment.center;
    return titleAlignment;
  }

  @override
  Size get preferredSize {
    double baseHeight;
    switch (appBarSize) {
      case FluentAppBarSize.small:
        baseHeight = _hasSubTitle ? 64.0 : 56.0;
        break;
      case FluentAppBarSize.medium:
        baseHeight = _hasSubTitle ? 72.0 : 64.0;
        break;
      case FluentAppBarSize.large:
        baseHeight = 96.0;
        break;
    }
    if (searchBar != null) baseHeight += 56.0;
    if (bottomBar != null) baseHeight += 56.0;
    return Size.fromHeight(baseHeight);
  }

  /// 自适应计算背景颜色
  Color _getEffectiveBackgroundColor(FluentThemeData theme) {
    if (backgroundColor != null) {
      return backgroundColor!;
    }
    if (style == FluentStyle.brand) {
      return theme.primaryColor;
    }
    return theme.backgroundColor;
  }

  /// 自适应计算前景色 (主文本 & 图标)
  Color _getEffectiveForegroundColor(FluentThemeData theme, Color computedBg) {
    if (foregroundColor != null) {
      return foregroundColor!;
    }
    // 若传入了自定义背景色，则按亮度自动自适应高对比度前景色
    if (backgroundColor != null) {
      final double luminance = computedBg.computeLuminance();
      return luminance > 0.45 ? FluentColors.gray900 : FluentColors.white;
    }
    if (style == FluentStyle.brand) {
      return FluentColors.white;
    }
    return theme.foregroundColor;
  }

  /// 自适应计算副标题 & 次要文本前景色
  Color _getEffectiveSecondaryForegroundColor(
    FluentThemeData theme,
    Color computedFg,
  ) {
    if (secondaryForegroundColor != null) {
      return secondaryForegroundColor!;
    }
    if (foregroundColor != null || backgroundColor != null) {
      return computedFg.withValues(alpha: 0.7);
    }
    if (style == FluentStyle.brand) {
      return FluentColors.white.withValues(alpha: 0.75);
    }
    return theme.foregroundSecondaryColor;
  }

  /// 自适应计算底部边框颜色
  Color _getEffectiveBorderColor(FluentThemeData theme, Color computedFg) {
    if (borderColor != null) {
      return borderColor!;
    }
    if (backgroundColor != null) {
      return computedFg.withValues(alpha: 0.12);
    }
    if (style == FluentStyle.brand) {
      return Colors.white.withValues(alpha: 0.16);
    }
    return theme.dividerColor;
  }

  /// 辅助构建带有间距 spacing 的 actions 列表
  List<Widget> _buildSpacedActions(List<Widget> actions, double spacing) {
    if (actions.isEmpty) return [];
    if (spacing <= 0 || actions.length == 1) return actions;

    final List<Widget> spaced = [];
    for (int i = 0; i < actions.length; i++) {
      if (i > 0) {
        spaced.add(SizedBox(width: spacing));
      }
      spaced.add(actions[i]);
    }
    return spaced;
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    final Color effectiveBg = _getEffectiveBackgroundColor(theme);
    final Color effectiveFg = _getEffectiveForegroundColor(theme, effectiveBg);
    final Color effectiveSecondaryFg = _getEffectiveSecondaryForegroundColor(
      theme,
      effectiveFg,
    );
    final Color effectiveBorder = _getEffectiveBorderColor(theme, effectiveFg);

    final double effectiveLeftSpacing = leftActionsSpacing ?? actionsSpacing;
    final double effectiveRightSpacing = rightActionsSpacing ?? actionsSpacing;

    double mainRowHeight;
    switch (appBarSize) {
      case FluentAppBarSize.small:
        mainRowHeight = _hasSubTitle ? 64.0 : 56.0;
        break;
      case FluentAppBarSize.medium:
        mainRowHeight = _hasSubTitle ? 72.0 : 64.0;
        break;
      case FluentAppBarSize.large:
        mainRowHeight = 96.0;
        break;
    }

    final bool shouldDrawBorder =
        showBottomBorder && searchBar == null && bottomBar == null;

    CrossAxisAlignment titleCrossAxis;
    TextAlign titleTextAlign;
    switch (_effectiveTitleAlignment) {
      case FluentTitleAlignment.left:
        titleCrossAxis = CrossAxisAlignment.start;
        titleTextAlign = TextAlign.start;
        break;
      case FluentTitleAlignment.center:
        titleCrossAxis = CrossAxisAlignment.center;
        titleTextAlign = TextAlign.center;
        break;
      case FluentTitleAlignment.right:
        titleCrossAxis = CrossAxisAlignment.end;
        titleTextAlign = TextAlign.end;
        break;
    }

    Widget titleContent = Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: titleCrossAxis,
      children: [
        Text(
          title,
          style: TextStyle(
            fontSize: appBarSize == FluentAppBarSize.large ? 20.0 : 16.0,
            fontWeight: FontWeight.bold,
            color: effectiveFg,
            height: 1.2,
          ),
          maxLines: 1,
          overflow: TextOverflow.ellipsis,
          textAlign: titleTextAlign,
        ),
        if (_hasSubTitle) ...[
          const SizedBox(height: 2.0),
          Text(
            subTitle!,
            style: TextStyle(
              fontSize: 12.0,
              color: effectiveSecondaryFg,
              height: 1.2,
            ),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            textAlign: titleTextAlign,
          ),
        ],
      ],
    );

    Widget titleWidget = Expanded(
      child: onTitleTap != null
          ? FluentInkWell(
              onTap: onTitleTap,
              hoverColor: effectiveFg.withValues(alpha: 0.06),
              splashColor: effectiveFg.withValues(alpha: 0.12),
              borderRadius: BorderRadius.circular(6.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 2.0,
                ),
                child: titleContent,
              ),
            )
          : Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 4.0,
                vertical: 2.0,
              ),
              child: titleContent,
            ),
    );

    Widget mainRowContent = Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        // 1. 左侧导航 Actions
        if (leftActions != null && leftActions!.isNotEmpty) ...[
          MouseRegion(
            cursor: enableCursor
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
            child: Padding(
              padding: leftActionsPadding,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: _buildSpacedActions(
                  leftActions!,
                  effectiveLeftSpacing,
                ),
              ),
            ),
          ),
        ],

        // 2. Logo
        if (logo != null) ...[SizedBox(width: titleSpacing), logo!],

        SizedBox(width: titleSpacing),

        // 3. 标题与副标题区
        titleWidget,

        SizedBox(width: titleSpacing),

        // 4. 右侧 Actions
        if (rightActions != null && rightActions!.isNotEmpty) ...[
          MouseRegion(
            cursor: enableCursor
                ? SystemMouseCursors.click
                : SystemMouseCursors.basic,
            child: Padding(
              padding: rightActionsPadding,
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: _buildSpacedActions(
                  rightActions!,
                  effectiveRightSpacing,
                ),
              ),
            ),
          ),
        ],
      ],
    );

    // 统一配置全局 IconTheme 和 IconButtonTheme 确保动作按钮获得一致样式与适宜的触控/间距
    Widget content = IconTheme(
      data: IconThemeData(color: effectiveFg, size: 24.0),
      child: IconButtonTheme(
        data: IconButtonThemeData(
          style: IconButton.styleFrom(
            foregroundColor: effectiveFg,
            disabledForegroundColor: effectiveFg.withValues(alpha: 0.38),
            padding: const EdgeInsets.all(8.0),
            minimumSize: const Size(40.0, 40.0),
            maximumSize: const Size(48.0, 48.0),
            highlightColor: effectiveFg.withValues(alpha: 0.1),
            hoverColor: effectiveFg.withValues(alpha: 0.08),
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 主栏 Row
            SizedBox(
              height: mainRowHeight - (shouldDrawBorder ? 1.0 : 0.0),
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4.0),
                child: mainRowContent,
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
    );

    return Container(
      decoration: BoxDecoration(
        color: effectiveBg,
        border: shouldDrawBorder
            ? Border(bottom: BorderSide(color: effectiveBorder, width: 1.0))
            : null,
        boxShadow: elevation > 0.0
            ? [
                BoxShadow(
                  color: shadowColor ?? Colors.black.withValues(alpha: 0.12),
                  blurRadius: elevation * 2,
                  offset: Offset(0, elevation),
                ),
              ]
            : null,
      ),
      child: SafeArea(
        bottom: false,
        child: Container(
          constraints: BoxConstraints(minHeight: preferredSize.height),
          child: content,
        ),
      ),
    );
  }
}
