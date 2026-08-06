import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';

/// Fluent 2 官方 Citation 引用索引标签 [FluentCitation]
///
/// 移植自 Android Kotlin V2CitationActivity.kt 与 Citation.kt
class FluentCitation extends StatelessWidget {
  /// 序号/文本 (如 '1', '[1]', 'Source')
  final String text;

  /// 点击回调
  final VoidCallback? onTap;

  const FluentCitation({
    super.key,
    required this.text,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 6.0, vertical: 2.0),
        decoration: BoxDecoration(
          color: theme.primaryColor.withAlpha(25),
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: theme.primaryColor.withAlpha(80), width: 0.8),
        ),
        child: Text(
          text,
          style: TextStyle(
            fontSize: 11.0,
            fontWeight: FontWeight.bold,
            color: theme.primaryColor,
          ),
        ),
      ),
    );
  }
}
