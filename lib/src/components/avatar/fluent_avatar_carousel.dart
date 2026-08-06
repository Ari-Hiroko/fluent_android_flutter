import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import 'fluent_avatar.dart';

/// 人员 Carousel 选单数据项 [FluentAvatarCarouselItem]
class FluentAvatarCarouselItem {
  final String name;
  final String? image;
  final FluentPresence presence;
  final bool hasRing;
  final VoidCallback? onTap;

  const FluentAvatarCarouselItem({
    required this.name,
    this.image,
    this.presence = FluentPresence.none,
    this.hasRing = false,
    this.onTap,
  });
}

/// Fluent 2 官方人员轮播选择器组件 [FluentAvatarCarousel]
///
/// 移植自 Android Kotlin V2AvatarCarouselActivity.kt 与 AvatarCarousel.kt
class FluentAvatarCarousel extends StatefulWidget {
  /// 轮播成员列表
  final List<FluentAvatarCarouselItem> items;

  /// 当前选中的索引
  final int selectedIndex;

  /// 切换选中回调
  final ValueChanged<int>? onSelected;

  /// 头像尺寸规格
  final FluentAvatarSize avatarSize;

  const FluentAvatarCarousel({
    super.key,
    required this.items,
    this.selectedIndex = 0,
    this.onSelected,
    this.avatarSize = FluentAvatarSize.size40,
  });

  @override
  State<FluentAvatarCarousel> createState() => _FluentAvatarCarouselState();
}

class _FluentAvatarCarouselState extends State<FluentAvatarCarousel> {
  late int _currentIndex;

  @override
  void initState() {
    super.initState();
    _currentIndex = widget.selectedIndex;
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return SizedBox(
      height: widget.avatarSize.displaySize + 32.0,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.items.length,
        itemBuilder: (context, index) {
          final item = widget.items[index];
          final isSelected = index == _currentIndex;

          return GestureDetector(
            onTap: () {
              setState(() {
                _currentIndex = index;
              });
              item.onTap?.call();
              widget.onSelected?.call(index);
            },
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              margin: const EdgeInsets.symmetric(horizontal: 8.0),
              padding: const EdgeInsets.all(4.0),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  FluentAvatar(
                    name: item.name,
                    size: widget.avatarSize,
                    presence: item.presence,
                    hasRing: isSelected || item.hasRing,
                  ),
                  const SizedBox(height: 4.0),
                  Text(
                    item.name,
                    style: TextStyle(
                      fontSize: 12.0,
                      fontWeight: isSelected
                          ? FontWeight.bold
                          : FontWeight.normal,
                      color: isSelected
                          ? theme.primaryColor
                          : theme.foregroundColor,
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
