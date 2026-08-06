import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_motion_tokens.dart';
import '../../theme/fluent_theme.dart';

/// 单个 Pill 药丸按钮 [FluentPillButton]
///
/// 完全移植自 Android Kotlin Pill.kt (PillButton)，自带 0.95 -> 1.0 弹性 Spring 选中缩放动画与通知红点。
class FluentPillButton extends StatefulWidget {
  /// 按钮标签文本
  final String label;

  /// 前置图标 Icon (可选)
  final Widget? icon;

  /// 是否被选中
  final bool selected;

  /// 是否启用按钮 (Enabled)
  final bool enabled;

  /// 是否改变光标指针 (默认 true)
  final bool enableCursor;

  /// 是否在右上角显示未读小红点 Notification Dot
  final bool notificationDot;

  /// 点击回调
  final VoidCallback? onClick;

  const FluentPillButton({
    super.key,
    required this.label,
    this.icon,
    this.selected = false,
    this.enabled = true,
    this.enableCursor = true,
    this.notificationDot = false,
    this.onClick,
  });

  @override
  State<FluentPillButton> createState() => _FluentPillButtonState();
}

class _FluentPillButtonState extends State<FluentPillButton>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _scaleAnimation;
  bool _isHovered = false;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 200),
    );

    // 对标 Kotlin Pill.kt: 0.95 -> 1.0 弹性 Spring 动画
    _scaleAnimation =
        TweenSequence<double>([
          TweenSequenceItem(tween: Tween(begin: 1.0, end: 0.95), weight: 30),
          TweenSequenceItem(tween: Tween(begin: 0.95, end: 1.0), weight: 70),
        ]).animate(
          CurvedAnimation(
            parent: _controller,
            curve: FluentMotionCurve.standard,
          ),
        );
  }

  @override
  void didUpdateWidget(covariant FluentPillButton oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.selected && !oldWidget.selected && widget.enabled) {
      _controller.forward(from: 0.0);
    }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  void _handleTap() {
    if (!widget.enabled) return;
    _controller.forward(from: 0.0);
    widget.onClick?.call();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    Color bg;
    Color fg;

    if (!widget.enabled) {
      bg = isDark ? const Color(0xFF242424) : const Color(0xFFE5E5E5);
      fg = isDark ? const Color(0xFF5C5C5C) : const Color(0xFFB3B3B3);
    } else if (widget.selected) {
      bg = theme.primaryColor;
      fg = Colors.white;
    } else {
      bg = _isHovered
          ? (isDark ? const Color(0xFF383838) : const Color(0xFFE0E0E0))
          : (isDark ? const Color(0xFF2D2D2D) : const Color(0xFFF0F0F0));
      fg = isDark ? const Color(0xFFD6D6D6) : const Color(0xFF424242);
    }

    final bool isClickable = widget.enabled && widget.enableCursor;

    return MouseRegion(
      cursor: isClickable ? SystemMouseCursors.click : SystemMouseCursors.basic,
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: GestureDetector(
        onTap: _handleTap,
        child: ScaleTransition(
          scale: _scaleAnimation,
          child: Material(
            color: bg,
            borderRadius: BorderRadius.circular(
              FluentGlobalTokens.cornerRadiusCircular,
            ),
            child: InkWell(
              onTap: _handleTap,
              mouseCursor: isClickable
                  ? SystemMouseCursors.click
                  : SystemMouseCursors.basic,
              borderRadius: BorderRadius.circular(
                FluentGlobalTokens.cornerRadiusCircular,
              ),
              splashColor: fg.withAlpha(30),
              highlightColor: fg.withAlpha(15),
              child: Container(
                height: 32.0,
                padding: const EdgeInsets.symmetric(
                  horizontal: 14.0,
                  vertical: 6.0,
                ),
                alignment: Alignment.center,
                child: Stack(
                  clipBehavior: Clip.none,
                  alignment: Alignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        if (widget.icon != null) ...[
                          IconTheme(
                            data: IconThemeData(color: fg, size: 16.0),
                            child: widget.icon!,
                          ),
                          const SizedBox(width: 6.0),
                        ],
                        Text(
                          widget.label,
                          style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: widget.selected
                                ? FontWeight.bold
                                : FontWeight.w500,
                            color: fg,
                          ),
                        ),
                      ],
                    ),
                    if (widget.notificationDot)
                      Positioned(
                        top: -2.0,
                        right: -6.0,
                        child: Container(
                          width: 6.0,
                          height: 6.0,
                          decoration: const BoxDecoration(
                            color: FluentGlobalTokens.sharedRed,
                            shape: BoxShape.circle,
                          ),
                        ),
                      ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

/// Fluent 2 药丸 Segmented 选项卡栏 [FluentPillBar]
///
/// 移植自 Android Kotlin PillTabs.kt, Pill.kt 与 V2SegmentedControlActivityUITest.kt
class FluentPillBar extends StatelessWidget {
  /// 选项卡标签列表
  final List<String> labels;

  /// 当前选中的索引
  final int selectedIndex;

  /// 选中切换回调
  final ValueChanged<int> onSelected;

  /// 外边距
  final EdgeInsetsGeometry padding;

  /// 是否启用水平平滑滚动 (默认为 true)
  final bool isScrollable;

  /// 是否整体启用 (默认为 true)
  final bool enabled;

  /// 是否改变光标指针 (默认 true)
  final bool enableCursor;

  const FluentPillBar({
    super.key,
    required this.labels,
    required this.selectedIndex,
    required this.onSelected,
    this.padding = const EdgeInsets.symmetric(horizontal: 16.0, vertical: 6.0),
    this.isScrollable = true,
    this.enabled = true,
    this.enableCursor = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final Color containerBg = isDark
        ? const Color(0xFF222222)
        : const Color(0xFFEBEBEB);

    final List<Widget> pillWidgets = List.generate(labels.length, (index) {
      final label = labels[index];
      final isSelected = index == selectedIndex;

      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 2.0),
        child: FluentPillButton(
          label: label,
          selected: isSelected,
          enabled: enabled,
          enableCursor: enableCursor,
          onClick: () => onSelected(index),
        ),
      );
    });

    Widget barContainer = Container(
      height: 40.0,
      padding: const EdgeInsets.all(4.0),
      clipBehavior: Clip.antiAlias,
      decoration: BoxDecoration(
        color: containerBg,
        borderRadius: BorderRadius.circular(
          FluentGlobalTokens.cornerRadiusCircular,
        ),
      ),
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            FluentGlobalTokens.cornerRadiusCircular,
          ),
        ),
        child: isScrollable
            ? SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const BouncingScrollPhysics(),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: pillWidgets,
                ),
              )
            : Row(
                children: pillWidgets.map((w) => Expanded(child: w)).toList(),
              ),
      ),
    );

    return Padding(padding: padding, child: barContainer);
  }
}

/// Fluent 2 药丸分段标签组 [FluentPillTabs]
typedef FluentPillTabs = FluentPillBar;
