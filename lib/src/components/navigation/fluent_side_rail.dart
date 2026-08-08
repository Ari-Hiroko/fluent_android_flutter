import 'package:flutter/material.dart';
import '../../theme/fluent_colors.dart';
import '../../theme/fluent_theme.dart';
import '../container/fluent_badge.dart';
import '../transients/fluent_tooltip.dart';

/// SideRail Item 数据模型 [FluentSideRailItem]
class FluentSideRailItem {
  /// 项标题
  final String title;

  /// 未选中时的图标
  final Widget icon;

  /// 选中时的图标 (可选)
  final Widget? selectedIcon;

  /// 自定义 Badge 挂载 Widget (可选)
  final Widget? badge;

  /// 标准角标文本 (可选, 如 '9+', 'NEW')
  final String? badgeText;

  /// 项点击回调
  final VoidCallback? onTap;

  /// 是否可用 (默认 true)
  final bool enabled;

  /// 悬浮提示文本 (默认等于 title)
  final String? tooltip;

  const FluentSideRailItem({
    required this.title,
    required this.icon,
    this.selectedIcon,
    this.badge,
    this.badgeText,
    this.onTap,
    this.enabled = true,
    this.tooltip,
  });
}

/// Fluent 2 SideRail 侧边栏垂直导航组件 [FluentSideRail]
///
/// 支持紧凑模式 (Icon模式) 与 展开模式 (Expanded 侧边导航栏模式)。
/// 遵循 Flutter 标准 [NavigationRail] 的 [selectedIndex] 与 [onDestinationSelected] 模式。
class FluentSideRail extends StatelessWidget {
  /// 顶部 Header Widget (如用户头像 Avatar / 悬浮按键 FAB / Logo 图标)
  final Widget? header;

  /// 底部 Footer Widget (可选)
  final Widget? footer;

  /// 顶部主要的导航 Tab 项列表
  final List<FluentSideRailItem> topItems;

  /// 底部吸顶锚定的 Tab 项列表 (如设置 Settings, 个人资料 Profile)
  final List<FluentSideRailItem> bottomItems;

  /// 统一选中的索引 (0..N-1 为 topItems, N..N+M-1 为 bottomItems)
  final int? selectedIndex;

  /// 统一选中回调
  final ValueChanged<int>? onDestinationSelected;

  /// 顶部 Selected Index (兼容性属性)
  final int? topSelectedIndex;

  /// 底部 Selected Index (兼容性属性)
  final int? bottomSelectedIndex;

  /// 顶部选中回调 (兼容性属性)
  final ValueChanged<int>? onTopSelected;

  /// 底部选中回调 (兼容性属性)
  final ValueChanged<int>? onBottomSelected;

  /// 是否展开显示 (true 为 expanded 模式, 宽 240dp; false 为 compact 模式, 宽 72dp)
  final bool isExpanded;

  /// 主题色 / 品牌色 (可选)
  final Color? themeColor;

  /// 选中状态颜色 (可选)
  final Color? selectedColor;

  /// 背景颜色 (默认使用 [FluentTheme.backgroundColor])
  final Color? backgroundColor;

  /// 是否显示文字标签 (紧凑模式下有效，默认 true)
  final bool enableText;

  /// 是否改变/响应鼠标指针光标 (默认 true)
  final bool enableCursor;

  /// 紧凑模式下的宽度 (默认 72dp)
  final double width;

  /// 展开模式下的宽度 (默认 240dp)
  final double expandedWidth;

  const FluentSideRail({
    super.key,
    this.header,
    this.footer,
    required this.topItems,
    this.bottomItems = const [],
    this.selectedIndex,
    this.onDestinationSelected,
    this.topSelectedIndex,
    this.bottomSelectedIndex,
    this.onTopSelected,
    this.onBottomSelected,
    this.isExpanded = false,
    this.themeColor,
    this.selectedColor,
    this.backgroundColor,
    this.enableText = true,
    this.enableCursor = true,
    this.width = 72.0,
    this.expandedWidth = 240.0,
  });

  Color _resolvePrimaryThemeColor(
    BuildContext context,
    FluentThemeData fluentTheme,
  ) {
    if (selectedColor != null) return selectedColor!;
    if (themeColor != null) return themeColor!;

    if (fluentTheme.primaryColor != FluentColors.communicationBlue) {
      return fluentTheme.primaryColor;
    }

    final materialTheme = Theme.of(context);
    final materialPrimary = materialTheme.colorScheme.primary;
    if (materialPrimary != const Color(0xff6750a4) &&
        materialPrimary != Colors.blue) {
      return materialPrimary;
    }

    return fluentTheme.primaryColor;
  }

  bool _isTopItemSelected(int index) {
    if (selectedIndex != null) {
      return selectedIndex == index;
    }
    return topSelectedIndex == index;
  }

  bool _isBottomItemSelected(int index) {
    if (selectedIndex != null) {
      return selectedIndex == (topItems.length + index);
    }
    return bottomSelectedIndex == index;
  }

  void _handleTopItemTap(int index, FluentSideRailItem item) {
    if (!item.enabled) return;
    item.onTap?.call();
    if (onDestinationSelected != null) {
      onDestinationSelected!(index);
    }
    onTopSelected?.call(index);
  }

  void _handleBottomItemTap(int index, FluentSideRailItem item) {
    if (!item.enabled) return;
    item.onTap?.call();
    if (onDestinationSelected != null) {
      onDestinationSelected!(topItems.length + index);
    }
    onBottomSelected?.call(index);
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final Color activeThemeColor = _resolvePrimaryThemeColor(context, theme);
    final effectiveBgColor = backgroundColor ?? theme.backgroundColor;
    final effectiveWidth = isExpanded ? expandedWidth : width;

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: effectiveWidth,
        decoration: BoxDecoration(
          color: effectiveBgColor,
          border: Border(
            right: BorderSide(color: theme.dividerColor, width: 1.0),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 16.0),

            // 顶部 Header (Avatar / FAB / Logo)
            if (header != null) ...[
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
                child: header!,
              ),
              const SizedBox(height: 16.0),
            ],

            // 顶部 Tab 选项导航列表
            Expanded(
              child: ListView.builder(
                padding: EdgeInsets.zero,
                itemCount: topItems.length,
                itemBuilder: (context, index) {
                  final item = topItems[index];
                  final isSelected = _isTopItemSelected(index);

                  return _buildRailItem(
                    context: context,
                    theme: theme,
                    activeThemeColor: activeThemeColor,
                    item: item,
                    isSelected: isSelected,
                    onTap: () => _handleTopItemTap(index, item),
                  );
                },
              ),
            ),

            // 底部吸顶 Tab 选项列表
            if (bottomItems.isNotEmpty) ...[
              Divider(height: 1.0, color: theme.dividerColor),
              Column(
                children: List.generate(bottomItems.length, (index) {
                  final item = bottomItems[index];
                  final isSelected = _isBottomItemSelected(index);

                  return _buildRailItem(
                    context: context,
                    theme: theme,
                    activeThemeColor: activeThemeColor,
                    item: item,
                    isSelected: isSelected,
                    onTap: () => _handleBottomItemTap(index, item),
                  );
                }),
              ),
            ],

            if (footer != null) ...[
              Divider(height: 1.0, color: theme.dividerColor),
              Padding(padding: const EdgeInsets.all(8.0), child: footer!),
            ],

            const SizedBox(height: 12.0),
          ],
        ),
      ),
    );
  }

  Widget _buildRailItem({
    required BuildContext context,
    required FluentThemeData theme,
    required Color activeThemeColor,
    required FluentSideRailItem item,
    required bool isSelected,
    required VoidCallback onTap,
  }) {
    final Color itemColor = item.enabled
        ? (isSelected ? activeThemeColor : theme.foregroundSecondaryColor)
        : theme.foregroundSecondaryColor.withValues(alpha: 0.38);

    final Widget iconWidget = (isSelected && item.selectedIcon != null)
        ? item.selectedIcon!
        : item.icon;

    Widget badgeWidget = const SizedBox.shrink();
    if (item.badge != null) {
      badgeWidget = item.badge!;
    } else if (item.badgeText != null) {
      badgeWidget = FluentBadge(
        text: item.badgeText,
        style: FluentBadgeStyle.danger,
      );
    }

    Widget content;
    if (isExpanded) {
      content = Padding(
        padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 8.0),
        child: Container(
          decoration: BoxDecoration(
            color: isSelected
                ? activeThemeColor.withValues(alpha: 0.10)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(8.0),
          ),
          padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 12.0),
          child: Row(
            children: [
              // Active Vertical Bar
              AnimatedContainer(
                duration: const Duration(milliseconds: 150),
                width: 3.0,
                height: 18.0,
                decoration: BoxDecoration(
                  color: isSelected ? activeThemeColor : Colors.transparent,
                  borderRadius: BorderRadius.circular(1.5),
                ),
              ),
              const SizedBox(width: 8.0),
              IconTheme(
                data: IconThemeData(color: itemColor, size: 22.0),
                child: iconWidget,
              ),
              const SizedBox(width: 12.0),
              Expanded(
                child: Text(
                  item.title,
                  style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: isSelected
                        ? FontWeight.bold
                        : FontWeight.normal,
                    color: itemColor,
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (item.badge != null || item.badgeText != null) badgeWidget,
            ],
          ),
        ),
      );
    } else {
      content = Padding(
        padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 4.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Stack(
              clipBehavior: Clip.none,
              alignment: Alignment.center,
              children: [
                Container(
                  padding: const EdgeInsets.all(6.0),
                  decoration: BoxDecoration(
                    color: isSelected
                        ? activeThemeColor.withValues(alpha: 0.12)
                        : Colors.transparent,
                    borderRadius: BorderRadius.circular(16.0),
                  ),
                  child: IconTheme(
                    data: IconThemeData(color: itemColor, size: 22.0),
                    child: iconWidget,
                  ),
                ),
                if (item.badge != null || item.badgeText != null)
                  Positioned(top: -2.0, right: -4.0, child: badgeWidget),
              ],
            ),
            if (enableText) ...[
              const SizedBox(height: 4.0),
              Text(
                item.title,
                style: TextStyle(
                  fontSize: 11.0,
                  fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                  color: itemColor,
                ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
              ),
            ],
          ],
        ),
      );
    }

    Widget itemTile = Opacity(
      opacity: item.enabled ? 1.0 : 0.38,
      child: FluentMaterial(
        color: Colors.transparent,
        child: FluentInkWell(
          mouseCursor: (enableCursor && item.enabled)
              ? SystemMouseCursors.click
              : SystemMouseCursors.basic,
          onTap: item.enabled ? onTap : null,
          borderRadius: BorderRadius.circular(8.0),
          child: content,
        ),
      ),
    );

    final tooltipMsg = item.tooltip ?? item.title;
    if (tooltipMsg.isNotEmpty && !isExpanded) {
      itemTile = FluentTooltip(message: tooltipMsg, child: itemTile);
    }

    return itemTile;
  }
}
