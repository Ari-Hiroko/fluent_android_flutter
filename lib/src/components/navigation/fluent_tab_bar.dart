import 'package:flutter/material.dart';
import '../../theme/fluent_colors.dart';
import '../../theme/fluent_theme.dart';
import '../container/fluent_badge.dart';
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
/// 支持可选主题色 [themeColor] / [selectedColor]，自动智能自适应继承 [FluentTheme] 或 MaterialApp [ColorScheme]。
///
/// **原生用法支持**：
/// - 支持绑定 [TabController] 或自动识别人属上下文中的 [DefaultTabController]，与 [TabBarView] 无缝联动。
/// - [selectedIndex] 变为可选参数，原生惯用 [onTap] 接口与 [onTabSelected] 双向兼容。
class FluentTabBar extends StatefulWidget {
  /// Tab 项列表
  final List<FluentTabItem> tabs;

  /// 当前选中的索引 (可选。若未提供，自动从 [controller] 或 [DefaultTabController] 中获取)
  final int? selectedIndex;

  /// 选中回调 (原生习惯接口)
  final ValueChanged<int>? onTap;

  /// 选中回调 (兼容原接口)
  final ValueChanged<int>? onTabSelected;

  /// 显式绑定的 [TabController] (可选，未提供时自动寻找 [DefaultTabController])
  final TabController? controller;

  /// 文本与图标的排布对齐方式 (vertical, horizontal, noText)
  final FluentTabTextAlignment tabTextAlignment;

  /// 风格样式 (neutral, brand，对标 Kotlin TabItemTokens.fluentStyle)
  final FluentStyle style;

  /// 是否在底部显示 2dp 指示线
  final bool showIndicator;

  /// 是否显示顶部 1dp 分割线 (默认对标 Kotlin TabBarTokens.topBorderWidth)
  final bool showTopBorder;

  /// 主题色 / 品牌色 (可选。未传入时智能优先匹配 FluentTheme 或 MaterialApp ColorScheme 的 primary 主题色)
  final Color? themeColor;

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
    this.selectedIndex,
    this.onTap,
    this.onTabSelected,
    this.controller,
    this.tabTextAlignment = FluentTabTextAlignment.horizontal,
    this.style = FluentStyle.neutral,
    this.showIndicator = true,
    this.showTopBorder = true,
    this.themeColor,
    this.backgroundColor,
    this.selectedColor,
    this.unselectedColor,
    this.indicatorColor,
    this.enableCursor = true,
  });

  @override
  State<FluentTabBar> createState() => _FluentTabBarState();
}

class _FluentTabBarState extends State<FluentTabBar> {
  TabController? _controller;
  int _internalIndex = 0;

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    _updateTabController();
  }

  @override
  void didUpdateWidget(FluentTabBar oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      _updateTabController();
    }
  }

  void _updateTabController() {
    final TabController? newController =
        widget.controller ?? DefaultTabController.maybeOf(context);
    if (newController != _controller) {
      _controller?.removeListener(_handleTabControllerTick);
      _controller = newController;
      _controller?.addListener(_handleTabControllerTick);
    }
  }

  void _handleTabControllerTick() {
    if (_controller != null && mounted) {
      setState(() {});
    }
  }

  @override
  void dispose() {
    _controller?.removeListener(_handleTabControllerTick);
    super.dispose();
  }

  int get _effectiveSelectedIndex {
    if (widget.selectedIndex != null) {
      return widget.selectedIndex!;
    }
    if (_controller != null) {
      return _controller!.index;
    }
    return _internalIndex;
  }

  void _handleTabClick(int index, FluentTabItem tab) {
    tab.onClick?.call();

    if (_controller != null) {
      _controller!.animateTo(index);
    } else if (widget.selectedIndex == null) {
      setState(() {
        _internalIndex = index;
      });
    }

    widget.onTap?.call(index);
    widget.onTabSelected?.call(index);
  }

  /// 智能自适应解析主题色
  Color _resolvePrimaryThemeColor(
    BuildContext context,
    FluentThemeData fluentTheme,
  ) {
    if (widget.selectedColor != null) return widget.selectedColor!;
    if (widget.themeColor != null) return widget.themeColor!;

    // 1. 若 FluentTheme 显式配置了非默认 primaryColor
    if (fluentTheme.primaryColor != FluentColors.communicationBlue) {
      return fluentTheme.primaryColor;
    }

    // 2. 自动兼容 MaterialApp ColorScheme.primary
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
    final isBrand = widget.style == FluentStyle.brand;

    final double barHeight =
        widget.tabTextAlignment == FluentTabTextAlignment.vertical
        ? 56.0
        : 48.0;

    final Color resolvedPrimary = _resolvePrimaryThemeColor(context, theme);

    // 默认背景色与前景色计算
    final Color effectiveBg =
        widget.backgroundColor ??
        (isBrand ? resolvedPrimary : theme.backgroundColor);

    final Color effectiveSelectedColor =
        widget.selectedColor ?? (isBrand ? Colors.white : resolvedPrimary);

    final Color effectiveUnselectedColor =
        widget.unselectedColor ??
        (isBrand
            ? Colors.white.withValues(alpha: 0.7)
            : theme.foregroundSecondaryColor);

    final Color effectiveIndicatorColor =
        widget.indicatorColor ?? (isBrand ? Colors.white : resolvedPrimary);

    final Color topBorderColor = isBrand
        ? Colors.white.withValues(alpha: 0.16)
        : theme.dividerColor;

    final int selectedIndex = _effectiveSelectedIndex;

    return Container(
      height: barHeight,
      decoration: BoxDecoration(
        color: effectiveBg,
        border: widget.showTopBorder
            ? Border(top: BorderSide(color: topBorderColor, width: 1.0))
            : null,
      ),
      child: Row(
        children: List.generate(widget.tabs.length, (index) {
          final tab = widget.tabs[index];
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
              tabTextAlignment: widget.tabTextAlignment,
              showIndicator: widget.showIndicator,
              enableCursor: widget.enableCursor,
              onTap: isTabEnabled ? () => _handleTabClick(index, tab) : null,
            ),
          );
        }),
      ),
    );
  }
}

/// 每个 Tab 项的私有 StatefulWidget，持有动画控制器
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
  /// 指示条动画控制器
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
    _indicatorWidth = Tween<double>(
      begin: 0.0,
      end: 32.0,
    ).animate(CurvedAnimation(parent: _indicatorCtrl, curve: Curves.easeInOut));
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

    final Color targetColor = !isEnabled
        ? widget.unselectedColor.withValues(alpha: 0.38)
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

    return FluentMaterial(
      color: Colors.transparent,
      child: FluentInkWell(
        mouseCursor: (isEnabled && widget.enableCursor)
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        onTap: widget.onTap,
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
    final badgeSize = layoutChild(
      _BadgeSlot.badge,
      const BoxConstraints.tightForFinite(),
    );
    layoutChild(
      _BadgeSlot.icon,
      BoxConstraints.tight(Size(iconSize, iconSize)),
    );

    final iconX = (size.width - iconSize) / 2;
    const iconY = 4.0;
    positionChild(_BadgeSlot.icon, Offset(iconX, iconY));

    final bool hasContent = badgeSize.width > 16.0;
    final double contentOffset = hasContent ? -2.0 : 0.0;
    final double badgeX = iconX + iconSize / 2 + contentOffset;
    const double badgeY = 0.0;
    positionChild(_BadgeSlot.badge, Offset(badgeX, badgeY));
  }

  @override
  Size getSize(BoxConstraints constraints) {
    return constraints.constrain(Size(iconSize + 20.0, iconSize + 4.0));
  }

  @override
  bool shouldRelayout(_BadgeOverIconDelegate oldDelegate) =>
      oldDelegate.iconSize != iconSize;
}
