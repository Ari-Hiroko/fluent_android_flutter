import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import 'fluent_avatar.dart';

/// Fluent 2 人员卡片/信息列组件 [FluentPersona]
///
/// 移植自 Android Kotlin Persona.kt 与 PersonaView.kt
class FluentPersona extends StatelessWidget {
  /// 姓名
  final String name;

  /// 头像 (可选)
  final FluentAvatar? avatar;

  /// 职位/副标题 (第二行文本)
  final String? subtitle;

  /// 团队/三级描述 (第三行文本)
  final String? tertiaryTitle;

  /// 尾部操作 Widget (可选)
  final Widget? trailing;

  /// 点击回调
  final VoidCallback? onTap;

  const FluentPersona({
    super.key,
    required this.name,
    this.avatar,
    this.subtitle,
    this.tertiaryTitle,
    this.trailing,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return FluentInkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8.0),
        child: Row(
          children: [
            avatar ?? FluentAvatar(name: name),
            const SizedBox(width: 12.0),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.w600,
                      color: theme.foregroundColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (subtitle != null && subtitle!.isNotEmpty) ...[
                    const SizedBox(height: 2.0),
                    Text(
                      subtitle!,
                      style: TextStyle(
                        fontSize: 13.0,
                        color: theme.foregroundSecondaryColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                  if (tertiaryTitle != null && tertiaryTitle!.isNotEmpty) ...[
                    const SizedBox(height: 2.0),
                    Text(
                      tertiaryTitle!,
                      style: TextStyle(
                        fontSize: 12.0,
                        color: theme.foregroundSecondaryColor.withAlpha(180),
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ],
              ),
            ),
            if (trailing != null) ...[const SizedBox(width: 8.0), trailing!],
          ],
        ),
      ),
    );
  }
}
