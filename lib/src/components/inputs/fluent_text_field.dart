import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 输入框外观风格 [FluentTextFieldStyle]
enum FluentTextFieldStyle {
  /// 中性标准模式 (默认：白色/表面背景 + 细边框)
  neutral,

  /// 描边透明模式 (背景完全透明 + 四周细描边框)
  outlined,

  /// 填充背景模式 (灰色/中性底色块状填充)
  filled,

  /// 下划线模式 (无四周边框，仅底部单条水平线)
  underlined,
}

/// Fluent 2 数字步进器按钮排版 [FluentNumberStepperStyle]
enum FluentNumberStepperStyle {
  /// 水平两侧分布 (对标 Flutter/iOS 原生 Stepper 排版：前置 '-'，后置 '+')
  horizontal,

  /// 尾部垂直上下箭头 (紧凑型)
  vertical,

  /// 尾部水平并排 ('-' 与 '+' 在尾部并列)
  suffixHorizontal,
}

/// Fluent 2 标准文本输入框组件 [FluentTextField]
///
/// 深度封装 Flutter 标准 [TextField]，遵循 Microsoft Fluent 2 交互与设计规范。
/// 支持普通文本、密码 (Password)、搜索 (Search)、数字步进 (Number) 及表单 [FluentTextFormField]。
class FluentTextField extends StatefulWidget {
  /// 顶部标签标题 (Label)
  final String? label;

  /// 占位提示文本 (Hint / Placeholder)
  final String? hintText;

  /// 输入框外观风格 (默认 [FluentTextFieldStyle.neutral])
  final FluentTextFieldStyle textFieldStyle;

  /// 控制器
  final TextEditingController? controller;

  /// FocusNode
  final FocusNode? focusNode;

  /// 初始默认值
  final String? initialValue;

  /// 文本改变时的回调
  final ValueChanged<String>? onChanged;

  /// 提交文本时的回调
  final ValueChanged<String>? onSubmitted;

  /// 完成编辑时的回调
  final VoidCallback? onEditingComplete;

  /// 点击输入框回调
  final GestureTapCallback? onTap;

  /// 点击输入框外部回调
  final TapRegionCallback? onTapOutside;

  /// 错误提示信息 (当非空时输入框变红)
  final String? errorText;

  /// 辅助描述信息 (位于输入框下方)
  final String? helperText;

  /// 前置 Icon / Widget
  final Widget? leadingIcon;

  /// 尾部 Icon / Widget
  final Widget? trailingIcon;

  /// Prefix 控件
  final Widget? prefix;

  /// Suffix 控件
  final Widget? suffix;

  /// 是否显示一键清空按钮 (默认 true)
  final bool showClearButton;

  /// 是否显示密码显隐切换按钮 (默认 false)
  final bool showPasswordToggle;

  /// 背景颜色 (提供时覆盖 textFieldStyle 默认背景)
  final Color? backgroundColor;

  /// 是否启用
  final bool enabled;

  /// 是否只读
  final bool readOnly;

  /// 是否自动聚焦
  final bool autofocus;

  /// 是否密码隐藏文本
  final bool obscureText;

  /// 掩码字符 (默认 '•')
  final String obscuringCharacter;

  /// 键盘类型
  final TextInputType? keyboardType;

  /// 键盘动作按钮 (如 done, search, next)
  final TextInputAction? textInputAction;

  /// 文本大写风格
  final TextCapitalization textCapitalization;

  /// 文本样式
  final TextStyle? style;

  /// 行数控制 (默认 1)
  final int? maxLines;

  /// 最小行数控制
  final int? minLines;

  /// 是否自动撑满
  final bool expands;

  /// 最大字符数控制
  final int? maxLength;

  /// 输入格式化处理器列表
  final List<TextInputFormatter>? inputFormatters;

  /// 自动填充提示
  final Iterable<String>? autofillHints;

  /// 是否允许文本交互选中
  final bool enableInteractiveSelection;

  /// 光标颜色
  final Color? cursorColor;

  /// 鼠标指针样式
  final MouseCursor? mouseCursor;

  /// 内边距
  final EdgeInsetsGeometry? contentPadding;

  /// 是否开启数字步进器按钮 (+/-)
  final bool showStepper;

  /// 数字步进器按钮样式 (默认 [FluentNumberStepperStyle.horizontal])
  final FluentNumberStepperStyle stepperStyle;

  /// 数字步进跨度 (默认 1)
  final num step;

  /// 最小值 (仅数字模式生效)
  final num? minNumber;

  /// 最大值 (仅数字模式生效)
  final num? maxNumber;

  const FluentTextField({
    super.key,
    this.label,
    this.hintText,
    this.textFieldStyle = FluentTextFieldStyle.neutral,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.onTapOutside,
    this.errorText,
    this.helperText,
    this.leadingIcon,
    this.trailingIcon,
    this.prefix,
    this.suffix,
    this.showClearButton = true,
    this.showPasswordToggle = false,
    this.backgroundColor,
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.obscureText = false,
    this.obscuringCharacter = '•',
    this.keyboardType,
    this.textInputAction,
    this.textCapitalization = TextCapitalization.none,
    this.style,
    this.maxLines = 1,
    this.minLines,
    this.expands = false,
    this.maxLength,
    this.inputFormatters,
    this.autofillHints,
    this.enableInteractiveSelection = true,
    this.cursorColor,
    this.mouseCursor,
    this.contentPadding,
    this.showStepper = false,
    this.stepperStyle = FluentNumberStepperStyle.horizontal,
    this.step = 1,
    this.minNumber,
    this.maxNumber,
  });

  /// 密码输入框命名构造函数 [FluentTextField.password]
  const FluentTextField.password({
    super.key,
    this.label,
    this.hintText = '请输入密码',
    this.textFieldStyle = FluentTextFieldStyle.neutral,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.onTapOutside,
    this.errorText,
    this.helperText,
    this.leadingIcon = const Icon(Icons.lock_outline),
    this.trailingIcon,
    this.prefix,
    this.suffix,
    this.showClearButton = true,
    this.backgroundColor,
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.obscuringCharacter = '•',
    this.textInputAction,
    this.style,
    this.autofillHints = const [AutofillHints.password],
    this.enableInteractiveSelection = true,
    this.cursorColor,
    this.mouseCursor,
    this.contentPadding,
  })  : showPasswordToggle = true,
        obscureText = true,
        keyboardType = TextInputType.visiblePassword,
        textCapitalization = TextCapitalization.none,
        maxLines = 1,
        minLines = null,
        expands = false,
        maxLength = null,
        inputFormatters = null,
        showStepper = false,
        stepperStyle = FluentNumberStepperStyle.horizontal,
        step = 1,
        minNumber = null,
        maxNumber = null;

  /// 搜索输入框命名构造函数 [FluentTextField.search]
  const FluentTextField.search({
    super.key,
    this.label,
    this.hintText = '搜索...',
    this.textFieldStyle = FluentTextFieldStyle.neutral,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.onTapOutside,
    this.errorText,
    this.helperText,
    this.leadingIcon = const Icon(Icons.search),
    this.trailingIcon,
    this.prefix,
    this.suffix,
    this.showClearButton = true,
    this.backgroundColor,
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.style,
    this.autofillHints,
    this.enableInteractiveSelection = true,
    this.cursorColor,
    this.mouseCursor,
    this.contentPadding,
  })  : showPasswordToggle = false,
        obscureText = false,
        obscuringCharacter = '•',
        keyboardType = TextInputType.text,
        textInputAction = TextInputAction.search,
        textCapitalization = TextCapitalization.none,
        maxLines = 1,
        minLines = null,
        expands = false,
        maxLength = null,
        inputFormatters = null,
        showStepper = false,
        stepperStyle = FluentNumberStepperStyle.horizontal,
        step = 1,
        minNumber = null,
        maxNumber = null;

  /// 数字/数值输入框命名构造函数 [FluentTextField.number]
  FluentTextField.number({
    super.key,
    this.label,
    this.hintText,
    this.textFieldStyle = FluentTextFieldStyle.neutral,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.onTapOutside,
    this.errorText,
    this.helperText,
    this.leadingIcon,
    this.trailingIcon,
    this.prefix,
    this.suffix,
    this.showClearButton = false,
    this.backgroundColor,
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.style,
    this.autofillHints,
    this.enableInteractiveSelection = true,
    this.cursorColor,
    this.mouseCursor,
    this.contentPadding,
    this.showStepper = true,
    this.stepperStyle = FluentNumberStepperStyle.horizontal,
    this.step = 1,
    this.minNumber,
    this.maxNumber,
    bool allowDecimal = true,
    bool allowSigned = true,
  })  : showPasswordToggle = false,
        obscureText = false,
        obscuringCharacter = '•',
        keyboardType = TextInputType.numberWithOptions(
          decimal: allowDecimal,
          signed: allowSigned,
        ),
        textInputAction = TextInputAction.done,
        textCapitalization = TextCapitalization.none,
        maxLines = 1,
        minLines = null,
        expands = false,
        maxLength = null,
        inputFormatters = [
          if (!allowDecimal && !allowSigned)
            FilteringTextInputFormatter.digitsOnly,
          if (allowDecimal || allowSigned)
            FilteringTextInputFormatter.allow(
              RegExp(
                '${allowSigned ? "^-?" : ""}\\d*${allowDecimal ? "(\\.\\d*)?" : ""}',
              ),
            ),
        ];

  /// 多行内容自适应撑高输入框命名构造函数 [FluentTextField.multiline]
  const FluentTextField.multiline({
    super.key,
    this.label,
    this.hintText = '请输入内容...',
    this.textFieldStyle = FluentTextFieldStyle.neutral,
    this.controller,
    this.focusNode,
    this.initialValue,
    this.onChanged,
    this.onSubmitted,
    this.onEditingComplete,
    this.onTap,
    this.onTapOutside,
    this.errorText,
    this.helperText,
    this.leadingIcon,
    this.trailingIcon,
    this.prefix,
    this.suffix,
    this.showClearButton = true,
    this.backgroundColor,
    this.enabled = true,
    this.readOnly = false,
    this.autofocus = false,
    this.style,
    this.minLines = 1,
    this.maxLength,
    this.inputFormatters,
    this.autofillHints,
    this.enableInteractiveSelection = true,
    this.cursorColor,
    this.mouseCursor,
    this.contentPadding,
  })  : showPasswordToggle = false,
        obscureText = false,
        obscuringCharacter = '•',
        keyboardType = TextInputType.multiline,
        textInputAction = TextInputAction.newline,
        textCapitalization = TextCapitalization.none,
        maxLines = null,
        expands = false,
        showStepper = false,
        stepperStyle = FluentNumberStepperStyle.horizontal,
        step = 1,
        minNumber = null,
        maxNumber = null;

  /// [FluentTextFormField] 便捷表单静态构造方法
  static Widget form({
    Key? key,
    String? label,
    String? hintText,
    FluentTextFieldStyle textFieldStyle = FluentTextFieldStyle.neutral,
    TextEditingController? controller,
    FocusNode? focusNode,
    String? initialValue,
    FormFieldValidator<String>? validator,
    FormFieldSetter<String>? onSaved,
    AutovalidateMode? autovalidateMode,
    ValueChanged<String>? onChanged,
    ValueChanged<String>? onSubmitted,
    VoidCallback? onEditingComplete,
    GestureTapCallback? onTap,
    TapRegionCallback? onTapOutside,
    String? helperText,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Widget? prefix,
    Widget? suffix,
    bool showClearButton = true,
    bool showPasswordToggle = false,
    Color? backgroundColor,
    bool enabled = true,
    bool readOnly = false,
    bool autofocus = false,
    bool obscureText = false,
    String obscuringCharacter = '•',
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextStyle? style,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    List<TextInputFormatter>? inputFormatters,
    Iterable<String>? autofillHints,
    bool enableInteractiveSelection = true,
    Color? cursorColor,
    MouseCursor? mouseCursor,
    EdgeInsetsGeometry? contentPadding,
    String? restorationId,
  }) {
    return FluentTextFormField(
      key: key,
      label: label,
      hintText: hintText,
      textFieldStyle: textFieldStyle,
      controller: controller,
      focusNode: focusNode,
      initialValue: initialValue,
      validator: validator,
      onSaved: onSaved,
      autovalidateMode: autovalidateMode,
      onChanged: onChanged,
      onSubmitted: onSubmitted,
      onEditingComplete: onEditingComplete,
      onTap: onTap,
      onTapOutside: onTapOutside,
      helperText: helperText,
      leadingIcon: leadingIcon,
      trailingIcon: trailingIcon,
      prefix: prefix,
      suffix: suffix,
      showClearButton: showClearButton,
      showPasswordToggle: showPasswordToggle,
      backgroundColor: backgroundColor,
      enabled: enabled,
      readOnly: readOnly,
      autofocus: autofocus,
      obscureText: obscureText,
      obscuringCharacter: obscuringCharacter,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      textCapitalization: textCapitalization,
      style: style,
      maxLines: maxLines,
      minLines: minLines,
      expands: expands,
      maxLength: maxLength,
      inputFormatters: inputFormatters,
      autofillHints: autofillHints,
      enableInteractiveSelection: enableInteractiveSelection,
      cursorColor: cursorColor,
      mouseCursor: mouseCursor,
      contentPadding: contentPadding,
      restorationId: restorationId,
    );
  }

  @override
  State<FluentTextField> createState() => _FluentTextFieldState();
}

class _FluentTextFieldState extends State<FluentTextField> {
  late TextEditingController _controller;
  late FocusNode _focusNode;
  bool _isFocused = false;
  bool _isHovered = false;
  bool _hasText = false;
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _controller =
        widget.controller ?? TextEditingController(text: widget.initialValue);
    _focusNode = widget.focusNode ?? FocusNode();
    _hasText = _controller.text.isNotEmpty;
    _obscureText = widget.obscureText;

    _controller.addListener(_handleTextChange);
    _focusNode.addListener(_handleFocusChange);
  }

  @override
  void didUpdateWidget(FluentTextField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      oldWidget.controller?.removeListener(_handleTextChange);
      _controller = widget.controller ??
          TextEditingController(text: widget.initialValue);
      _controller.addListener(_handleTextChange);
      _hasText = _controller.text.isNotEmpty;
    }
    if (widget.focusNode != oldWidget.focusNode) {
      oldWidget.focusNode?.removeListener(_handleFocusChange);
      _focusNode = widget.focusNode ?? FocusNode();
      _focusNode.addListener(_handleFocusChange);
      _isFocused = _focusNode.hasFocus;
    }
    if (widget.obscureText != oldWidget.obscureText) {
      _obscureText = widget.obscureText;
    }
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
    if (widget.focusNode == null) {
      _focusNode.dispose();
    } else {
      _focusNode.removeListener(_handleFocusChange);
    }
    super.dispose();
  }

  void _clearText() {
    _controller.clear();
    widget.onChanged?.call('');
  }

  void _togglePasswordVisibility() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  bool get _canIncrement {
    if (!widget.enabled) return false;
    final text = _controller.text;
    final val = num.tryParse(text);
    if (val == null) return true;
    if (widget.maxNumber != null && val >= widget.maxNumber!) return false;
    return true;
  }

  bool get _canDecrement {
    if (!widget.enabled) return false;
    final text = _controller.text;
    final val = num.tryParse(text);
    if (val == null) return true;
    if (widget.minNumber != null && val <= widget.minNumber!) return false;
    return true;
  }

  void _stepValue(bool increment) {
    if (increment && !_canIncrement) return;
    if (!increment && !_canDecrement) return;

    final text = _controller.text;
    num val = num.tryParse(text) ?? 0;
    if (increment) {
      val += widget.step;
      if (widget.maxNumber != null && val > widget.maxNumber!) {
        val = widget.maxNumber!;
      }
    } else {
      val -= widget.step;
      if (widget.minNumber != null && val < widget.minNumber!) {
        val = widget.minNumber!;
      }
    }
    final newText = val is int ? val.toString() : val.toStringAsFixed(2);
    _controller.text = newText;
    _controller.selection = TextSelection.collapsed(offset: newText.length);
    widget.onChanged?.call(newText);
  }

  Color _resolveBackgroundColor(FluentThemeData theme) {
    if (widget.backgroundColor != null) return widget.backgroundColor!;
    final isDark = theme.brightness == Brightness.dark;

    switch (widget.textFieldStyle) {
      case FluentTextFieldStyle.neutral:
        return widget.enabled
            ? theme.backgroundColor
            : (isDark ? const Color(0xFF292929) : const Color(0xFFF5F5F5));
      case FluentTextFieldStyle.outlined:
      case FluentTextFieldStyle.underlined:
        return Colors.transparent;
      case FluentTextFieldStyle.filled:
        return isDark
            ? const Color(0xFF2B2B2B)
            : const Color(0xFFF3F3F3);
    }
  }

  BoxDecoration _resolveDecoration(FluentThemeData theme, Color borderColor) {
    final effectiveBg = _resolveBackgroundColor(theme);

    if (widget.textFieldStyle == FluentTextFieldStyle.underlined) {
      return BoxDecoration(
        color: effectiveBg,
        border: Border(
          bottom: BorderSide(
            color: borderColor,
            width: 1.5,
          ),
        ),
      );
    }

    return BoxDecoration(
      color: effectiveBg,
      borderRadius: BorderRadius.circular(theme.cornerRadius),
      border: Border.all(
        color: borderColor,
        width: 1.0,
      ),
    );
  }

  Widget _buildStepButton({
    required IconData icon,
    required bool enabled,
    required VoidCallback onTap,
    required FluentThemeData theme,
    double size = 20.0,
  }) {
    final Color color = enabled
        ? theme.foregroundSecondaryColor
        : theme.foregroundSecondaryColor.withValues(alpha: 0.3);

    return MouseRegion(
      cursor: enabled ? SystemMouseCursors.click : SystemMouseCursors.basic,
      child: GestureDetector(
        onTap: enabled ? onTap : null,
        behavior: HitTestBehavior.opaque,
        child: SizedBox(
          width: 20.0,
          height: 20.0,
          child: Center(
            child: Icon(icon, size: size, color: color),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isError = widget.errorText != null && widget.errorText!.isNotEmpty;

    // 颜色计算
    Color borderColor = theme.dividerColor;
    if (!widget.enabled) {
      borderColor = theme.dividerColor.withValues(alpha: 0.38);
    } else if (isError) {
      borderColor = FluentGlobalTokens.sharedRed;
    } else if (_isFocused) {
      borderColor = theme.primaryColor;
    } else if (_isHovered) {
      borderColor = theme.foregroundColor.withValues(alpha: 0.4);
    }

    final Color labelColor = !widget.enabled
        ? theme.foregroundSecondaryColor.withValues(alpha: 0.38)
        : (isError
            ? FluentGlobalTokens.sharedRed
            : (_isFocused
                ? theme.primaryColor
                : theme.foregroundSecondaryColor));

    // 是否在前置构建减号 (-) 按钮 (FluentNumberStepperStyle.horizontal)
    final bool hasHorizontalStepperPrefix = widget.showStepper &&
        widget.enabled &&
        widget.stepperStyle == FluentNumberStepperStyle.horizontal;

    // 当 expands 为 true 时，按 Flutter 规范强制 maxLines 与 minLines 为 null
    final int? effectiveMaxLines = widget.expands ? null : widget.maxLines;
    final int? effectiveMinLines = widget.expands ? null : widget.minLines;

    Widget containerWidget = AnimatedContainer(
      duration: const Duration(milliseconds: 150),
      decoration: _resolveDecoration(theme, borderColor),
      constraints: const BoxConstraints(minHeight: 40.0),
      padding: widget.contentPadding ??
          const EdgeInsets.symmetric(horizontal: 12.0),
      child: Row(
        crossAxisAlignment: widget.expands
            ? CrossAxisAlignment.stretch
            : CrossAxisAlignment.center,
        children: [
          // 水平 Stepper 左侧减号 (-)
          if (hasHorizontalStepperPrefix) ...[
            _buildStepButton(
              icon: Icons.remove_circle_outline,
              enabled: _canDecrement,
              onTap: () => _stepValue(false),
              theme: theme,
              size: 20.0,
            ),
            const SizedBox(width: 8.0),
          ],

          // Prefix Icon / Leading Icon (在 20x20 标准槽集中居中，确保像素级对齐)
          if (widget.leadingIcon != null) ...[
            SizedBox(
              width: 20.0,
              height: 20.0,
              child: Center(
                child: IconTheme(
                  data: IconThemeData(
                    color: !widget.enabled
                        ? theme.foregroundSecondaryColor.withValues(
                            alpha: 0.38,
                          )
                        : (_isFocused
                            ? theme.primaryColor
                            : theme.foregroundSecondaryColor),
                    size: 20.0,
                  ),
                  child: widget.leadingIcon!,
                ),
              ),
            ),
            const SizedBox(width: 8.0),
          ],

          if (widget.prefix != null) ...[
            widget.prefix!,
            const SizedBox(width: 6.0),
          ],

          // 原生 TextField
          Expanded(
            child: TextField(
              controller: _controller,
              focusNode: _focusNode,
              enabled: widget.enabled,
              readOnly: widget.readOnly,
              autofocus: widget.autofocus,
              obscureText: _obscureText,
              obscuringCharacter: widget.obscuringCharacter,
              keyboardType: widget.keyboardType,
              textInputAction: widget.textInputAction,
              textCapitalization: widget.textCapitalization,
              maxLines: effectiveMaxLines,
              minLines: effectiveMinLines,
              expands: widget.expands,
              maxLength: widget.maxLength,
              inputFormatters: widget.inputFormatters,
              onChanged: widget.onChanged,
              onSubmitted: widget.onSubmitted,
              onEditingComplete: widget.onEditingComplete,
              onTap: widget.onTap,
              onTapOutside: widget.onTapOutside,
              autofillHints: widget.autofillHints,
              enableInteractiveSelection:
                  widget.enableInteractiveSelection,
              cursorColor: widget.cursorColor ?? theme.primaryColor,
              mouseCursor: widget.mouseCursor,
              textAlignVertical: TextAlignVertical.center,
              style: widget.style ??
                  TextStyle(
                    fontSize: 14.0,
                    color: widget.enabled
                        ? theme.foregroundColor
                        : theme.foregroundSecondaryColor
                            .withValues(alpha: 0.5),
                  ),
              decoration: InputDecoration(
                hintText: widget.hintText,
                hintStyle: TextStyle(
                  fontSize: 14.0,
                  color: theme.foregroundSecondaryColor
                      .withValues(alpha: 0.7),
                ),
                border: InputBorder.none,
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 10.0),
                counterText: '',
              ),
            ),
          ),

          if (widget.suffix != null) ...[
            const SizedBox(width: 6.0),
            widget.suffix!,
          ],

          // 清空按钮 (在 20x20 标准槽集中居中，带 MouseRegion)
          if (widget.showClearButton && _hasText && widget.enabled) ...[
            const SizedBox(width: 8.0),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: _clearText,
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: Center(
                    child: Icon(
                      Icons.cancel,
                      size: 18.0,
                      color: theme.foregroundSecondaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],

          // 密码显隐切换按键 (在 20x20 标准槽集中居中，带 MouseRegion)
          if (widget.showPasswordToggle && widget.enabled) ...[
            const SizedBox(width: 8.0),
            MouseRegion(
              cursor: SystemMouseCursors.click,
              child: GestureDetector(
                onTap: _togglePasswordVisibility,
                child: SizedBox(
                  width: 20.0,
                  height: 20.0,
                  child: Center(
                    child: Icon(
                      _obscureText
                          ? Icons.visibility_outlined
                          : Icons.visibility_off_outlined,
                      size: 20.0,
                      color: theme.foregroundSecondaryColor,
                    ),
                  ),
                ),
              ),
            ),
          ],

          // 数字步进器 (+/-) 各排版模式 (在 20x20 标准槽集中居中)
          if (widget.showStepper && widget.enabled) ...[
            if (widget.stepperStyle ==
                FluentNumberStepperStyle.horizontal) ...[
              const SizedBox(width: 8.0),
              _buildStepButton(
                icon: Icons.add_circle_outline,
                enabled: _canIncrement,
                onTap: () => _stepValue(true),
                theme: theme,
                size: 20.0,
              ),
            ] else if (widget.stepperStyle ==
                FluentNumberStepperStyle.suffixHorizontal) ...[
              const SizedBox(width: 6.0),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildStepButton(
                    icon: Icons.remove,
                    enabled: _canDecrement,
                    onTap: () => _stepValue(false),
                    theme: theme,
                    size: 18.0,
                  ),
                  const SizedBox(width: 4.0),
                  _buildStepButton(
                    icon: Icons.add,
                    enabled: _canIncrement,
                    onTap: () => _stepValue(true),
                    theme: theme,
                    size: 18.0,
                  ),
                ],
              ),
            ] else if (widget.stepperStyle ==
                FluentNumberStepperStyle.vertical) ...[
              const SizedBox(width: 6.0),
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildStepButton(
                    icon: Icons.keyboard_arrow_up,
                    enabled: _canIncrement,
                    onTap: () => _stepValue(true),
                    theme: theme,
                    size: 14.0,
                  ),
                  _buildStepButton(
                    icon: Icons.keyboard_arrow_down,
                    enabled: _canDecrement,
                    onTap: () => _stepValue(false),
                    theme: theme,
                    size: 14.0,
                  ),
                ],
              ),
            ],
          ],

          // 尾部 Icon
          if (widget.trailingIcon != null) ...[
            const SizedBox(width: 8.0),
            SizedBox(
              width: 20.0,
              height: 20.0,
              child: Center(
                child: IconTheme(
                  data: IconThemeData(
                    color: theme.foregroundSecondaryColor,
                    size: 20.0,
                  ),
                  child: widget.trailingIcon!,
                ),
              ),
            ),
          ],
        ],
      ),
    );

    if (widget.expands) {
      containerWidget = Expanded(child: containerWidget);
    }

    return MouseRegion(
      onEnter: (_) => setState(() => _isHovered = true),
      onExit: (_) => setState(() => _isHovered = false),
      child: Column(
        mainAxisSize: widget.expands ? MainAxisSize.max : MainAxisSize.min,
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
          containerWidget,

          // 底部辅助 / 错误提示信息
          if (isError) ...[
            const SizedBox(height: 4.0),
            Text(
              widget.errorText!,
              style: const TextStyle(
                fontSize: 12.0,
                color: FluentGlobalTokens.sharedRed,
              ),
            ),
          ] else if (widget.helperText != null &&
              widget.helperText!.isNotEmpty) ...[
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
      ),
    );
  }
}

/// 集成 Flutter [Form] 表单验证能力的 [FluentTextFormField] 组件
class FluentTextFormField extends FormField<String> {
  final TextEditingController? controller;

  FluentTextFormField({
    super.key,
    String? label,
    String? hintText,
    FluentTextFieldStyle textFieldStyle = FluentTextFieldStyle.neutral,
    this.controller,
    FocusNode? focusNode,
    super.initialValue,
    super.validator,
    super.onSaved,
    super.autovalidateMode,
    ValueChanged<String>? onChanged,
    ValueChanged<String>? onSubmitted,
    VoidCallback? onEditingComplete,
    GestureTapCallback? onTap,
    TapRegionCallback? onTapOutside,
    String? helperText,
    Widget? leadingIcon,
    Widget? trailingIcon,
    Widget? prefix,
    Widget? suffix,
    bool showClearButton = true,
    bool showPasswordToggle = false,
    Color? backgroundColor,
    super.enabled = true,
    bool readOnly = false,
    bool autofocus = false,
    bool obscureText = false,
    String obscuringCharacter = '•',
    TextInputType? keyboardType,
    TextInputAction? textInputAction,
    TextCapitalization textCapitalization = TextCapitalization.none,
    TextStyle? style,
    int? maxLines = 1,
    int? minLines,
    bool expands = false,
    int? maxLength,
    List<TextInputFormatter>? inputFormatters,
    Iterable<String>? autofillHints,
    bool enableInteractiveSelection = true,
    Color? cursorColor,
    MouseCursor? mouseCursor,
    EdgeInsetsGeometry? contentPadding,
    String? restorationId,
  }) : super(
          builder: (FormFieldState<String> field) {
            final _FluentTextFormFieldState state =
                field as _FluentTextFormFieldState;

            void onChangedHandler(String value) {
              field.didChange(value);
              onChanged?.call(value);
            }

            return FluentTextField(
              label: label,
              hintText: hintText,
              textFieldStyle: textFieldStyle,
              controller: state._effectiveController,
              focusNode: focusNode,
              initialValue: initialValue,
              onChanged: onChangedHandler,
              onSubmitted: onSubmitted,
              onEditingComplete: onEditingComplete,
              onTap: onTap,
              onTapOutside: onTapOutside,
              errorText: field.errorText,
              helperText: helperText,
              leadingIcon: leadingIcon,
              trailingIcon: trailingIcon,
              prefix: prefix,
              suffix: suffix,
              showClearButton: showClearButton,
              showPasswordToggle: showPasswordToggle,
              backgroundColor: backgroundColor,
              enabled: enabled,
              readOnly: readOnly,
              autofocus: autofocus,
              obscureText: obscureText,
              obscuringCharacter: obscuringCharacter,
              keyboardType: keyboardType,
              textInputAction: textInputAction,
              textCapitalization: textCapitalization,
              style: style,
              maxLines: maxLines,
              minLines: minLines,
              expands: expands,
              maxLength: maxLength,
              inputFormatters: inputFormatters,
              autofillHints: autofillHints,
              enableInteractiveSelection: enableInteractiveSelection,
              cursorColor: cursorColor,
              mouseCursor: mouseCursor,
              contentPadding: contentPadding,
            );
          },
        );

  @override
  FormFieldState<String> createState() => _FluentTextFormFieldState();
}

class _FluentTextFormFieldState extends FormFieldState<String> {
  TextEditingController? _controller;

  TextEditingController get _effectiveController =>
      widget.controller ?? _controller!;

  @override
  FluentTextFormField get widget => super.widget as FluentTextFormField;

  @override
  void initState() {
    super.initState();
    if (widget.controller == null) {
      _controller = TextEditingController(text: widget.initialValue);
    } else {
      widget.controller!.addListener(_handleControllerChanged);
    }
  }

  @override
  void didUpdateWidget(FluentTextFormField oldWidget) {
    super.didUpdateWidget(oldWidget);
    if (widget.controller != oldWidget.controller) {
      oldWidget.controller?.removeListener(_handleControllerChanged);
      widget.controller?.addListener(_handleControllerChanged);

      if (oldWidget.controller != null && widget.controller == null) {
        _controller =
            TextEditingController(text: oldWidget.controller!.text);
      }
      if (widget.controller != null) {
        setValue(widget.controller!.text);
        if (oldWidget.controller == null) {
          _controller = null;
        }
      }
    }
  }

  @override
  void dispose() {
    widget.controller?.removeListener(_handleControllerChanged);
    _controller?.dispose();
    super.dispose();
  }

  @override
  void reset() {
    super.reset();
    setState(() {
      _effectiveController.text = widget.initialValue ?? '';
    });
  }

  void _handleControllerChanged() {
    if (_effectiveController.text != value) {
      didChange(_effectiveController.text);
    }
  }
}
