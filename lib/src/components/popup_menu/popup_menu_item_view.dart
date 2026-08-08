import 'package:flutter/material.dart';
import '../../theme/fluent_theme.dart';
import 'popup_menu_item.dart';

/// Fluent 2 菜单项的具体渲染 Widget [FluentPopupMenuItemView]
///
/// 严格匹配 Android Kotlin PopupMenuItemView.kt 与 dimens.xml/themes.xml 属性
class FluentPopupMenuItemView<T> extends StatelessWidget {
  final FluentPopupMenuItem<T> item;
  final FluentItemCheckableBehavior checkableBehavior;
  final VoidCallback? onItemClicked;
  final bool enableCursor;

  const FluentPopupMenuItemView({
    super.key,
    required this.item,
    this.checkableBehavior = FluentItemCheckableBehavior.none,
    this.onItemClicked,
    this.enableCursor = true,
  });

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);
    final isEnabled = item.enabled;
    final isChecked = item.isChecked;

    // 前景文本颜色 (正常 vs 选中状态)
    final Color textColor = !isEnabled
        ? theme.popupMenuItemTitleColor.withAlpha(96)
        : (isChecked
              ? theme.popupMenuItemForegroundSelectedColor
              : theme.popupMenuItemTitleColor);

    // 图标 Tint 颜色
    final Color iconColor = !isEnabled
        ? theme.popupMenuItemIconTint.withAlpha(96)
        : (isChecked
              ? theme.popupMenuItemForegroundSelectedColor
              : theme.popupMenuItemIconTint);

    // 复选框 / 单选框 Tint 颜色
    final Color tintColor = !isEnabled
        ? theme.popupMenuItemCheckboxTint.withAlpha(96)
        : (isChecked
              ? theme.popupMenuItemForegroundSelectedColor
              : theme.popupMenuItemCheckboxTint);

    // 确定尾部渲染单选框/复选框/无
    Widget? checkIndicator;
    if (checkableBehavior == FluentItemCheckableBehavior.single) {
      checkIndicator = Container(
        width: 20.0,
        height: 20.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          border: Border.all(
            color: isChecked
                ? theme.popupMenuItemForegroundSelectedColor
                : tintColor,
            width: 2.0,
          ),
        ),
        padding: const EdgeInsets.all(3.0),
        child: isChecked
            ? Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: theme.popupMenuItemForegroundSelectedColor,
                ),
              )
            : null,
      );
    } else if (checkableBehavior == FluentItemCheckableBehavior.all) {
      checkIndicator = Checkbox(
        value: isChecked,
        onChanged: isEnabled ? (_) => onItemClicked?.call() : null,
        activeColor: theme.popupMenuItemForegroundSelectedColor,
        checkColor: Colors.white,
        side: BorderSide(color: tintColor, width: 1.5),
        materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      );
    }

    // 无障碍 Label
    final String accessibilityLabel =
        item.roleDescription ?? '${item.title}, ${isChecked ? '已选中' : '未选中'}';

    return Semantics(
      label: accessibilityLabel,
      enabled: isEnabled,
      selected: isChecked,
      button: true,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          FluentMaterial(
            color: Colors.transparent,
            child: FluentInkWell(
              mouseCursor: enableCursor
                  ? SystemMouseCursors.click
                  : SystemMouseCursors.basic,
              onTap: isEnabled ? onItemClicked : null,
              hoverColor: theme.popupMenuBackgroundPressedColor,
              splashColor: theme.popupMenuBackgroundPressedColor,
              child: Container(
                constraints: const BoxConstraints(
                  minHeight: 42.0,
                ), // dimens.xml: 42dp
                padding: const EdgeInsets.symmetric(
                  horizontal: 12.0,
                  vertical: 8.0,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    // 首部图标 (Icon, dimens.xml: 24dp)
                    if (item.icon != null) ...[
                      IconTheme(
                        data: IconThemeData(color: iconColor, size: 24.0),
                        child: item.icon!,
                      ),
                      const SizedBox(width: 12.0),
                    ],

                    // 标题文本 (Title)
                    Expanded(
                      child: Text(
                        item.title,
                        style: TextStyle(
                          fontSize: 14.0,
                          fontWeight: isChecked
                              ? FontWeight.w600
                              : FontWeight.normal,
                          color: textColor,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),

                    // 尾部选择框 (Radio / Checkbox)
                    if (checkIndicator != null) ...[
                      const SizedBox(width: 8.0),
                      IgnorePointer(child: checkIndicator),
                    ],
                  ],
                ),
              ),
            ),
          ),

          // 底部分割线 (showDividerBelow)
          if (item.showDividerBelow)
            Divider(height: 1.0, thickness: 1.0, color: theme.dividerColor),
        ],
      ),
    );
  }
}
