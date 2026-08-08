import 'package:flutter/material.dart';
import '../../theme/fluent_colors.dart';
import '../../theme/fluent_theme.dart';
import '../card/fluent_badge.dart';

/// SideRail Item 数据模型 [FluentSideRailItem]
class FluentSideRailItem {
  final String title;
  final Widget icon;
  final Widget? selectedIcon;
  final String? badgeText;
  final VoidCallback? onTap;

  const FluentSideRailItem({
    required this.title,
    required this.icon,
    this.selectedIcon,
    this.badgeText,
    this.onTap,
  });
}

/// Fluent 2  SideRail 侧边栏垂直导航组件 [FluentSideRail]
///
/// 移植自 Android Kotlin SideRail.kt 与 V2SideRailActivity.kt
/// 支持可选主题色 [themeColor] / [selectedColor]，自动智能自适应继承 [FluentTheme] 或 MaterialApp [ColorScheme]。
class FluentSideRail extends StatelessWidget {
  /// 顶部 Header Widget (如用户头像 Avatar / 悬浮按键 FAB / Logo 图标)
  final Widget? header;

  /// 顶部主要的导航 Tab 项列表
  final List<FluentSideRailItem> topItems;

  /// 底部吸顶锚定的 Tab 项列表 (如设置 Settings, 个人资料 Profile)
  final List<FluentSideRailItem> bottomItems;

  /// 顶部 Items 当前选中的索引
  final int topSelectedIndex;

  /// 底部 Items 当前选中的索引 (可选)
  final int? bottomSelectedIndex;

  /// 顶部选中回调
  final ValueChanged<int>? onTopSelected;

  /// 底部选中回调
  final ValueChanged<int>? onBottomSelected;

  /// 主题色 / 品牌色 (可选。未传入时智能优先匹配 FluentTheme 或 MaterialApp ColorScheme 的 primary 主题色)
  final Color? themeColor;

  /// 选中状态颜色 (可选)
  final Color? selectedColor;

  /// 是否显示文字标签 (为 false 时为 Icon Only 模式)
  final bool enableText;

  /// 是否改变/响应鼠标指针光标 (默认 true)
  final bool enableCursor;

  /// 侧栏宽度 (默认 72dp)
  final double width;

  const FluentSideRail({
    super.key,
    this.header,
    required this.topItems,
    this.bottomItems = const [],
    this.topSelectedIndex = 0,
    this.bottomSelectedIndex,
    this.onTopSelected,
    this.onBottomSelected,
    this.themeColor,
    this.selectedColor,
    this.enableText = true,
    this.enableCursor = true,
    this.width = 72.0,
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

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final Color activeThemeColor = _resolvePrimaryThemeColor(context, theme);

    return Align(
      alignment: Alignment.centerLeft,
      child: Container(
        width: width,
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          border: Border(
            right: BorderSide(color: theme.dividerColor, width: 1.0),
          ),
        ),
        child: Column(
          children: [
            const SizedBox(height: 16.0),

            // 顶部 Header (Avatar / FAB / Logo)
            if (header != null) ...[header!, const SizedBox(height: 16.0)],

            // 顶部 Tab 选项导航列表
            Expanded(
              child: ListView.builder(
                itemCount: topItems.length,
                itemBuilder: (context, index) {
                  final item = topItems[index];
                  final isSelected = index == topSelectedIndex;

                  return _buildRailItem(
                    context: context,
                    theme: theme,
                    activeThemeColor: activeThemeColor,
                    item: item,
                    isSelected: isSelected,
                    onTap: () {
                      item.onTap?.call();
                      onTopSelected?.call(index);
                    },
                  );
                },
              ),
            ),

            // 底部吸顶 Tab 选项列表
            if (bottomItems.isNotEmpty) ...[
              const Divider(height: 1.0),
              Column(
                children: List.generate(bottomItems.length, (index) {
                  final item = bottomItems[index];
                  final isSelected = index == bottomSelectedIndex;

                  return _buildRailItem(
                    context: context,
                    theme: theme,
                    activeThemeColor: activeThemeColor,
                    item: item,
                    isSelected: isSelected,
                    onTap: () {
                      item.onTap?.call();
                      onBottomSelected?.call(index);
                    },
                  );
                }),
              ),
              const SizedBox(height: 12.0),
            ],
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
    final Color itemColor = isSelected
        ? activeThemeColor
        : theme.foregroundSecondaryColor;

    final Widget iconWidget = (isSelected && item.selectedIcon != null)
        ? item.selectedIcon!
        : item.icon;

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6.0),
      child: FluentMaterial(
        color: Colors.transparent,
        child: FluentInkWell(
          mouseCursor: enableCursor
              ? SystemMouseCursors.click
              : SystemMouseCursors.basic,
          onTap: onTap,
          borderRadius: BorderRadius.circular(8.0),
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 4.0),
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
                    if (item.badgeText != null)
                      Positioned(
                        top: -2.0,
                        right: -4.0,
                        child: FluentBadge(
                          text: item.badgeText,
                          style: FluentBadgeStyle.danger,
                        ),
                      ),
                  ],
                ),
                if (enableText) ...[
                  const SizedBox(height: 4.0),
                  Text(
                    item.title,
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: itemColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                  ),
                ],
              ],
            ),
          ),
        ),
      ),
    );
  }
}
