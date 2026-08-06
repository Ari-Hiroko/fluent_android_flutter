import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 标准文本输入框组件 [FluentTextField]
///
/// 移植自 Android Kotlin TextField.kt 与 TextFieldTokens.kt
class FluentTextField extends StatefulWidget {
  /// 顶部标签标题 (Label)
  final String? label;

  /// 占位提示文本 (Hint / Placeholder)
  final String? hintText;

  /// 控制器
  final TextEditingController? controller;

  /// 初始默认值
  final String? initialValue;

  /// 文本改变时的回调
  final ValueChanged<String>? onChanged;

  /// 提交文本时的回调
  final ValueChanged<String>? onSubmitted;

  /// 错误提示信息 (当非空时输入框变红)
  final String? errorText;

  /// 辅助描述信息 (位于输入框下方)
  final String? helperText;

  /// 前置 Icon
  final Widget? leadingIcon;

  /// 尾部 Icon
  final Widget? trailingIcon;

  /// 是否显示一键清空按钮 (默认 true)
  final bool showClearButton;

  /// 是否启用
  final bool enabled;

  /// 是否密码隐藏文本
  final bool obscureText;

  /// 键盘类型
  final TextInputType? keyboardType;

  /// 行数控制
  final int? maxLines;

  /// 最大字符数控制
  final int? maxLength;

  const FluentTextField({
    super.key,
    this.label,
    this.hintText,
    this.controller,
    this.initialValue,
    this.onChanged,
    this.onSubmitted,
    this.errorText,
    this.helperText,
    this.leadingIcon,
    this.trailingIcon,
    this.showClearButton = true,
    this.enabled = true,
    this.obscureText = false,
    this.keyboardType,
    this.maxLines = 1,
    this.maxLength,
  });

  @override
  State<FluentTextField> createState() => _FluentTextFieldState();
}

class _FluentTextFieldState extends State<FluentTextField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController(text: widget.initialValue);
    _focusNode = FocusNode();
    _hasText = _controller.text.isNotEmpty;

    _controller.addListener(_handleTextChange);
    _focusNode.addListener(_handleFocusChange);
  }

  void _handleTextChange() {
    final hasText = _controller.text.isNotEmpty;
    if (hasText != _hasText) {
      setState(() {
        _hasText = hasText;
      });
    }
  }

  void _handleFocusChange() {
    setState(() {
      _isFocused = _focusNode.hasFocus;
    });
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    } else {
      _controller.removeListener(_handleTextChange);
    }
    _focusNode.dispose();
    super.dispose();
  }

  void _clearText() {
    _controller.clear();
    widget.onChanged?.call('');
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isError = widget.errorText != null && widget.errorText!.isNotEmpty;

    // 颜色状态计算
    Color borderColor = theme.dividerColor;
    if (isError) {
      borderColor = FluentGlobalTokens.sharedRed;
    } else if (_isFocused) {
      borderColor = theme.primaryColor;
    }

    final Color labelColor = isError
        ? FluentGlobalTokens.sharedRed
        : (_isFocused ? theme.primaryColor : theme.foregroundSecondaryColor);

    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // 顶部 Label
        if (widget.label != null && widget.label!.isNotEmpty) ...[
          Text(
            widget.label!,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w600,
              color: labelColor,
            ),
          ),
          const SizedBox(height: 4.0),
        ],

        // 主输入框 Container
        AnimatedContainer(
          duration: const Duration(milliseconds: 150),
          decoration: BoxDecoration(
            color: theme.backgroundColor,
            borderRadius: BorderRadius.circular(theme.cornerRadius),
            border: Border.all(
              color: borderColor,
              width: _isFocused || isError ? 1.5 : 1.0,
            ),
          ),
          padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
          child: Row(
            children: [
              if (widget.leadingIcon != null) ...[
                IconTheme(
                  data: IconThemeData(
                    color: _isFocused ? theme.primaryColor : theme.foregroundSecondaryColor,
                    size: 20.0,
                  ),
                  child: widget.leadingIcon!,
                ),
                const SizedBox(width: 8.0),
              ],

              // 实际 TextField
              Expanded(
                child: TextField(
                  controller: _controller,
                  focusNode: _focusNode,
                  enabled: widget.enabled,
                  obscureText: widget.obscureText,
                  keyboardType: widget.keyboardType,
                  maxLines: widget.maxLines,
                  maxLength: widget.maxLength,
                  onChanged: widget.onChanged,
                  onSubmitted: widget.onSubmitted,
                  style: TextStyle(
                    fontSize: 14.0,
                    color: theme.foregroundColor,
                  ),
                  decoration: InputDecoration(
                    hintText: widget.hintText,
                    hintStyle: TextStyle(
                      fontSize: 14.0,
                      color: theme.foregroundSecondaryColor,
                    ),
                    border: InputBorder.none,
                    isDense: true,
                    contentPadding: EdgeInsets.zero,
                    counterText: '', // 隐藏默认 counter
                  ),
                ),
              ),

              // 清空按钮
              if (widget.showClearButton && _hasText && widget.enabled) ...[
                GestureDetector(
                  onTap: _clearText,
                  child: Icon(
                    Icons.cancel,
                    size: 18.0,
                    color: theme.foregroundSecondaryColor,
                  ),
                ),
                const SizedBox(width: 4.0),
              ],

              // 尾部 Icon
              if (widget.trailingIcon != null)
                IconTheme(
                  data: IconThemeData(
                    color: theme.foregroundSecondaryColor,
                    size: 20.0,
                  ),
                  child: widget.trailingIcon!,
                ),
            ],
          ),
        ),

        // 底部辅助 / 错误提示信息
        if (isError) ...[
          const SizedBox(height: 4.0),
          Text(
            widget.errorText!,
            style: TextStyle(
              fontSize: 12.0,
              color: FluentGlobalTokens.sharedRed,
            ),
          ),
        ] else if (widget.helperText != null && widget.helperText!.isNotEmpty) ...[
          const SizedBox(height: 4.0),
          Text(
            widget.helperText!,
            style: TextStyle(
              fontSize: 12.0,
              color: theme.foregroundSecondaryColor,
            ),
          ),
        ],
      ],
    );
  }
}
