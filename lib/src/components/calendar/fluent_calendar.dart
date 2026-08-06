import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 日历视图/日期选择组件 [FluentCalendarView]
///
/// 移植自 Android Kotlin CalendarView.kt
class FluentCalendarView extends StatefulWidget {
  /// 当前选中的日期
  final DateTime? selectedDate;

  /// 日期选择改变回调
  final ValueChanged<DateTime>? onDateSelected;

  const FluentCalendarView({
    super.key,
    this.selectedDate,
    this.onDateSelected,
  });

  @override
  State<FluentCalendarView> createState() => _FluentCalendarViewState();
}

class _FluentCalendarViewState extends State<FluentCalendarView> {
  late DateTime _focusedMonth;
  DateTime? _selectedDate;

  @override
  void initState() {
    super.initState();
    _selectedDate = widget.selectedDate ?? DateTime.now();
    _focusedMonth = DateTime(_selectedDate!.year, _selectedDate!.month);
  }

  void _previousMonth() {
    setState(() {
      _focusedMonth = DateTime(_focusedMonth.year, _focusedMonth.month - 1);
    });
  }

  void _nextMonth() {
    setState(() {
      _focusedMonth = DateTime(_focusedMonth.year, _focusedMonth.month + 1);
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    final daysInMonth = DateUtils.getDaysInMonth(_focusedMonth.year, _focusedMonth.month);
    final firstDayOffset = DateTime(_focusedMonth.year, _focusedMonth.month, 1).weekday % 7;

    return Container(
      padding: const EdgeInsets.all(12.0),
      decoration: BoxDecoration(
        color: theme.backgroundColor,
        borderRadius: BorderRadius.circular(theme.cornerRadius),
        border: Border.all(color: theme.dividerColor),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // 月份与年份切换 Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.chevron_left),
                color: theme.foregroundColor,
                onPressed: _previousMonth,
              ),
              Text(
                '${_focusedMonth.year} 年 ${_focusedMonth.month} 月',
                style: TextStyle(
                  fontSize: 15.0,
                  fontWeight: FontWeight.bold,
                  color: theme.foregroundColor,
                ),
              ),
              IconButton(
                icon: const Icon(Icons.chevron_right),
                color: theme.foregroundColor,
                onPressed: _nextMonth,
              ),
            ],
          ),
          const SizedBox(height: 8.0),

          // 星期表头
          Row(
            children: ['日', '一', '二', '三', '四', '五', '六'].map((day) {
              return Expanded(
                child: Center(
                  child: Text(
                    day,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: FontWeight.bold,
                      color: theme.foregroundSecondaryColor,
                    ),
                  ),
                ),
              );
            }).toList(),
          ),
          const SizedBox(height: 8.0),

          // 日期 Grid
          GridView.builder(
            shrinkWrap: true,
            physics: const NeverScrollableScrollPhysics(),
            itemCount: firstDayOffset + daysInMonth,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 7,
              mainAxisSpacing: 4.0,
              crossAxisSpacing: 4.0,
            ),
            itemBuilder: (context, index) {
              if (index < firstDayOffset) {
                return const SizedBox.shrink();
              }

              final dayNumber = index - firstDayOffset + 1;
              final currentDate = DateTime(_focusedMonth.year, _focusedMonth.month, dayNumber);
              final isSelected = _selectedDate != null &&
                  _selectedDate!.year == currentDate.year &&
                  _selectedDate!.month == currentDate.month &&
                  _selectedDate!.day == currentDate.day;

              return GestureDetector(
                onTap: () {
                  setState(() {
                    _selectedDate = currentDate;
                  });
                  widget.onDateSelected?.call(currentDate);
                },
                child: Container(
                  decoration: BoxDecoration(
                    color: isSelected ? theme.primaryColor : Colors.transparent,
                    shape: BoxShape.circle,
                  ),
                  alignment: Alignment.center,
                  child: Text(
                    '$dayNumber',
                    style: TextStyle(
                      fontSize: 13.0,
                      fontWeight: isSelected ? FontWeight.bold : FontWeight.normal,
                      color: isSelected ? Colors.white : theme.foregroundColor,
                    ),
                  ),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
