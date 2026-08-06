# Fluent UI Android 源码打包索引

此目录包含了从 `fluentui-android-0.3.14` 中提取的关键源码与资源文件，旨在方便将其移植至 Flutter。

## 模块打包列表

| 模块名称 | 源码打包文档 (Markdown) | 打包后大小 | 提取的图片资源数 | 备注 |
| --- | --- | --- | --- | --- |
| FluentUI | [FluentUI.md](./FluentUI.md) | 18.5 KB | 无 | |
| FluentUI.Demo | [FluentUI.Demo.md](./FluentUI.Demo.md) | 942.2 KB | [104 个图片](./images/FluentUI.Demo/) | |
| fluentui_calendar | [fluentui_calendar.md](./fluentui_calendar.md) | 217.1 KB | [4 个图片](./images/fluentui_calendar/) | |
| fluentui_ccb | [fluentui_ccb.md](./fluentui_ccb.md) | 54.5 KB | [10 个图片](./images/fluentui_ccb/) | |
| fluentui_controls | [fluentui_controls.md](./fluentui_controls.md) | 77.0 KB | 无 | |
| fluentui_core | [fluentui_core.md](./fluentui_core.md) | 541.2 KB | [10 个图片](./images/fluentui_core/) | |
| fluentui_drawer | [fluentui_drawer.md](./fluentui_drawer.md) | 262.3 KB | [3 个图片](./images/fluentui_drawer/) | |
| fluentui_icons | [fluentui_icons.md](./fluentui_icons.md) | 390.0 KB | 无 | |
| fluentui_listitem | [fluentui_listitem.md](./fluentui_listitem.md) | 116.0 KB | [1 个图片](./images/fluentui_listitem/) | |
| fluentui_menus | [fluentui_menus.md](./fluentui_menus.md) | 37.6 KB | [3 个图片](./images/fluentui_menus/) | |
| fluentui_notification | [fluentui_notification.md](./fluentui_notification.md) | 104.6 KB | 无 | |
| fluentui_others | [fluentui_others.md](./fluentui_others.md) | 47.2 KB | [3 个图片](./images/fluentui_others/) | |
| fluentui_peoplepicker | [fluentui_peoplepicker.md](./fluentui_peoplepicker.md) | 161.5 KB | [4 个图片](./images/fluentui_peoplepicker/) | |
| fluentui_persona | [fluentui_persona.md](./fluentui_persona.md) | 128.3 KB | [2 个图片](./images/fluentui_persona/) | |
| fluentui_progress | [fluentui_progress.md](./fluentui_progress.md) | 36.2 KB | [13 个图片](./images/fluentui_progress/) | |
| fluentui_tablayout | [fluentui_tablayout.md](./fluentui_tablayout.md) | 48.9 KB | [2 个图片](./images/fluentui_tablayout/) | |
| fluentui_topappbars | [fluentui_topappbars.md](./fluentui_topappbars.md) | 78.8 KB | [2 个图片](./images/fluentui_topappbars/) | |
| fluentui_transients | [fluentui_transients.md](./fluentui_transients.md) | 39.5 KB | [9 个图片](./images/fluentui_transients/) | |


## 过滤规则说明
- **代码文件**：只打包 `src/main/java` 或 `src/main/kotlin` 下的 `.kt` 和 `.java` 源码。
- **XML 资源**：只打包 `src/main/res/values/` 下的 `attrs.xml`、`styles.xml`、`colors.xml`、`dimens.xml` 和 `themes.xml`。
- **图片资源**：所有 `src/main/res/drawable*` 下的 `.png`、`.jpg` 和 `.xml`（矢量图/选择器）均已拷贝到 `images/<module_name>/` 目录中。
