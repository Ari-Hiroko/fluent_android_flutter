import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import 'fluent_container.dart';
import 'fluent_list_item.dart';

/// Fluent 2 列表组容器组件 [FluentList]
///
/// 自动管理组内 [FluentListItem] 的背景透传、分割线显示与整体圆角剪裁。
class FluentList extends StatelessWidget {
  /// 列表子项组件集合 (包含 [FluentListItem], [FluentListSectionHeader] 等)
  final List<Widget> children;

  /// 组不透明度 (可选)
  final double? opacity;

  /// 组自定义背景色 (可选，默认为 transparent 或继承 theme)
  final Color? backgroundColor;

  /// 组整体圆角半径 (默认 null)
  final BorderRadiusGeometry? borderRadius;

  /// 组外边距/内边距
  final EdgeInsetsGeometry? padding;

  /// 是否自动在非末位 List Item 间显示分割线 (默认 true)
  final bool autoDivider;

  const FluentList({
    super.key,
    required this.children,
    this.opacity,
    this.backgroundColor,
    this.borderRadius,
    this.padding,
    this.autoDivider = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final cardScope = FluentContainerScope.of(context);

    final double? effOpacity = opacity ?? cardScope?.opacity;
    final Color defaultBg = cardScope != null
        ? Colors.transparent
        : theme.backgroundColor;
    final Color effectiveBg = backgroundColor ?? defaultBg;
    final BorderRadiusGeometry effRadius = borderRadius ?? BorderRadius.zero;

    final List<Widget> processedChildren = [];
    final int count = children.length;

    for (int i = 0; i < count; i++) {
      final child = children[i];
      final bool isLast = i == count - 1;

      if (autoDivider && child is FluentListItem) {
        // 如果是最后一个 Item 且处于 AutoDivider 模式下，自动关掉它的底部 Divider
        processedChildren.add(
          FluentListItem(
            title: child.title,
            subTitle: child.subTitle,
            tertiaryTitle: child.tertiaryTitle,
            leading: child.leading,
            leadingAccessoryContent: child.leadingAccessoryContent,
            trailing: child.trailing,
            trailingAccessoryContent: child.trailingAccessoryContent,
            showDivider: !isLast,
            dividerInset: child.dividerInset,
            onTap: child.onTap,
            onClick: child.onClick,
            onLongPress: child.onLongPress,
            enabled: child.enabled,
            enableCursor: child.enableCursor,
            enableAnimation: child.enableAnimation,
            animationDuration: child.animationDuration,
            animationCurve: child.animationCurve,
            opacity: child.opacity,
            transparentBackground: child.transparentBackground ?? true,
            backgroundColor: child.backgroundColor,
            borderRadius: child.borderRadius,
          ),
        );
      } else {
        processedChildren.add(child);
      }
    }

    Widget listContainer = Container(
      padding: padding,
      decoration: BoxDecoration(color: effectiveBg, borderRadius: effRadius),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: processedChildren,
      ),
    );

    if (effRadius != BorderRadius.zero) {
      listContainer = ClipRRect(borderRadius: effRadius, child: listContainer);
    }

    if (effOpacity != null && effOpacity < 1.0) {
      listContainer = Opacity(opacity: effOpacity, child: listContainer);
    }

    return listContainer;
  }
}
