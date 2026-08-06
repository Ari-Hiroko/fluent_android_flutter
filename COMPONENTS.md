# Microsoft Fluent UI 2 (Android Style) 组件库全量 API 说明文档

本文档收录了 `fluent2_android` (Android/iOS Fluent 2 视觉流) 提供的全部 35+ 款原生 Flutter 控件与全局便捷函数的详细说明、完整 API 属性列表以及调用示例。

---

## 目录

1. [主题与 Tokens (Theme & Tokens)](#1-主题与-tokens-theme--tokens)
2. [按钮与药丸标签 (Buttons & Chips)](#2-按钮与药丸标签-buttons--chips)
3. [选框与开关 (Toggle & Switches)](#3-选框与开关-toggle--switches)
4. [弹出菜单 (PopupMenu & Popover)](#4-弹出菜单-popupmenu--popover)
5. [模态对话框 (Dialogs)](#5-模态对话框-dialogs)
6. [导航与栏 (Navigation & Bars)](#6-导航与栏-navigation--bars)
7. [文本与搜索输入 (Inputs & SearchBar)](#7-文本与搜索输入-inputs--searchbar)
8. [抽屉与底部 Sheet (Sheet & Drawer)](#8-抽屉与底部-sheet-sheet--drawer)
9. [列表项与卡片 (ListItems & Cards)](#9-列表项与卡片-listitems--cards)
10. [消息通知与横幅 (Notification & Banner)](#10-消息通知与横幅-notification--banner)
11. [头像与人员选择 (Avatar & Persona)](#11-头像与人员选择-avatar--persona)
12. [进度指示器与骨架屏 (Progress & Shimmer)](#12-进度指示器与骨架屏-progress--shimmer)
13. [气泡提示与日历 (Tooltip & Calendar)](#13-气泡提示与日历-tooltip--calendar)
14. [图标与 Asset 资源 (Icons & Assets)](#14-图标与-asset-资源-icons--assets)

---

## 1. 主题与 Tokens (Theme & Tokens)

### 1.1 `FluentTheme` & `Fluent2ThemeData`

提供 Fluent UI 2 全局主题上下文接入。支持深/浅色模式与原生 Material 主题转换。

#### 代码示例
```dart
FluentTheme(
  data: Fluent2ThemeData.light(), // 或 Fluent2ThemeData.dark()
  child: MaterialApp(
    theme: FluentTheme.of(context).toMaterialTheme(),
    home: const Page(),
  ),
);
```

#### 核心属性
| 参数名 | 类型 | 默认值 | 描述 |
| :--- | :--- | :--- | :--- |
| `brightness` | `Brightness` | `light` | 决定明暗主题状态 |
| `primaryColor` | `Color` | `#0F6CBD` | 微软 Fluent 2 品牌主色 (Communication Blue) |
| `backgroundColor` | `Color` | `#FFFFFF` / `#1F1F1F` | 主页面背景颜色 |
| `dividerColor` | `Color` | `#E0E0E0` / `#333333` | 分割线与边框语义颜色 |

### 1.2 `FluentMotionDuration` & `FluentMotionCurve` (动效 Tokens)

提供符合 Fluent 2 运动规范的动画持续时间与贝塞尔缓动曲线。

- `FluentMotionDuration`: `ultraFast` (50ms), `faster` (100ms), `fast` (150ms), `normal` (200ms), `gentle` (300ms), `slow` (400ms)
- `FluentMotionCurve`: `standard`, `accelerate`, `decelerate`, `pointToPoint`

---

## 2. 按钮与药丸标签 (Buttons & Chips)

### 2.1 `FluentButton`

Fluent 2 官方标准按钮组件，涵盖实心、描边、无边框及警示四种款式。

#### 代码示例
```dart
FluentButton(
  text: '提交表单',
  icon: const Icon(Icons.send),
  style: FluentButtonStyle.primary,
  size: FluentButtonSize.medium,
  onPressed: () => print('Submitted'),
)
```

#### 参数说明
| 参数名 | 类型 | 默认值 | 描述 |
| :--- | :--- | :--- | :--- |
| `text` | `String` | **必填** | 按钮显示文本 |
| `icon` | `Widget?` | `null` | 前置 Icon 图标 |
| `onPressed` | `VoidCallback?` | `null` | 点击回调（为 `null` 时自动切换为禁用禁用态） |
| `style` | `FluentButtonStyle` | `primary` | `primary`, `secondary`, `borderless`, `danger` |
| `size` | `FluentButtonSize` | `medium` | `small` (32dp), `medium` (40dp), `large` (48dp) |
| `isFullWidth` | `bool` | `false` | 是否拉伸至父容器全宽 |

---

### 2.2 `FluentCompoundButton`

双行卡片式按钮，支持大字主标题与小字描述信息。

#### 代码示例
```dart
FluentCompoundButton(
  title: '云端同步数据',
  subTitle: '上一次同步于 10 分钟前',
  icon: const Icon(Icons.cloud_upload_outlined),
  onPressed: () => print('Syncing...'),
)
```

---

### 2.3 `FluentFloatingActionButton` (FAB)

悬浮操作按钮，支持标准圆形与 Extended 扩展文本形态。

#### 代码示例
```dart
FluentFloatingActionButton(
  icon: const Icon(Icons.add),
  text: '新建文档', // 非空时呈现 Extended 格式
  onPressed: () => print('Create'),
)
```

---

### 2.4 `FluentChip`

药丸形状（Pill / Chip）胶囊按钮，常用于筛选标签组。

#### 代码示例
```dart
FluentChip(
  label: '未读邮件',
  selected: true,
  onPressed: () => print('Filter'),
)
```

---

## 3. 选框与开关 (Toggle & Switches)

### 3.1 `FluentCheckBox`
支持标签文本点击协同的复选框组件。

```dart
FluentCheckBox(
  value: isChecked,
  label: '自动同步',
  onChanged: (val) => setState(() => isChecked = val!),
);
```

### 3.2 `FluentRadioButton<T>`
Fluent 2 规范圆环单选框。

```dart
FluentRadioButton<int>(
  value: 1,
  groupValue: selectedGroup,
  label: '选项 1',
  onChanged: (val) => setState(() => selectedGroup = val!),
);
```

### 3.3 `FluentToggleSwitch`
Fluent 2 标准平滑切换开关。

```dart
FluentToggleSwitch(
  value: isEnabled,
  label: '开启推送通知',
  onChanged: (val) => setState(() => isEnabled = val),
);
```

---

## 4. 弹出菜单 (PopupMenu & Popover)

### 4.1 `FluentPopupMenuButton<T>` & `showFluentPopupMenu<T>`

弹出下拉列表菜单，支持单选/多选 Checkmark 提示与越界边界自适应定位。

#### 代码示例
```dart
// 1. 符合 Material 习惯的按键组件
FluentPopupMenuButton<String>(
  onSelected: (val) => print(val),
  itemBuilder: (context) => [
    const FluentPopupMenuItem(
      value: 'edit',
      title: '编辑项目',
      icon: Icon(Icons.edit_outlined),
    ),
    const FluentPopupMenuItem(
      value: 'delete',
      title: '删除',
      dividerBelow: true,
    ),
  ],
);

// 2. 命令式全局弹窗函数
showFluentPopupMenu<String>(
  context: context,
  position: tapOffset,
  items: [...],
  onSelected: (val) => print(val),
);
```

---

## 5. 模态对话框 (Dialogs)

### 5.1 `FluentDialog` & `showFluentDialog`

符合 Fluent 2 iOS/Android 双平台规范的居中模态对话框。

#### 代码示例
```dart
showFluentDialog(
  context: context,
  title: '确认提交更改？',
  message: '提交后配置将即时生效。',
  actions: [
    TextButton(
      child: const Text('取消'),
      onPressed: () => Navigator.pop(context),
    ),
    ElevatedButton(
      child: const Text('确定'),
      onPressed: () {
        Navigator.pop(context);
        print('Confirmed');
      },
    ),
  ],
);
```

---

## 6. 导航与栏 (Navigation & Bars)

### 6.1 `FluentTopAppBar` & `FluentAppBarLayout`

微软官方 Tokenized 导航栏与 `AppBarLayout` 容器（完全对齐 Kotlin `AppBarLayout.kt` & `AppBarLayoutActivity.kt`），支持 Neutral/Brand 两种风格，整合 Avatar/BackIcon 导航图标、AccessoryView（如 SearchBar）以及 `ScrollBehavior` 手势折叠。

#### 代码示例
```dart
FluentAppBarLayout(
  title: '控制中心',
  subTitle: '包含 5 个项目',
  style: FluentStyle.brand,
  navigationIconType: FluentNavigationIconType.avatar,
  avatarName: 'Mauricio August',
  scrollBehavior: FluentScrollBehavior.collapseToolbar,
  accessoryView: FluentSearchBar(hintText: '搜索...'),
  actions: [
    IconButton(icon: const Icon(Icons.more_vert), onPressed: () {}),
  ],
);
```

#### 核心属性
| 参数名 | 类型 | 默认值 | 描述 |
| :--- | :--- | :--- | :--- |
| `title` / `subTitle` | `String` | **必填** / `null` | 主标题与副标题 |
| `navigationIconType` | `FluentNavigationIconType` | `backIcon` | `none`, `avatar`, `backIcon` 导航图标类型 |
| `scrollBehavior` | `FluentScrollBehavior` | `collapseToolbar` | `none`, `collapseToolbar`, `pin` 滚动展开隐退行为 |
| `accessoryView` | `Widget?` | `null` | 底部扩展槽位（如 SearchBar / PillBar） |
| `style` | `FluentStyle` | `neutral` | `neutral` (浅/深背景), `brand` (微软通信蓝) |

---

### 6.2 `FluentContextualCommandBar`

悬浮胶囊工具栏，用于多选批量操作或文本格式编辑工具栏。

#### 代码示例
```dart
FluentContextualCommandBar(
  items: [
    FluentCommandItem(id: 'bold', icon: const Icon(Icons.format_bold), label: '加粗', isSelected: true),
    FluentCommandItem(id: 'italic', icon: const Icon(Icons.format_italic), label: '斜体'),
  ],
);
```

---

### 6.3 `FluentTabBar` & `FluentPillBar`

顶/底选项卡及 Segmented 胶囊视图切换器。

```dart
// 1. TabBar
FluentTabBar(
  selectedIndex: currentTab,
  style: FluentStyle.brand, // neutral, brand (对标 TabBarTokens & TabItemTokens)
  showIndicator: true,
  showTopBorder: true,
  tabTextAlignment: FluentTabTextAlignment.vertical, // vertical, horizontal, noText
  onTabSelected: (idx) => setState(() => currentTab = idx),
  tabs: const [
    FluentTabItem(title: '消息', icon: Icon(Icons.chat), badge: FluentBadge()),
    FluentTabItem(title: '邮件', icon: Icon(Icons.email), badgeText: '123+'),
    FluentTabItem(title: '禁用项', icon: Icon(Icons.block), enabled: false),
  ],
);

// 2. PillBar (分段器)
FluentPillBar(
  selectedIndex: selectedPill,
  onSelected: (idx) => setState(() => selectedPill = idx),
  labels: const ['日', '周', '月', '年'],
);
```

---

## 7. 文本与搜索输入 (Inputs & SearchBar)

### 7.1 `FluentSearchBar`
带焦点状态过渡与一键清空功能的标准搜索框。

```dart
FluentSearchBar(
  hintText: '搜索文档...',
  onChanged: (text) => print(text),
  onSubmitted: (text) => print('Searching $text'),
);
```

### 7.2 `FluentTextField`
标准输入框，支持 Label、HelperText 与 ErrorText 错误提示高亮。

```dart
FluentTextField(
  label: '工作邮箱',
  hintText: 'name@company.com',
  errorText: isValid ? null : '请输入有效的邮箱地址',
  leadingIcon: const Icon(Icons.email_outlined),
  onChanged: (text) => validate(text),
);
```

---

## 8. 抽屉与底部 Sheet (Sheet & Drawer)

### 8.1 `showFluentBottomSheet`
底部可拖拽 Modal Sheet，带有 36x4dp 标准 Pill 抓手线。

```dart
showFluentBottomSheet(
  context: context,
  title: '快捷操作',
  child: Column(
    mainAxisSize: MainAxisSize.min,
    children: [
      FluentListItem(title: '复制链接', leading: const Icon(Icons.link)),
      FluentListItem(title: '删除', leading: const Icon(Icons.delete), showDivider: false),
    ],
  ),
);
```

### 8.2 `showFluentDrawer`
侧边抽屉（Left Navigation Drawer 或 Right SideSheet）。

```dart
showFluentDrawer(
  context: context,
  position: FluentDrawerPosition.left,
  child: const MyNavigationContent(),
);
```

---

## 9. 列表项与卡片 (ListItems & Cards)

### 9.1 `FluentListItem`
高度自动推导（单行 48dp、双行 64dp、三行 88dp）的列表项。

```dart
FluentListItem(
  title: '双行列表项',
  subTitle: '包含辅助描述信息',
  leading: const Icon(Icons.mail_outline),
  trailing: const Icon(Icons.chevron_right),
  onTap: () => print('Tapped'),
);
```

---

## 10. 消息通知与横幅 (Notification & Banner)

### 10.1 `showFluentSnackbar`
兼容原生的全局模态 Toast 通知消息框。

```dart
showFluentSnackbar(
  context: context,
  title: '上传完成',
  message: '文件已存入个人网盘',
  style: FluentSnackbarStyle.brand,
  actionText: '查看',
  onActionTap: () => openFile(),
);
```

---

## 11. 头像与人员选择 (Avatar & Persona)

### 11.1 `FluentAvatar` & `FluentAvatarGroup`
用户头像组件，支持根据姓名 Hash 衍生色彩、Presence 在线状态圆点与重叠堆叠（`AvatarGroup`）。

```dart
// 单个头像
FluentAvatar(
  name: 'Satya Nadella',
  size: FluentAvatarSize.size40,
  presence: FluentPresence.available,
  hasRing: true,
);

// 重叠头像组
FluentAvatarGroup(
  avatars: [
    FluentAvatar(name: 'User A'),
    FluentAvatar(name: 'User B'),
    FluentAvatar(name: 'User C'),
  ],
  maxVisible: 2, // 剩余显示 +1
);
```

---

## 12. 进度指示器与骨架屏 (Progress & Shimmer)

### 12.1 `FluentShimmer`
1500ms 自然平滑微光扫过（`-1.2x` 至 `+1.2x` 越界滑动）的骨架屏加载动画。

```dart
FluentShimmer(
  width: 200.0,
  height: 16.0,
  borderRadius: 4.0,
);
```

---

## 13. 气泡提示与日历 (Tooltip & Calendar)

### 13.1 `FluentCalendarView`
年月导航切换与日期 Grid 选择器。

```dart
FluentCalendarView(
  selectedDate: DateTime.now(),
  onDateSelected: (date) => print('Selected date: $date'),
);
```

---

## 14. 微软 V2 官方独占组件 (Fluent 2 V2 Controls)

### 14.1 `FluentBadge` (通知提醒徽章)
```dart
FluentBadge(
  text: '99+',
  style: FluentBadgeStyle.danger,
  child: const Icon(Icons.notifications),
);
```

### 14.2 `FluentCard` & `FluentFileCard` (容器与文件预览卡片)
```dart
FluentCard(
  child: const Text('Card Content'),
);

FluentFileCard(
  fileName: 'Document.pdf',
  subTitle: '2.4 MB · PDF',
);
```

### 14.3 `FluentCardNudge` (卡片通知提醒)
```dart
FluentCardNudge(
  title: '更新通知',
  message: '发现最新规范控件组件可供更新。',
  accentText: 'NEW',
  actionText: '立即更新',
  onActionTap: () => print('Update'),
);
```

### 14.4 `FluentAcrylic` (亚克力磨砂玻璃)
```dart
FluentAcrylic(
  blur: 12.0,
  child: const Text('Acrylic Frosted Glass'),
);
```

### 14.5 `FluentAvatarCarousel` (人员轮播选择器)
```dart
FluentAvatarCarousel(
  items: [
    FluentAvatarCarouselItem(name: 'Satya', presence: FluentPresence.available),
    FluentAvatarCarouselItem(name: 'Amy', presence: FluentPresence.busy),
  ],
  onSelected: (idx) => print(idx),
);
```

---

## 15. 图标与 Asset 资源 (Icons & Assets)

### 15.1 `FluentIcons`
封装了 Fluent 2 视觉流的公共 Icon 字典与 Presence 状态指示图标。

```dart
Icon(FluentIcons.search);
Icon(FluentIcons.presenceAvailable);
```
