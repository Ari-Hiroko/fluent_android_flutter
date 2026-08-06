import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 搜索栏组件 [FluentSearchBar]
///
/// 移植自 Android Kotlin Tokenized SearchBar.kt 与 Searchbar.kt
class FluentSearchBar extends StatefulWidget {
  /// 提示文本
  final String hintText;

  /// 控制器
  final TextEditingController? controller;

  /// 文本改变时的回调
  final ValueChanged<String>? onChanged;

  /// 提交搜索时的回调
  final ValueChanged<String>? onSubmitted;

  /// 清空文本时的回调
  final VoidCallback? onClear;

  /// 前导图标 (默认: 搜索图标)
  final Widget? leadingIcon;

  /// 尾部图标 (默认: 有文本时显示一键清空图标)
  final Widget? trailingIcon;

  /// 是否自动获取焦点
  final bool autoFocus;

  /// 外边距
  final EdgeInsetsGeometry padding;

  const FluentSearchBar({
    super.key,
    this.hintText = 'Search',
    this.controller,
    this.onChanged,
    this.onSubmitted,
    this.onClear,
    this.leadingIcon,
    this.trailingIcon,
    this.autoFocus = false,
    this.padding = const EdgeInsets.symmetric(horizontal: 4.0, vertical: 4.0),
  });

  @override
  State<FluentSearchBar> createState() => _FluentSearchBarState();
}

class _FluentSearchBarState extends State<FluentSearchBar> {
  late TextEditingController _controller;
  bool _hasText = false;

  @override
  void initState() {
    super.initState();
    _controller = widget.controller ?? TextEditingController();
    _hasText = _controller.text.isNotEmpty;
    _controller.addListener(_handleTextChange);
  }

  void _handleTextChange() {
    final hasText = _controller.text.isNotEmpty;
    if (hasText != _hasText) {
      setState(() {
        _hasText = hasText;
      });
    }
  }

  @override
  void dispose() {
    if (widget.controller == null) {
      _controller.dispose();
    } else {
      _controller.removeListener(_handleTextChange);
    }
    super.dispose();
  }

  void _clearText() {
    _controller.clear();
    widget.onChanged?.call('');
    widget.onClear?.call();
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isDark = theme.brightness == Brightness.dark;

    final Color containerColor = isDark
        ? const Color(0xFF333333)
        : const Color(0xFFF0F0F0);

    return Padding(
      padding: widget.padding,
      child: Container(
        height: 40.0,
        decoration: BoxDecoration(
          color: containerColor,
          borderRadius: BorderRadius.circular(theme.cornerRadius),
        ),
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: Row(
          children: [
            // 前导 Icon (默认 搜索图标)
            widget.leadingIcon ??
                Icon(
                  Icons.search,
                  size: 20.0,
                  color: theme.foregroundSecondaryColor,
                ),
            const SizedBox(width: 8.0),

            // 搜索文本输入框
            Expanded(
              child: TextField(
                controller: _controller,
                autofocus: widget.autoFocus,
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
                ),
              ),
            ),

            // 尾部 Icon (默认一键清空按钮)
            if (_hasText)
              IconButton(
                icon: const Icon(Icons.cancel, size: 18.0),
                color: theme.foregroundSecondaryColor,
                padding: EdgeInsets.zero,
                constraints: const BoxConstraints(minWidth: 28.0, minHeight: 28.0),
                onPressed: _clearText,
              )
            else if (widget.trailingIcon != null)
              widget.trailingIcon!,
          ],
        ),
      ),
    );
  }
}
