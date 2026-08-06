# Fluent 2 Android -> Flutter 移植对照表与 TODO Roadmap

本文档记录了从 Android Fluent UI (`fluentui-android-0.3.14`) 源码移植到 Flutter 组件库 (`fluent2_android`) 的文件映射关系、 Token 规范对应表以及后续全套组件的移植 TODO 路线图。

---

## 1. 已完成模块对照表 (Completed Modules)

| Android/Kotlin 原始源码 (packed_sources) | Flutter 实现文件 (lib/) | 状态 | 说明 |
| :--- | :--- | :---: | :--- |
| `popupmenu/PopupMenuItem.kt` | `lib/src/components/popup_menu/popup_menu_item.dart` | ✅ 完成 | 包含 `FluentPopupMenuItem<T>` 泛型数据模型与 `FluentItemCheckableBehavior` 枚举 |
| `popupmenu/PopupMenuItemView.kt` | `lib/src/components/popup_menu/popup_menu_item_view.dart` | ✅ 完成 | 单项 View 渲染（42dp 高度、Icon、标题、Radio/Checkbox 尾部与分割线） |
| `popupmenu/PopupMenu.kt`, `PopupMenuAdapter.kt` | `lib/src/components/popup_menu/fluent_popup_menu.dart` | ✅ 完成 | 弹出菜单核心 Widget 与 `showFluentPopupMenu<T>()` 函数 |
| `popupmenu/PopupMenuButton` (习惯包装) | `lib/src/components/popup_menu/fluent_popup_menu_button.dart` | ✅ 完成 | 符合 Flutter `PopupMenuButton` 习惯的按钮组件 |
| `tokenized/menu/Menu.kt` | `lib/src/components/menu/fluent_menu.dart` | ✅ 完成 | Compose 风格动画 Tokenized Menu 气泡容器 (120ms/75ms 动画) |
| `tokenized/menu/Dialog.kt` | `lib/src/components/dialog/fluent_dialog.dart` | ✅ 完成 | Tokenized 模态对话框 `FluentDialog` 与 `showFluentDialog()` |
| `fluentui_core.md` (Theme & Tokens) | `lib/src/theme/` | ✅ 完成 | 移植 `FluentGlobalTokens`, `FluentAliasTokens` 与 `ControlTokens` 系统 |
| `tokenized/AppBar.kt` & `AppBarLayout.kt` | `lib/src/components/navigation/fluent_top_app_bar.dart` | ✅ 完成 | 移植 Tokenized `FluentTopAppBar`（支持 Large/Medium/Small 尺寸，Neutral/Brand 风格） |
| `tokenized/SearchBar.kt` & `Searchbar.kt` | `lib/src/components/inputs/fluent_search_bar.dart` | ✅ 完成 | 移植 Tokenized `FluentSearchBar`（支持搜索、一键清除、语音/自定义尾部 Icon） |
| `tokenized/controls/Button.kt`, `Checkbox.kt`, etc. | `lib/src/components/buttons/`, `toggle/` | ✅ 完成 | 移植 `FluentButton`, `FluentCompoundButton`, `FluentFloatingActionButton`, `FluentChip`, `FluentCheckBox`, `FluentRadioButton`, `FluentToggleSwitch` |
| `contextualcommandbar/ContextualCommandBar.kt` | `lib/src/components/navigation/fluent_contextual_command_bar.dart` | ✅ 完成 | 移植 `FluentContextualCommandBar` 悬浮胶囊工具栏与 `FluentCommandItem` |
| `tokenized/listitem/ListItem.kt` & `ListSubHeaderView.kt` | `lib/src/components/card/fluent_list_item.dart` | ✅ 完成 | 移植 `FluentListItem` (单行/双行/三行), `FluentListSubHeader`, `FluentDivider` |
| `bottomsheet/BottomSheet.kt` & `drawer/Drawer.kt` | `lib/src/components/sheet/fluent_bottom_sheet.dart` | ✅ 完成 | 移植 `FluentBottomSheet`, `showFluentBottomSheet()`, `FluentDrawer`, `showFluentDrawer()` |
| `res/values/attrs.xml`, `themes.xml` | `lib/src/theme/fluent_colors.dart` & `fluent_theme_data.dart` | ✅ 完成 | 提取 Brand Primary (`#0F6CBD`)、Semantic Colors、PopupMenu/AppBar 专用颜色 Token |

---

## 2. 全套 Fluent 2 组件目录映射架构 (Directory Structure Map)

| 组件分类 | 对应的 packed_source | Flutter 预留目录 (`lib/src/components/`) | 当前状态 |
| :--- | :--- | :--- | :---: |
| **Theme & Tokens** | `fluentui_core.md` | `lib/src/theme/` | ✅ 完成 |
| **PopupMenu & Menu** | `fluentui_menus.md` | `lib/src/components/popup_menu/`, `menu/` | ✅ 完成 |
| **Dialog** | `fluentui_menus.md` / `fluentui_core.md` | `lib/src/components/dialog/` | ✅ 完成 |
| **Navigation & TopBar** | `fluentui_topappbars.md` / `fluentui_ccb.md` | `lib/src/components/navigation/` | ✅ 完成 |
| **Buttons & Controls** | `fluentui_controls.md` / `fluentui_ccb.md` | `lib/src/components/buttons/`, `toggle/` | ✅ 完成 |
| **List & Card** | `fluentui_listitem.md` / `fluentui_core.md` | `lib/src/components/card/` | ✅ 完成 |
| **Toggle / Check / Radio** | `fluentui_controls.md` / `fluentui_core.md` | `lib/src/components/toggle/` | ✅ 完成 |
| **Sheet & Drawer** | `fluentui_drawer.md` | `lib/src/components/sheet/` | ✅ 完成 |
| **Inputs & SearchBar** | `fluentui_topappbars.md` / `fluentui_controls.md` | `lib/src/components/inputs/` | 🚧 进行中 (SearchBar已完成) |
| **Avatar & Persona** | `fluentui_persona.md` / `fluentui_peoplepicker.md` | `lib/src/components/avatar/` | ⏳ 待移植 |
| **Snackbar & Notification** | `fluentui_notification.md` / `fluentui_transients.md` | `lib/src/components/snackbar/` | ⏳ 待移植 |

---

## 3. 全套组件移植 Roadmap & TODO 清单

### Phase 1: Core Theme & Token System (`fluentui_core.md`) — [✅ 已完成]
### Phase 2: Navigation & TopBar (`fluentui_topappbars.md`, `fluentui_ccb.md`) — [✅ 已完成]
### Phase 3: Core Controls & Buttons (`fluentui_controls.md`) — [✅ 已完成]
### Phase 4: List & Card (`fluentui_listitem.md`) — [✅ 已完成]
### Phase 5: Sheet & Drawer (`fluentui_drawer.md`) — [✅ 已完成]
- [x] `FluentBottomSheet` & `showFluentBottomSheet()` (带 36x4dp Pill 抓手、圆角与渐变 Mask)
- [x] `FluentDrawer` & `showFluentDrawer()` (支持 Left/Right 侧边滑出抽屉与遮罩关闭)

### Phase 6: Avatar & Persona (`fluentui_persona.md`, `fluentui_peoplepicker.md`) — [下一个任务]
- [ ] `FluentAvatar` (Image, Initials, Status Badge)
- [ ] `FluentAvatarGroup`
- [ ] `FluentPersonaChip`

### Phase 7: Transients & Notification (`fluentui_notification.md`)
- [ ] `FluentSnackbar` / `FluentBanner`
