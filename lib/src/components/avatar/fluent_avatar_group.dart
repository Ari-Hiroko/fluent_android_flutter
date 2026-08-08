import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import 'fluent_avatar.dart';

/// 头像组重叠堆叠方向/样式 [FluentAvatarGroupStyle]
enum FluentAvatarGroupStyle {
  /// 重叠堆叠 (Stack)
  stack,

  /// 平铺排列 (Pile)
  pile,
}

/// Fluent 2 头像组组件 [FluentAvatarGroup]
///
/// 移植自 Android Kotlin AvatarGroup.kt 与 AvatarGroupView.kt
class FluentAvatarGroup extends StatelessWidget {
  /// 头像组件列表
  final List<FluentAvatar> avatars;

  /// 最多可视头像数量 (超出的数量显示 "+N" 溢出标记，默认 4)
  final int maxVisible;

  /// 头像尺寸大小
  final FluentAvatarSize size;

  /// 堆叠方式 (stack / pile)
  final FluentAvatarGroupStyle groupStyle;

  /// 点击回调
  final VoidCallback? onTap;

  const FluentAvatarGroup({
    super.key,
    required this.avatars,
    this.maxVisible = 4,
    this.size = FluentAvatarSize.size40,
    this.groupStyle = FluentAvatarGroupStyle.stack,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final visibleCount = avatars.length > maxVisible
        ? maxVisible
        : avatars.length;
    final overflowCount = avatars.length - visibleCount;

    if (groupStyle == FluentAvatarGroupStyle.pile) {
      return Wrap(
        spacing: 6.0,
        children: [
          ...avatars.take(visibleCount),
          if (overflowCount > 0) _buildOverflowBadge(theme, overflowCount),
        ],
      );
    }

    // Stack 重叠排布
    final double overlapOffset = size.displaySize * 0.65;

    return GestureDetector(
      onTap: onTap,
      child: SizedBox(
        height: size.displaySize,
        width:
            (visibleCount + (overflowCount > 0 ? 1 : 0)) * overlapOffset +
            (size.displaySize - overlapOffset),
        child: Stack(
          children: List.generate(visibleCount + (overflowCount > 0 ? 1 : 0), (
            index,
          ) {
            if (index == visibleCount && overflowCount > 0) {
              return Positioned(
                left: index * overlapOffset,
                child: _buildOverflowBadge(theme, overflowCount),
              );
            }
            return Positioned(
              left: index * overlapOffset,
              child: avatars[index],
            );
          }),
        ),
      ),
    );
  }

  Widget _buildOverflowBadge(FluentThemeData theme, int count) {
    return Container(
      width: size.displaySize,
      height: size.displaySize,
      decoration: BoxDecoration(
        color: theme.brightness == Brightness.dark
            ? const Color(0xFF444444)
            : const Color(0xFFE0E0E0),
        shape: BoxShape.circle,
        border: Border.all(color: theme.backgroundColor, width: 1.5),
      ),
      alignment: Alignment.center,
      child: Text(
        '+$count',
        style: TextStyle(
          fontSize: size.fontSize,
          fontWeight: FontWeight.bold,
          color: theme.foregroundColor,
        ),
      ),
    );
  }
}
