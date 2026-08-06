import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 复选框组件 [FluentCheckBox]
class FluentCheckBox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?>? onChanged;
  final String? label;

  const FluentCheckBox({
    super.key,
    required this.value,
    this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    final widgetBox = Checkbox(
      value: value,
      onChanged: onChanged,
      activeColor: theme.primaryColor,
      checkColor: Colors.white,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );

    if (label == null) return widgetBox;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onChanged != null ? () => onChanged!(!value) : null,
        mouseCursor: onChanged != null
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        borderRadius: BorderRadius.circular(4.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 2.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              widgetBox,
              const SizedBox(width: 8.0),
              Flexible(
                child: Text(
                  label!,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: theme.foregroundColor,
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
class FluentRadioButton<T> extends StatelessWidget {
  final T value;
  final T? groupValue;
  final ValueChanged<T?>? onChanged;
  final String? label;

  const FluentRadioButton({
    super.key,
    required this.value,
    required this.groupValue,
    this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isSelected = value == groupValue;

    final indicator = Container(
      width: 20.0,
      height: 20.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(
          color: isSelected
              ? theme.primaryColor
              : theme.foregroundSecondaryColor,
          width: 2.0,
        ),
      ),
      padding: const EdgeInsets.all(3.0),
      child: isSelected
          ? Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                color: theme.primaryColor,
              ),
            )
          : null,
    );

    if (label == null) return indicator;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onChanged != null ? () => onChanged!(value) : null,
        mouseCursor: onChanged != null
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        borderRadius: BorderRadius.circular(4.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 4.0),
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              indicator,
              const SizedBox(width: 8.0),
              Text(
                label!,
                style: TextStyle(
                  fontSize: 14.0,
                  color: theme.foregroundColor,
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
class FluentToggleSwitch extends StatelessWidget {
  final bool value;
  final ValueChanged<bool>? onChanged;
  final String? label;

  const FluentToggleSwitch({
    super.key,
    required this.value,
    this.onChanged,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    final switchWidget = Switch(
      value: value,
      onChanged: onChanged,
      activeThumbColor: Colors.white,
      activeTrackColor: theme.primaryColor,
      inactiveThumbColor: Colors.white,
      inactiveTrackColor: theme.brightness == Brightness.dark
          ? const Color(0xFF555555)
          : const Color(0xFFD0D0D0),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
    );

    if (label == null) return switchWidget;

    return Material(
      color: Colors.transparent,
      child: InkWell(
        onTap: onChanged != null ? () => onChanged!(!value) : null,
        mouseCursor: onChanged != null
            ? SystemMouseCursors.click
            : SystemMouseCursors.basic,
        borderRadius: BorderRadius.circular(4.0),
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 2.0, horizontal: 2.0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                child: Text(
                  label!,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: theme.foregroundColor,
                  ),
                ),
              ),
              const SizedBox(width: 8.0),
              switchWidget,
            ],
          ),
        ),
      ),
    );
  }
}
