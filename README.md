# Fluent 2 Android UI System for Flutter

`fluent_android_flutter` 是基于 Microsoft [Fluent 2 Design System](https://fluent2.microsoft.design/) Android 规范实现的 Flutter UI 组件库。本项目依照 `fluentui-android` 的 Tokens 架构与组件规范开发，提供移动端及跨平台界面的 Fluent 2 设计支持。

---

## 主要特性

- **Tokens 体系**：实现微软全局 Design Tokens，包含 `FluentColors`、`FluentTypography`、`FluentMotionTokens` 及 `ControlTokens`。
- **组件覆盖**：提供 35+ 个通用控件，涵盖 TopAppBar / AppBarLayout 导航栏、TabBar / PillBar 选项卡、SideRail 侧边栏、ListItem / Card 列表卡片、Dialog / BottomSheet 模态窗口及 Avatar 人员状态等。
- **主题适配**：内建 `FluentThemeData.light()` 与 `FluentThemeData.dark()` 明暗主题，支持与 FluentMaterial `ThemeData` 的转换集成。
- **交互规范**：支持鼠标悬停指针手势控制（`enableCursor`）与贝塞尔缓动动画曲线。

---

## 安装

在项目的 `pubspec.yaml` 中添加以下依赖配置：

```yaml
dependencies:
  fluent_2_flutter:
    git:
      url: https://github.com/Ari-Hiroko/fluent_android_flutter.git
      ref: main
```

运行依赖获取命令：

```bash
flutter pub get
```

---

## 示例代码

```dart
import 'package:flutter/material.dart';
import 'package:fluent_2_flutter/fluent_2_flutter.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentTheme(
      data: FluentThemeData.light(),
      child: Builder(
        builder: (context) {
          final theme = FluentTheme.of(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme.toMaterialTheme(),
            home: Scaffold(
              appBar: const FluentAppBarLayout(
                title: 'Fluent 2 Mobile',
                subtitle: 'Component Library',
                style: FluentStyle.brand,
                navigationIconType: FluentNavigationIconType.avatar,
                avatarName: 'User Name',
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FluentButton(
                      text: 'Primary Button',
                      icon: const Icon(Icons.add),
                      onPressed: () {},
                    ),
                    const SizedBox(height: 12.0),
                    const FluentBadge(
                      text: '99+',
                      style: FluentBadgeStyle.danger,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
```

---

## 组件分类概览

| 分类 | 包含组件 | 说明 |
| :--- | :--- | :--- |
| **导航栏目** | `FluentAppBarLayout`, `FluentTopAppBar`, `FluentTabBar`, `FluentPillBar`, `FluentSideRail`, `FluentContextualCommandBar` | 支持 Brand / Neutral 风格、Avatar / BackIcon 指示及折叠滚动手势 |
| **按钮与标签** | `FluentButton`, `FluentCompoundButton`, `FluentFAB`, `FluentChip`, `FluentBasicChip`, `FluentCitation`, `FluentTextButton` | 包含 Primary, Secondary, Borderless, Danger 样式形态 |
| **选框与开关** | `FluentCheckBox`, `FluentRadioButton`, `FluentToggleSwitch` | 包含状态回调、热区文本及悬停光标支持 |
| **列表与卡片** | `FluentListItem`, `FluentListSubHeader`, `FluentContainer`, `FluentBadge`, `FluentDivider` | 包含 Elevated 与 Outlined 卡片及层次列表 |
| **模态与通知** | `FluentBottomSheet`, `FluentDrawer`, `FluentDialog`, `FluentSnackbar`, `FluentBanner`, `FluentContainerNudge` | 提供底部抽屉、对话框与卡片通知系统 |
| **人员与头像** | `FluentAvatar`, `FluentAvatarGroup`, `FluentPersona`, `FluentPeoplePicker`, `FluentAvatarCarousel` | 支持 Presence 在线状态指示与头像堆叠展示 |
| **过渡与加载** | `FluentShimmer`, `FluentTooltip`, `FluentAcrylic`, `FluentProgressIndicator` | 包含骨架屏、Tooltip 气泡与亚克力效果 |
| **日历与图标** | `FluentCalendar`, `FluentIcons` | 提供日历视图及 Fluent 图标包装 |

详细 API 规范与属性参考说明请参阅 [COMPONENTS.md](COMPONENTS.md)。

---

## 许可证

本项目依据 [MIT License](LICENSE) 许可协议开源。
