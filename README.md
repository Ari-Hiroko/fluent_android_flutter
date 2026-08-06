# Fluent 2 Android UI System for Flutter

[![Flutter](https://img.shields.io/badge/Flutter-%2302569B.svg?style=for-the-badge&logo=Flutter&logoColor=white)](https://flutter.dev)
[![GitHub](https://img.shields.io/badge/GitHub-Repository-181717?style=for-the-badge&logo=github)](https://github.com/Ari-Hiroko/fluent_android_flutter)
[![License](https://img.shields.io/badge/License-MIT-blue.svg?style=for-the-badge)](LICENSE)

**`fluent_android_flutter`** 是微软官方 [Fluent 2 Design System (Android Version)](https://fluent2.microsoft.design/) 在 Flutter 跨平台框架上的完整重构与移植组件库。本库严格对标 `fluentui-android` 规范，提供符合微软现代设计精髓的跨平台移动端 UI 体验。

---

## ✨ 核心特性

- **🎨 100% Fluent 2 视觉与 Tokens 规范**：完全收录微软全局 Token 体系，包含 `FluentColors`, `FluentTypography`, `FluentMotionTokens`, `ControlTokens` 等。
- **📱 35+ 款高质感开箱即用原生控件**：涵盖导航栏 `FluentAppBarLayout`、选项卡 `FluentTabBar`/`FluentPillBar`、大屏侧边栏 `FluentSideRail`、卡片列表 `FluentListItem`/`FluentCard`、悬浮提示框 `FluentCardNudge` 等全套控件。
- **🌗 深/浅色模式完美适配**：内建 `FluentThemeData.light()` 与 `FluentThemeData.dark()`，支持一键平滑切换，并能无缝转换为 Material `ThemeData`。
- **🖱️ 全局桌面/Web 鼠标手势支持**：原生组件全线支持 `enableCursor` 参数与 `SystemMouseCursors.click` 手形响应。
- **🚀 高性能与无障碍**：完全使用 Flutter 原生 Widget 绘制，防暴溢出设计与流畅贝塞尔动画。

---

## 📦 安装与接入

在 Flutter 项目的 `pubspec.yaml` 中添加 Git 依赖：

```yaml
dependencies:
  fluent2_android:
    git:
      url: https://github.com/Ari-Hiroko/fluent_android_flutter.git
      ref: main
```

运行获取依赖包：

```bash
flutter pub get
```

---

## 🚀 快速上手

在入口 `main.dart` 中使用 `FluentTheme` 裹住应用：

```dart
import 'package:flutter/material.dart';
import 'package:fluent2_android/fluent2_android.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return FluentTheme(
      data: Fluent2ThemeData.light(),
      child: Builder(
        builder: (context) {
          final theme = FluentTheme.of(context);
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: theme.toMaterialTheme(),
            home: Scaffold(
              appBar: const FluentAppBarLayout(
                title: 'Microsoft Fluent 2',
                subTitle: '标准组件手册',
                style: FluentStyle.brand,
                navigationIconType: FluentNavigationIconType.avatar,
                avatarName: 'Mauricio August',
              ),
              body: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    FluentButton(
                      text: 'Primary 按钮',
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

## 🧩 涵盖组件一览 (35+ Components)

| 分类 | 包含组件 | 核心亮点 |
| :--- | :--- | :--- |
| **导航与栏** | `FluentAppBarLayout`, `FluentTopAppBar`, `FluentTabBar`, `FluentPillBar`, `FluentSideRail`, `FluentContextualCommandBar` | 支持 Brand/Neutral 风格、Avatar/BackIcon 指示、Accessory 扩展栏与 ScrollBehavior 折叠 |
| **按钮与标签** | `FluentButton`, `FluentCompoundButton`, `FluentFAB`, `FluentChip`, `FluentBasicChip`, `FluentCitation`, `FluentTextButton` | 涵盖 Primary, Secondary, Borderless, Danger 款式与缩放动画 |
| **选框与开关** | `FluentCheckBox`, `FluentRadioButton`, `FluentToggleSwitch` | 统一手势热区、文字吸边排布与悬停光标 |
| **列表与卡片** | `FluentListItem`, `FluentListSubHeader`, `FluentCard`, `FluentBadge`, `FluentDivider` | 单行/多行、左右 Accessory、Elevated/Outlined 卡片 |
| **模态与通知** | `FluentBottomSheet`, `FluentDrawer`, `FluentDialog`, `FluentSnackbar`, `FluentBanner`, `FluentCardNudge` | 弹窗、推拉抽屉与卡片式气泡通知 |
| **人员与头像** | `FluentAvatar`, `FluentAvatarGroup`, `FluentPersona`, `FluentPeoplePicker`, `FluentAvatarCarousel` | 在线状态 Presence 标记、Ring 环与群组堆叠 |
| **过渡与加载** | `FluentShimmer`, `FluentTooltip`, `FluentAcrylic`, `FluentProgressIndicator` | 骨架屏刷光、毛玻璃亚克力效果与环形/线性进度 |
| **日历与图标** | `FluentCalendar`, `FluentIcons` | 微软官方日历选择器与 图标 Asset 封装 |

详细组件 API 属性表与代码范例，请参阅：👉 [**COMPONENTS.md**](COMPONENTS.md)

---

## 📖 官方文档与资源

- [COMPONENTS.md](COMPONENTS.md) — 完整组件 API 参数说明手册
- [Microsoft Fluent 2 官方规范](https://fluent2.microsoft.design/)

---

## 📄 开源协议

本项目基于 [MIT License](LICENSE) 开源发布。
