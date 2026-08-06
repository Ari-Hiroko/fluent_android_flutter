import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import '../card/fluent_badge.dart';
import 'fluent_top_app_bar.dart';

/// Tab 项文本排布方式 [FluentTabTextAlignment]
///
/// 完全映射自 Android Kotlin TabTextAlignment (VERTICAL, HORIZONTAL, NO_TEXT)
enum FluentTabTextAlignment {
  /// 图标在上方，文字在下方 (Vertical, 高度 56dp)
  vertical,

  /// 图标在左侧，文字在右侧 (Horizontal, 高度 48dp)
  horizontal,

  /// 仅图标无文字 (NoText, 高度 48dp)
  noText,
}

/// Tab 项配置数据模型 [FluentTabItem]
///
/// 完全映射自 Android Kotlin TabData.kt 与 V2TabBarActivity.kt
class FluentTabItem {
  /// 标题文本
  final String title;

  /// 默认 Icon
  final Widget? icon;

  /// 选中态 Icon (选填)
  final Widget? selectedIcon;

  /// 徽章文本 (如 "123+", "99+")
  final String? badgeText;

  /// 自定义 Badge Widget (如 Dot Badge 或 Character Badge)
  final Widget? badge;

  /// 是否启用该选项卡 (默认 true)
  final bool enabled;

  /// 独立点击回调 (可选)
  final VoidCallback? onClick;

  const FluentTabItem({
    required this.title,
    this.icon,
    this.selectedIcon,
    this.badgeText,
    this.badge,
    this.enabled = true,
    this.onClick,
  });
}

/// Fluent 2  TabBar 底部/顶部选项卡组件 [FluentTabBar]
///
/// 完全移植自 Android Kotlin TabBar.kt, TabBarTokens.kt, TabItemTokens.kt 与 V2TabBarActivity.kt
class FluentTabBar extends StatelessWidget {
  /// Tab 项列表
  final List<FluentTabItem> tabs;

  /// 当前选中的索引
  final int selectedIndex;

  /// 选中回调
  final ValueChanged<int>? onTabSelected;

  /// 文本与图标的排布对齐方式 (vertical, horizontal, noText)
  final FluentTabTextAlignment tabTextAlignment;

  /// 风格样式 (neutral, brand，对标 Kotlin TabItemTokens.fluentStyle)
  final FluentStyle style;

  /// 是否在底部显示 2dp 指示线
  final bool showIndicator;

  /// 是否显示顶部 1dp 分割线 (默认对标 Kotlin TabBarTokens.topBorderWidth)
  final bool showTopBorder;

  /// 自定义背景填充颜色 (可选)
  final Color? backgroundColor;

  /// 自定义选中状态前景色 (可选)
  final Color? selectedColor;

  /// 自定义未选中状态前景色 (可选)
  final Color? unselectedColor;

  /// 自定义 2dp 指示条颜色 (可选)
  final Color? indicatorColor;

  /// 是否改变光标指针 (默认 true)
  final bool enableCursor;

  const FluentTabBar({
    super.key,
    required this.tabs,
    required this.selectedIndex,
    this.onTabSelected,
    this.tabTextAlignment = FluentTabTextAlignment.horizontal,
    this.style = FluentStyle.neutral,
    this.showIndicator = true,
    this.showTopBorder = true,
    this.backgroundColor,
    this.selectedColor,
    this.unselectedColor,
    this.indicatorColor,
    this.enableCursor = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isBrand = style == FluentStyle.brand;

    final double barHeight = tabTextAlignment == FluentTabTextAlignment.vertical
        ? 56.0
        : 48.0;

    // 默认背景色与前景色计算 (对标 TabBarTokens & TabItemTokens)
    final Color effectiveBg =
        backgroundColor ??
        (isBrand ? theme.primaryColor : theme.backgroundColor);

    final Color effectiveSelectedColor =
        selectedColor ?? (isBrand ? Colors.white : theme.primaryColor);

    final Color effectiveUnselectedColor =
        unselectedColor ??
        (isBrand
            ? Colors.white.withAlpha(180)
            : theme.foregroundSecondaryColor);

    final Color effectiveIndicatorColor =
        indicatorColor ?? (isBrand ? Colors.white : theme.primaryColor);

    final Color topBorderColor = isBrand
        ? Colors.white.withAlpha(40)
        : theme.dividerColor;

    return Container(
      height: barHeight,
      decoration: BoxDecoration(
        color: effectiveBg,
        border: showTopBorder
            ? Border(top: BorderSide(color: topBorderColor, width: 1.0))
            : null,
      ),
      child: Row(
        children: List.generate(tabs.length, (index) {
          final tab = tabs[index];
          final isSelected = index == selectedIndex;
          final bool isTabEnabled = tab.enabled;

          final Color itemColor = !isTabEnabled
              ? effectiveUnselectedColor.withAlpha(96)
              : (isSelected
                    ? effectiveSelectedColor
                    : effectiveUnselectedColor);

          final Widget iconWidget = (isSelected && tab.selectedIcon != null)
              ? tab.selectedIcon!
              : (tab.icon ?? const SizedBox.shrink());

          final Widget? badgeWidget =
              tab.badge ??
              (tab.badgeText != null
                  ? FluentBadge(
                      text: tab.badgeText,
                      style: FluentBadgeStyle.danger,
                    )
                  : null);

          Widget content;

          if (tabTextAlignment == FluentTabTextAlignment.vertical) {
            // Icon 上，Text 下
            content = Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (tab.icon != null)
                  Stack(
                    clipBehavior: Clip.none,
                    children: [
                      IconTheme(
                        data: IconThemeData(color: itemColor, size: 22.0),
                        child: iconWidget,
                      ),
                      if (badgeWidget != null)
                        Positioned(top: -4.0, right: -8.0, child: badgeWidget),
                    ],
                  ),
                const SizedBox(height: 2.0),
                Text(
                  tab.title,
                  style: TextStyle(
                    fontSize: 11.0,
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: itemColor,
                  ),
                ),
              ],
            );
          } else if (tabTextAlignment == FluentTabTextAlignment.noText) {
            // 仅 Icon
            content = Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                if (tab.icon != null)
                  IconTheme(
                    data: IconThemeData(color: itemColor, size: 22.0),
                    child: iconWidget,
                  ),
                if (badgeWidget != null)
                  Positioned(top: 6.0, right: 6.0, child: badgeWidget),
              ],
            );
          } else {
            // Icon 左，Text 右 (Horizontal)
            content = Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                if (tab.icon != null) ...[
                  IconTheme(
                    data: IconThemeData(color: itemColor, size: 20.0),
                    child: iconWidget,
                  ),
                  const SizedBox(width: 6.0),
                ],
                Text(
                  tab.title,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                    color: itemColor,
                  ),
                ),
                if (badgeWidget != null) ...[
                  const SizedBox(width: 4.0),
                  badgeWidget,
                ],
              ],
            );
          }

          final VoidCallback? tapAction = isTabEnabled
              ? () {
                  tab.onClick?.call();
                  onTabSelected?.call(index);
                }
              : null;

          return Expanded(
            child: Material(
              color: Colors.transparent,
              child: InkWell(
                mouseCursor: (isTabEnabled && enableCursor)
                    ? SystemMouseCursors.click
                    : SystemMouseCursors.basic,
                onTap: tapAction,
                child: Column(
                  children: [
                    Expanded(child: Center(child: content)),
                    if (showIndicator)
                      Container(
                        height: 2.0,
                        width: isSelected ? 32.0 : 0.0,
                        color: isSelected && isTabEnabled
                            ? effectiveIndicatorColor
                            : Colors.transparent,
                      ),
                  ],
                ),
              ),
            ),
          );
        }),
      ),
    );
  }
}
