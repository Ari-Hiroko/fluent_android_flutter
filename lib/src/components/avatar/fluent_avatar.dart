import 'package:flutter/material.dart';
import '../../theme/fluent_global_tokens.dart';
import '../../theme/fluent_theme.dart';

/// 头像尺寸大小 [FluentAvatarSize]
enum FluentAvatarSize {
  size16(16.0, 10.0, 6.0),
  size24(24.0, 11.0, 8.0),
  size32(32.0, 13.0, 10.0),
  size40(40.0, 15.0, 12.0),
  size56(56.0, 20.0, 16.0),
  size72(72.0, 26.0, 20.0);

  final double displaySize;
  final double fontSize;
  final double presenceSize;

  const FluentAvatarSize(this.displaySize, this.fontSize, this.presenceSize);
}

/// 在线/忙碌状态 [FluentPresence]
enum FluentPresence { none, available, away, busy, dnd, offline }

/// 头像形状 [FluentAvatarStyle]
enum FluentAvatarStyle { circle, square }

/// Fluent 2 头像组件 [FluentAvatar]
///
/// 移植自 Android Kotlin Avatar.kt 与 AvatarView.kt
class FluentAvatar extends StatelessWidget {
  /// 用户姓名 (用于生成 Initials 首字母如 "JD" 以及计算背景色)
  final String? name;

  /// 图片资源
  final ImageProvider? image;

  /// 尺寸形态 (默认 size40)
  final FluentAvatarSize size;

  /// 形状款式 (默认圆角 circle)
  final FluentAvatarStyle style;

  /// 在线 Presence 状态
  final FluentPresence presence;

  /// 是否包含外圈高亮 Ring 环
  final bool hasRing;

  /// 点击回调
  final VoidCallback? onTap;

  const FluentAvatar({
    super.key,
    this.name,
    this.image,
    this.size = FluentAvatarSize.size40,
    this.style = FluentAvatarStyle.circle,
    this.presence = FluentPresence.none,
    this.hasRing = false,
    this.onTap,
  });

  /// 计算姓名首字母 (如 "John Doe" -> "JD")
  String _getInitials(String? fullName) {
    if (fullName == null || fullName.trim().isEmpty) return '?';
    final parts = fullName.trim().split(RegExp(r'\s+'));
    if (parts.length >= 2) {
      return '${parts[0][0]}${parts[1][0]}'.toUpperCase();
    }
    return parts[0][0].toUpperCase();
  }

  /// 根据姓名哈希从 SharedColorSets 衍生专属头像背景色
  Color _getAvatarBackgroundColor(String? fullName) {
    if (fullName == null || fullName.isEmpty) return const Color(0xFFE0E0E0);
    final hash = fullName.hashCode.abs();
    final colors = [
      FluentGlobalTokens.sharedRed,
      FluentGlobalTokens.sharedOrange,
      FluentGlobalTokens.sharedGreen,
      FluentGlobalTokens.sharedCyan,
      FluentGlobalTokens.sharedBlue,
      FluentGlobalTokens.sharedPurple,
      FluentGlobalTokens.sharedPink,
    ];
    return colors[hash % colors.length];
  }

  /// 状态 Indicator 颜色计算
  Color _getPresenceColor() {
    switch (presence) {
      case FluentPresence.available:
        return const Color(0xFF107C41);
      case FluentPresence.away:
        return const Color(0xFFFFB900);
      case FluentPresence.busy:
      case FluentPresence.dnd:
        return const Color(0xD9D83B01);
      case FluentPresence.offline:
        return Colors.grey;
      case FluentPresence.none:
        return Colors.transparent;
    }
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isSquare = style == FluentAvatarStyle.square;
    final borderRadius = isSquare
        ? BorderRadius.circular(size.displaySize * 0.25)
        : BorderRadius.circular(FluentGlobalTokens.cornerRadiusCircular);

    final bg = _getAvatarBackgroundColor(name);
    final initials = _getInitials(name);

    Widget avatarContent;
    if (image != null) {
      avatarContent = Image(
        image: image!,
        fit: BoxFit.cover,
        width: size.displaySize,
        height: size.displaySize,
      );
    } else {
      avatarContent = Container(
        color: bg,
        alignment: Alignment.center,
        child: Text(
          initials,
          style: TextStyle(
            color: Colors.white,
            fontSize: size.fontSize,
            fontWeight: FontWeight.bold,
          ),
        ),
      );
    }

    Widget mainAvatar = Container(
      width: size.displaySize,
      height: size.displaySize,
      decoration: BoxDecoration(
        borderRadius: borderRadius,
        border: hasRing
            ? Border.all(color: theme.primaryColor, width: 2.0)
            : null,
      ),
      child: ClipRRect(borderRadius: borderRadius, child: avatarContent),
    );

    if (onTap != null) {
      mainAvatar = FluentInkWell(
        onTap: onTap,
        borderRadius: borderRadius,
        child: mainAvatar,
      );
    }

    if (presence == FluentPresence.none) {
      return mainAvatar;
    }

    // 叠加 Presence Indicator 状态圆点
    return Stack(
      clipBehavior: Clip.none,
      children: [
        mainAvatar,
        Positioned(
          right: -1,
          bottom: -1,
          child: Container(
            width: size.presenceSize,
            height: size.presenceSize,
            decoration: BoxDecoration(
              color: _getPresenceColor(),
              shape: BoxShape.circle,
              border: Border.all(color: theme.backgroundColor, width: 1.5),
            ),
          ),
        ),
      ],
    );
  }
}
