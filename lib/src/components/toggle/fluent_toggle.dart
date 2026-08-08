import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 复选框组件 [FluentCheckBox]
///
/// 完全遵循 Fluent 2 设计规范 (20dp 圆角选框 + 软微调交互热区)
class FluentCheckBox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final String? label;
  final bool enableCursor;

  const FluentCheckBox({
    super.key,
    required this.value,
    this.onChanged,
    this.label,
    this.enableCursor = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isEnabled = onChanged != null;

    final boxIndicator = AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeInOut,
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        color: value
            ? (isEnabled
                  ? theme.primaryColor
                  : theme.primaryColor.withAlpha(100))
            : Colors.transparent,
        borderRadius: BorderRadius.circular(4.0),
        border: Border.all(
          color: value
              ? (isEnabled
                    ? theme.primaryColor
                    : theme.primaryColor.withAlpha(100))
              : (isEnabled
                    ? theme.foregroundSecondaryColor
                    : theme.dividerColor),
          width: value ? 0.0 : 1.5,
        ),
      ),
      child: value
          ? const Icon(Icons.check, size: 14.0, color: Colors.white)
          : null,
    );

    if (label == null) {
      return GestureDetector(
        onTap: isEnabled ? () => onChanged!(!value) : null,
        child: MouseRegion(
          cursor: (isEnabled && enableCursor)
              ? SystemMouseCursors.click
              : SystemMouseCursors.basic,
          child: boxIndicator,
        ),
      );
    }

    return FluentMaterial(
      color: Colors.transparent,
      child: FluentInkWell(
        onTap: isEnabled ? () => onChanged!(!value) : null,
        mouseCursor: (isEnabled && enableCursor)
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        borderRadius: BorderRadius.circular(6.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              boxIndicator,
              const SizedBox(width: 10.0),
              Flexible(
                child: Text(
                  label!,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: isEnabled
                        ? theme.foregroundColor
                        : theme.foregroundSecondaryColor.withAlpha(120),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Fluent 2 单选框组件 [FluentRadioButton]
///
/// 完全遵循 Fluent 2 设计规范 (20dp 双环单选框)
class FluentRadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final String? label;
  final bool enableCursor;

  const FluentRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    this.onChanged,
    this.label,
    this.enableCursor = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isSelected = value == groupValue;
    final isEnabled = onChanged != null;

    final indicator = AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      curve: Curves.easeInOut,
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected
              ? (isEnabled
                    ? theme.primaryColor
                    : theme.primaryColor.withAlpha(100))
              : (isEnabled
                    ? theme.foregroundSecondaryColor
                    : theme.dividerColor),
          width: 2.0,
        ),
      ),
      padding: const EdgeInsets.all(3.0),
      child: isSelected
          ? Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: isEnabled
                    ? theme.primaryColor
                    : theme.primaryColor.withAlpha(100),
              ),
            )
          : null,
    );

    if (label == null) {
      return GestureDetector(
        onTap: isEnabled ? () => onChanged!(value) : null,
        child: MouseRegion(
          cursor: (isEnabled && enableCursor)
              ? SystemMouseCursors.click
              : SystemMouseCursors.basic,
          child: indicator,
        ),
      );
    }

    return FluentMaterial(
      color: Colors.transparent,
      child: FluentInkWell(
        onTap: isEnabled ? () => onChanged!(value) : null,
        mouseCursor: (isEnabled && enableCursor)
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        borderRadius: BorderRadius.circular(6.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              indicator,
              const SizedBox(width: 10.0),
              Text(
                label!,
                style: TextStyle(
                  fontSize: 14.0,
                  color: isEnabled
                      ? theme.foregroundColor
                      : theme.foregroundSecondaryColor.withAlpha(120),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

/// Fluent 2 开关切换组件 [FluentToggleSwitch]
///
/// 完全遵循 Fluent 2 设计规范 (44x24dp 胶囊轨道 + 20dp 精准平滑滑块)
class FluentToggleSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? label;
  final bool enableCursor;

  const FluentToggleSwitch({
    super.key,
    required this.value,
    this.onChanged,
    this.label,
    this.enableCursor = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isEnabled = onChanged != null;
    final isDark = theme.brightness == Brightness.dark;

    final Color activeTrack = isEnabled
        ? theme.primaryColor
        : theme.primaryColor.withAlpha(100);
    final Color inactiveTrack = isDark
        ? const Color(0xFF555555)
        : const Color(0xFFD0D0D0);

    final switchTrack = AnimatedContainer(
      duration: const Duration(milliseconds: 180),
      curve: Curves.easeInOut,
      width: 44.0,
      height: 24.0,
      padding: const EdgeInsets.all(2.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.0),
        color: value ? activeTrack : inactiveTrack,
      ),
      child: AnimatedAlign(
        duration: const Duration(milliseconds: 180),
        curve: Curves.easeInOut,
        alignment: value ? Alignment.centerRight : Alignment.centerLeft,
        child: Container(
          width: 20.0,
          height: 20.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withAlpha(40),
                blurRadius: 3.0,
                offset: const Offset(0, 1),
              ),
            ],
          ),
        ),
      ),
    );

    if (label == null) {
      return GestureDetector(
        onTap: isEnabled ? () => onChanged!(!value) : null,
        child: MouseRegion(
          cursor: (isEnabled && enableCursor)
              ? SystemMouseCursors.click
              : SystemMouseCursors.basic,
          child: switchTrack,
        ),
      );
    }

    return FluentMaterial(
      color: Colors.transparent,
      child: FluentInkWell(
        onTap: isEnabled ? () => onChanged!(!value) : null,
        mouseCursor: (isEnabled && enableCursor)
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        borderRadius: BorderRadius.circular(6.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 6.0, horizontal: 8.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  label!,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: isEnabled
                        ? theme.foregroundColor
                        : theme.foregroundSecondaryColor.withAlpha(120),
                  ),
                ),
              ),
              const SizedBox(width: 12.0),
              switchTrack,
            ],
          ),
        ),
      ),
    );
  }
}
