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
          final isTabEnabled = tab.enabled;
          return Expanded(
            child: _FluentTabItemWidget(
              tab: tab,
              isSelected: isSelected,
              isEnabled: isTabEnabled,
              selectedColor: effectiveSelectedColor,
              unselectedColor: effectiveUnselectedColor,
              indicatorColor: effectiveIndicatorColor,
              tabTextAlignment: tabTextAlignment,
              showIndicator: showIndicator,
              enableCursor: enableCursor,
              onTap: isTabEnabled
                  ? () {
                      tab.onClick?.call();
                      onTabSelected?.call(index);
                    }
                  : null,
            ),
          );
        }),
      ),
    );
  }
}

/// 每个 Tab 项的私有 StatefulWidget，持有动画控制器
///
/// 动画完全对标 Kotlin `TabItem.kt`：
///   - 颜色渐变：`animateColorAsState(tween(300ms))` → TweenAnimationBuilder
///   - 指示条：`AnimatedVisibility(fadeIn + expandHorizontally)` → AnimationController 驱动
class _FluentTabItemWidget extends StatefulWidget {
  final FluentTabItem tab;
  final bool isSelected;
  final bool isEnabled;
  final Color selectedColor;
  final Color unselectedColor;
  final Color indicatorColor;
  final FluentTabTextAlignment tabTextAlignment;
  final bool showIndicator;
  final bool enableCursor;
  final VoidCallback? onTap;

  const _FluentTabItemWidget({
    required this.tab,
    required this.isSelected,
    required this.isEnabled,
    required this.selectedColor,
    required this.unselectedColor,
    required this.indicatorColor,
    required this.tabTextAlignment,
    required this.showIndicator,
    required this.enableCursor,
    this.onTap,
  });

  @override
  State<_FluentTabItemWidget> createState() => _FluentTabItemWidgetState();
}

class _FluentTabItemWidgetState extends State<_FluentTabItemWidget>
    with SingleTickerProviderStateMixin {
  /// 指示条动画控制器（0.0 = 收缩隐藏，1.0 = 完全展开可见）
  late final AnimationController _indicatorCtrl;
  late final Animation<double> _indicatorWidth;
  late final Animation<double> _indicatorOpacity;

  @override
  void initState() {
    super.initState();
    _indicatorCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 250),
      value: widget.isSelected ? 1.0 : 0.0,
    );
    // expandHorizontally → width 0→32dp
    _indicatorWidth = Tween<double>(
      begin: 0.0,
      end: 32.0,
    ).animate(CurvedAnimation(parent: _indicatorCtrl, curve: Curves.easeInOut));
    // fadeIn → opacity 0→1
    _indicatorOpacity = CurvedAnimation(
      parent: _indicatorCtrl,
      curve: Curves.easeIn,
    );
  }

  @override
  void didUpdateWidget(_FluentTabItemWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (oldWidget.isSelected != widget.isSelected) {
      if (widget.isSelected) {
        _indicatorCtrl.forward();
      } else {
        _indicatorCtrl.reverse();
      }
    }
  }

  @override
  void dispose() {
    _indicatorCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final tab = widget.tab;
    final isSelected = widget.isSelected;
    final isEnabled = widget.isEnabled;

    // 目标颜色（不带动画，用 TweenAnimationBuilder 包裹）
    final Color targetColor = !isEnabled
        ? widget.unselectedColor.withAlpha(96)
        : (isSelected ? widget.selectedColor : widget.unselectedColor);

    final Widget iconWidget = (isSelected && tab.selectedIcon != null)
        ? tab.selectedIcon!
        : (tab.icon ?? const SizedBox.shrink());

    final Widget? badgeWidget =
        tab.badge ??
        (tab.badgeText != null
            ? FluentBadge(
                text: tab.badgeText,
                badgeType: FluentBadgeType.character,
                style: FluentBadgeStyle.danger,
              )
            : null);

    return Material(
      color: Colors.transparent,
      child: InkWell(
        mouseCursor: (isEnabled && widget.enableCursor)
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        onTap: widget.onTap,
        // TweenAnimationBuilder 驱动颜色过渡（对标 animateColorAsState 300ms）
        child: TweenAnimationBuilder<Color?>(
          tween: ColorTween(end: targetColor),
          duration: const Duration(milliseconds: 300),
          builder: (context, animatedColor, _) {
            final color = animatedColor ?? targetColor;
            Widget content;
            if (widget.tabTextAlignment == FluentTabTextAlignment.vertical) {
              content = Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (tab.icon != null)
                    _BadgeWithIcon(
                      iconSize: 22.0,
                      iconColor: color,
                      icon: iconWidget,
                      badge: badgeWidget,
                    ),
                  const SizedBox(height: 2.0),
                  Text(
                    tab.title,
                    style: TextStyle(
                      fontSize: 11.0,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: color,
                    ),
                  ),
                ],
              );
            } else if (widget.tabTextAlignment ==
                FluentTabTextAlignment.noText) {
              content = _BadgeWithIcon(
                iconSize: 26.0,
                iconColor: color,
                icon: iconWidget,
                badge: badgeWidget,
              );
            } else {
              content = Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  if (tab.icon != null) ...[
                    IconTheme(
                      data: IconThemeData(color: color, size: 20.0),
                      child: iconWidget,
                    ),
                    const SizedBox(width: 6.0),
                  ],
                  Text(
                    tab.title,
                    style: TextStyle(
                      fontSize: 14.0,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.w500,
                      color: color,
                    ),
                  ),
                  if (badgeWidget != null) ...[
                    const SizedBox(width: 4.0),
                    badgeWidget,
                  ],
                ],
              );
            }

            return Column(
              children: [
                Expanded(child: Center(child: content)),
                // 指示条：AnimationBuilder 驱动 expandHorizontally + fadeIn
                if (widget.showIndicator)
                  AnimatedBuilder(
                    animation: _indicatorCtrl,
                    builder: (context, _) {
                      return SizedBox(
                        height: 3.0,
                        child: FadeTransition(
                          opacity: _indicatorOpacity,
                          child: Container(
                            height: 3.0,
                            width: _indicatorWidth.value,
                            decoration: BoxDecoration(
                              color: widget.indicatorColor,
                              borderRadius: BorderRadius.circular(100.0),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
              ],
            );
          },
        ),
      ),
    );
  }
}

/// 精确复刻 Kotlin `TabItem.kt` CustomLayout badge 定位逻辑的 Flutter 组件
///
/// Kotlin 核心定位规则：
///   hasContent = badge 宽度 > 16dp（即文字 badge，非小圆点）
///   contentOffset = hasContent ? -2dp : 0
///   badgeX (左边) = iconLeft + iconWidth/2 + contentOffset
///   badgeY (顶边) = iconTop - 4dp  ← badge 顶部超出 icon 顶部 4dp
class _BadgeWithIcon extends StatelessWidget {
  final Widget icon;
  final Widget? badge;
  final double iconSize;
  final Color iconColor;

  const _BadgeWithIcon({
    required this.icon,
    required this.iconSize,
    required this.iconColor,
    this.badge,
  });

  @override
  Widget build(BuildContext context) {
    if (badge == null) {
      return IconTheme(
        data: IconThemeData(color: iconColor, size: iconSize),
        child: icon,
      );
    }
    return CustomMultiChildLayout(
      delegate: _BadgeOverIconDelegate(iconSize: iconSize),
      children: [
        LayoutId(
          id: _BadgeSlot.icon,
          child: IconTheme(
            data: IconThemeData(color: iconColor, size: iconSize),
            child: icon,
          ),
        ),
        LayoutId(id: _BadgeSlot.badge, child: badge!),
      ],
    );
  }
}

enum _BadgeSlot { icon, badge }

class _BadgeOverIconDelegate extends MultiChildLayoutDelegate {
  final double iconSize;

  _BadgeOverIconDelegate({required this.iconSize});

  @override
  void performLayout(Size size) {
    // 1. 先测量 badge
    final badgeSize = layoutChild(
      _BadgeSlot.badge,
      const BoxConstraints.tightForFinite(),
    );
    // 2. 布局 icon（固定尺寸）
    layoutChild(
      _BadgeSlot.icon,
      BoxConstraints.tight(Size(iconSize, iconSize)),
    );

    // 3. 定位 icon（在分配空间内水平居中，垂直向下偏移 4dp 以留出 badge 空间）
    final iconX = (size.width - iconSize) / 2;
    const iconY = 4.0; // badge 超出顶部 4dp，icon 向下偏 4dp
    positionChild(_BadgeSlot.icon, Offset(iconX, iconY));

    // 4. 复刻 Kotlin 定位：
    //    hasContent = badge 宽度 > 16dp（文字 badge vs. 圆点）
    //    contentOffset = hasContent ? -2dp : 0dp
    //    badge 左边 = icon 左边 + iconSize/2 + contentOffset
    //    badge 顶边 = iconY - 4dp = 0
    final bool hasContent = badgeSize.width > 16.0;
    final double contentOffset = hasContent ? -2.0 : 0.0;
    final double badgeX = iconX + iconSize / 2 + contentOffset;
    const double badgeY = 0.0;
    positionChild(_BadgeSlot.badge, Offset(badgeX, badgeY));
  }

  @override
  Size getSize(BoxConstraints constraints) {
    // 宽度 = icon + 右侧 badge 溢出空间；高度 = icon + 4dp badge 顶部超出
    return constraints.constrain(Size(iconSize + 20.0, iconSize + 4.0));
  }

  @override
  bool shouldRelayout(_BadgeOverIconDelegate oldDelegate) =>
      oldDelegate.iconSize != iconSize;
}
