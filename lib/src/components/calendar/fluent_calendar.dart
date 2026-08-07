import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import '../../theme/fluent_theme_data.dart';

/// Fluent 2 日历视图/日期选择组件 [FluentCalendarView]
///
/// 移植自 Android Kotlin CalendarView.kt，添加月份切换动画与今日标记
class FluentCalendarView extends StatefulWidget {
  /// 当前选中的日期
  final DateTime? selectedDate;

  /// 日期选择改变回调
  final ValueChanged<DateTime>? onDateSelected;

  const FluentCalendarView({super.key, this.selectedDate, this.onDateSelected});

  @override
  State<FluentCalendarView> createState() => _FluentCalendarViewState();
}

class _FluentCalendarViewState extends State<FluentCalendarView>
    with SingleTickerProviderStateMixin {
  late DateTime _focusedMonth;
  DateTime? _selectedDate;

  // 月份切换滑动动画
  late final AnimationController _slideCtrl;
  late Animation<Offset> _slideAnim;
  late Animation<double> _fadeAnim;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.selectedDate ?? DateTime.now();
    _focusedMonth = DateTime(_selectedDate!.year, _selectedDate!.month);

    _slideCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 280),
    );
    _slideCtrl.value = 1.0;
    _slideAnim = _buildSlide(true);
    _fadeAnim = CurvedAnimation(parent: _slideCtrl, curve: Curves.easeOut);
  }

  Animation<Offset> _buildSlide(bool forward) {
    return Tween<Offset>(
      begin: Offset(forward ? 0.25 : -0.25, 0),
      end: Offset.zero,
    ).animate(CurvedAnimation(parent: _slideCtrl, curve: Curves.easeOutCubic));
  }

  void _changeMonth(bool forward) {
    setState(() {
      _slideAnim = _buildSlide(forward);
      _focusedMonth = DateTime(
        _focusedMonth.year,
        _focusedMonth.month + (forward ? 1 : -1),
      );
    });
    _slideCtrl.forward(from: 0);
  }

  @override
  void dispose() {
    _slideCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final today = DateTime.now();

    final daysInMonth = DateUtils.getDaysInMonth(
      _focusedMonth.year,
      _focusedMonth.month,
    );
    // weekday: Mon=1 … Sun=7, 转为 Sun=0 起始
    final firstDayOffset =
        DateTime(_focusedMonth.year, _focusedMonth.month, 1).weekday % 7;

    final bool isDark = theme.brightness == Brightness.dark;
    final Color todayRingColor = theme.primaryColor;
    final Color weekendColor = isDark
        ? const Color(0xFF9B9B9B)
        : const Color(0xFF8A8A8A);
    final Color hoverBg = isDark
        ? const Color(0xFF383838)
        : const Color(0xFFEEEEEE);

    // 将 boxShadow 放在独立的 DecoratedBox 外层
    // 原因：FadeTransition / SlideTransition 会创建独立合成层（saveLayer），
    // 若 boxShadow 与动画内容处于同一 Container，子层合成状态变化会干扰阴影渲染，
    // 导致切换月份时出现"先深后浅"的一帧阴影闪烁。分离后各自独立绘制，互不影响。
    return DecoratedBox(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(theme.cornerRadius),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(isDark ? 40 : 12),
            blurRadius: 12.0,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Container(
        padding: const EdgeInsets.fromLTRB(12.0, 10.0, 12.0, 14.0),
        decoration: BoxDecoration(
          color: theme.backgroundColor,
          borderRadius: BorderRadius.circular(theme.cornerRadius),
          border: Border.all(
            color: theme.dividerColor.withAlpha(180),
            width: 1.0,
          ),
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // ── Header：月份年份 + 切换按钮 ──────────────────────
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 2.0),
              child: Row(
                children: [
                  // 上一月
                  _NavButton(
                    icon: Icons.chevron_left_rounded,
                    onPressed: () => _changeMonth(false),
                    theme: theme,
                  ),
                  // 月份标题（居中弹性）
                  Expanded(
                    child: Column(
                      children: [
                        Text(
                          _monthName(_focusedMonth.month),
                          style: TextStyle(
                            fontSize: 16.0,
                            fontWeight: FontWeight.w600,
                            color: theme.foregroundColor,
                            letterSpacing: 0.2,
                          ),
                        ),
                        Text(
                          '${_focusedMonth.year}',
                          style: TextStyle(
                            fontSize: 11.0,
                            fontWeight: FontWeight.w400,
                            color: theme.foregroundSecondaryColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                  // 下一月
                  _NavButton(
                    icon: Icons.chevron_right_rounded,
                    onPressed: () => _changeMonth(true),
                    theme: theme,
                  ),
                ],
              ),
            ),

            const SizedBox(height: 10.0),

            // ── 星期表头 ─────────────────────────────────────────
            Row(
              children: List.generate(7, (i) {
                final labels = ['日', '一', '二', '三', '四', '五', '六'];
                final isWeekend = i == 0 || i == 6;
                return Expanded(
                  child: Center(
                    child: Text(
                      labels[i],
                      style: TextStyle(
                        fontSize: 11.5,
                        fontWeight: FontWeight.w600,
                        color: isWeekend
                            ? weekendColor
                            : theme.foregroundSecondaryColor,
                      ),
                    ),
                  ),
                );
              }),
            ),

            const SizedBox(height: 6.0),

            // ── 日期 Grid ──────────────────────
            FadeTransition(
              opacity: _fadeAnim,
              child: SlideTransition(
                position: _slideAnim,
                child: GridView.builder(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: firstDayOffset + daysInMonth,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 7,
                    mainAxisSpacing: 2.0,
                    crossAxisSpacing: 0.0,
                    childAspectRatio: 1.0,
                  ),
                  itemBuilder: (context, index) {
                    if (index < firstDayOffset) {
                      return const SizedBox.shrink();
                    }

                    final day = index - firstDayOffset + 1;
                    final date = DateTime(
                      _focusedMonth.year,
                      _focusedMonth.month,
                      day,
                    );

                    final isSelected =
                        _selectedDate != null &&
                        DateUtils.isSameDay(_selectedDate, date);
                    final isToday = DateUtils.isSameDay(today, date);
                    final colIndex = (firstDayOffset + day - 1) % 7;
                    final isWeekend = colIndex == 0 || colIndex == 6;

                    return _DayCell(
                      day: day,
                      date: date,
                      isSelected: isSelected,
                      isToday: isToday,
                      isWeekend: isWeekend,
                      theme: theme,
                      weekendColor: weekendColor,
                      hoverBg: hoverBg,
                      primaryColor: theme.primaryColor,
                      todayRingColor: todayRingColor,
                      onTap: () {
                        setState(() => _selectedDate = date);
                        widget.onDateSelected?.call(date);
                      },
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      ), // Container
    ); // DecoratedBox
  }

  static String _monthName(int month) {
    const names = [
      '一月',
      '二月',
      '三月',
      '四月',
      '五月',
      '六月',
      '七月',
      '八月',
      '九月',
      '十月',
      '十一月',
      '十二月',
    ];
    return names[month - 1];
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 私有：月份导航按钮
// ─────────────────────────────────────────────────────────────────────────────
class _NavButton extends StatefulWidget {
  final IconData icon;
  final VoidCallback onPressed;
  final FluentThemeData theme;

  const _NavButton({
    required this.icon,
    required this.onPressed,
    required this.theme,
  });

  @override
  State<_NavButton> createState() => _NavButtonState();
}

class _NavButtonState extends State<_NavButton> {
  bool _hovered = false;

  @override
  Widget build(BuildContext context) {
    final isDark = widget.theme.brightness == Brightness.dark;
    final hoverBg = isDark ? const Color(0xFF333333) : const Color(0xFFEBEBEB);

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      onEnter: (_) => setState(() => _hovered = true),
      onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onPressed,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 120),
          width: 32.0,
          height: 32.0,
          decoration: BoxDecoration(
            color: _hovered ? hoverBg : Colors.transparent,
            borderRadius: BorderRadius.circular(6.0),
          ),
          child: Icon(
            widget.icon,
            size: 20.0,
            color: widget.theme.foregroundColor,
          ),
        ),
      ),
    );
  }
}

// ─────────────────────────────────────────────────────────────────────────────
// 私有：单个日期格子，带选中缩放动画与今日环形标记
// ─────────────────────────────────────────────────────────────────────────────
class _DayCell extends StatefulWidget {
  final int day;
  final DateTime date;
  final bool isSelected;
  final bool isToday;
  final bool isWeekend;
  final FluentThemeData theme;
  final Color weekendColor;
  final Color hoverBg;
  final Color primaryColor;
  final Color todayRingColor;
  final VoidCallback onTap;

  const _DayCell({
    required this.day,
    required this.date,
    required this.isSelected,
    required this.isToday,
    required this.isWeekend,
    required this.theme,
    required this.weekendColor,
    required this.hoverBg,
    required this.primaryColor,
    required this.todayRingColor,
    required this.onTap,
  });

  @override
  State<_DayCell> createState() => _DayCellState();
}

class _DayCellState extends State<_DayCell>
    with SingleTickerProviderStateMixin {
  late final AnimationController _scaleCtrl;
  late final Animation<double> _scaleAnim;
  // bool _hovered = false;

  @override
  void initState() {
    super.initState();
    _scaleCtrl = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 180),
      value: widget.isSelected ? 1.0 : 0.0,
    );
    _scaleAnim = Tween<double>(
      begin: 0.75,
      end: 1.0,
    ).animate(CurvedAnimation(parent: _scaleCtrl, curve: Curves.easeInBack));
  }

  @override
  void didUpdateWidget(_DayCell old) {
    super.didUpdateWidget(old);
    if (old.isSelected != widget.isSelected) {
      if (widget.isSelected) {
        _scaleCtrl.forward(from: 0.0);
      } else {
        _scaleCtrl.reverse();
      }
    }
  }

  @override
  void dispose() {
    _scaleCtrl.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final isSelected = widget.isSelected;
    final isToday = widget.isToday;
    final theme = widget.theme;

    Color textColor;
    if (isSelected) {
      textColor = Colors.white;
    } else if (widget.isWeekend) {
      textColor = widget.weekendColor;
    } else {
      textColor = theme.foregroundColor;
    }

    return MouseRegion(
      cursor: SystemMouseCursors.click,
      // onEnter: (_) => setState(() => _hovered = true),
      // onExit: (_) => setState(() => _hovered = false),
      child: GestureDetector(
        onTap: widget.onTap,
        child: ScaleTransition(
          scale: isSelected ? _scaleAnim : const AlwaysStoppedAnimation(1.0),
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 1000),
            curve: Curves.easeOutCirc,
            margin: const EdgeInsets.all(2.0),
            decoration: BoxDecoration(
              color: isSelected ? widget.primaryColor : Colors.transparent,
              // : (_hovered ? widget.hoverBg : Colors.transparent),
              shape: BoxShape.circle,
              border: isToday && !isSelected
                  ? Border.all(color: widget.todayRingColor, width: 1.5)
                  : null,
            ),
            child: Center(
              child: Text(
                '${widget.day}',
                style: TextStyle(
                  fontSize: 13.0,
                  fontWeight: (isSelected || isToday)
                      ? FontWeight.w600
                      : FontWeight.w400,
                  color: textColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
