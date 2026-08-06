import 'package:flutter/material.dart';
import 'fluent2_android.dart';

void main() {
  runApp(const Fluent2DemoApp());
}

/// Fluent 2 Android 组件库预览主程序
class Fluent2DemoApp extends StatefulWidget {
  const Fluent2DemoApp({super.key});

  @override
  State<Fluent2DemoApp> createState() => _Fluent2DemoAppState();
}

class _Fluent2DemoAppState extends State<Fluent2DemoApp> {
  // 当前全局主题模式 (默认为浅色)
  ThemeMode _themeMode = ThemeMode.light;

  void _toggleTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.light ? ThemeMode.dark : ThemeMode.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    final isDark = _themeMode == ThemeMode.dark;
    final fluentTheme =
        isDark ? Fluent2ThemeData.dark() : Fluent2ThemeData.light();

    return FluentTheme(
      data: fluentTheme,
      child: MaterialApp(
        title: 'Fluent 2 Menus 预览',
        debugShowCheckedModeBanner: false,
        theme: Fluent2ThemeData.light().toMaterialTheme(),
        darkTheme: Fluent2ThemeData.dark().toMaterialTheme(),
        themeMode: _themeMode,
        home: DemoHomePage(
          isDarkMode: isDark,
          onToggleTheme: _toggleTheme,
        ),
      ),
    );
  }
}

/// 交互预览主界面
class DemoHomePage extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const DemoHomePage({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  State<DemoHomePage> createState() => _DemoHomePageState();
}

class _DemoHomePageState extends State<DemoHomePage> {
  // 交互日志记录列表
  final List<String> _logs = [];

  // 单选菜单当前选中状态
  String _selectedThemeChoice = 'System';
  bool _switchVal = true;

  // 多选菜单当前选中状态
  final Map<String, bool> _multiSelectState = {
    '通知提醒': true,
    '提示音效': false,
    '自动更新': true,
  };

  void _log(String message) {
    setState(() {
      _logs.insert(0, '[${DateTime.now().toString().substring(11, 19)}] $message');
      if (_logs.length > 20) _logs.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Fluent 2 Menus 示例 preview'),
        centerTitle: true,
        actions: [
          // 右上角明暗主题切换按钮
          IconButton(
            icon: Icon(widget.isDarkMode ? Icons.wb_sunny : Icons.nightlight_round),
            tooltip: '切换主题',
            onPressed: widget.onToggleTheme,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // 说明卡片
            Card(
              elevation: 0,
              color: theme.backgroundColor,
              shape: RoundedCornerShapeBorder(
                borderColor: theme.dividerColor,
                radius: theme.cornerRadius,
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Fluent UI 2 (Android Style) 菜单组件库',
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.bold,
                        color: theme.foregroundColor,
                      ),
                    ),
                    const SizedBox(height: 6.0),
                    Text(
                      '本示例基于 packed_sources/fluentui_menus.md & FluentUI.md 构建。视觉严格贴合 FluentUI Android 规范 (Primary `#0F6CBD`, MinHeight 42dp, 8dp CornerRadius, Semantic Colors)，API 保持原生 Flutter Material 命名习惯。',
                      style: TextStyle(
                        fontSize: 13.0,
                        color: theme.foregroundSecondaryColor,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // 示例 1: 基础 PopupMenu (无选择框 NONE 模式)
            _buildSectionHeader('1. 基础 PopupMenu (ItemCheckableBehavior.none)'),
            const SizedBox(height: 8.0),
            Builder(
              builder: (btnContext) {
                return ElevatedButton.icon(
                  icon: const Icon(Icons.menu),
                  label: const Text('弹出基础菜单 (带图标与分割线)'),
                  onPressed: () async {
                    // 传入特定 btnContext 以便精确定位在按钮下方
                    final result = await showFluentPopupMenu<String>(
                      context: btnContext,
                      items: [
                        FluentPopupMenuItem(
                          value: 'edit',
                          title: '编辑 (Edit)',
                          icon: const Icon(Icons.edit_outlined),
                        ),
                        FluentPopupMenuItem(
                          value: 'copy',
                          title: '复制 (Copy)',
                          icon: const Icon(Icons.copy_outlined),
                        ),
                        FluentPopupMenuItem(
                          value: 'share',
                          title: '分享 (Share)',
                          icon: const Icon(Icons.share_outlined),
                          showDividerBelow: true, // 项下方渲染 1dp 分割线
                        ),
                        FluentPopupMenuItem(
                          value: 'delete',
                          title: '删除 (Delete)',
                          icon: const Icon(Icons.delete_outline, color: Colors.red),
                        ),
                      ],
                    );
                    if (result != null) {
                      _log('点击了基础菜单选项: $result');
                    }
                  },
                );
              },
            ),
            const SizedBox(height: 20.0),

            // 示例 2: 单选模式 PopupMenu (SINGLE 模式 - Radio 按钮)
            _buildSectionHeader('2. 单选模式 PopupMenu (ItemCheckableBehavior.single)'),
            const SizedBox(height: 8.0),
            Row(
              children: [
                Expanded(
                  child: Text(
                    '当前单选方案: $_selectedThemeChoice',
                    style: TextStyle(fontSize: 14, color: theme.foregroundColor),
                  ),
                ),
                Builder(
                  builder: (btnContext) {
                    return ElevatedButton(
                      onPressed: () async {
                        final items = [
                          FluentPopupMenuItem<String>(
                            value: 'Light',
                            title: '浅色主题 (Light)',
                            icon: const Icon(Icons.light_mode_outlined),
                            isChecked: _selectedThemeChoice == 'Light',
                          ),
                          FluentPopupMenuItem<String>(
                            value: 'Dark',
                            title: '深色主题 (Dark)',
                            icon: const Icon(Icons.dark_mode_outlined),
                            isChecked: _selectedThemeChoice == 'Dark',
                          ),
                          FluentPopupMenuItem<String>(
                            value: 'System',
                            title: '跟随系统 (System)',
                            icon: const Icon(Icons.settings_suggest_outlined),
                            isChecked: _selectedThemeChoice == 'System',
                          ),
                        ];

                        final selected = await showFluentPopupMenu<String>(
                          context: btnContext,
                          items: items,
                          checkableBehavior: FluentItemCheckableBehavior.single,
                        );

                        if (selected != null) {
                          setState(() {
                            _selectedThemeChoice = selected;
                          });
                          _log('单选菜单切换为: $selected');
                        }
                      },
                      child: const Text('单选菜单 (Radio)'),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 20.0),

            // 示例 3: 多选模式 PopupMenu (ALL 模式 - Checkbox)
            _buildSectionHeader('3. 多选模式 PopupMenu (ItemCheckableBehavior.all)'),
            const SizedBox(height: 8.0),
            Builder(
              builder: (btnContext) {
                return ElevatedButton.icon(
                  icon: const Icon(Icons.checklist),
                  label: const Text('多选开关设置 (Checkbox 保持开启)'),
                  onPressed: () {
                    final items = _multiSelectState.entries.map((entry) {
                      return FluentPopupMenuItem<String>(
                        value: entry.key,
                        title: entry.key,
                        isChecked: entry.value,
                        onTap: () {
                          _multiSelectState[entry.key] = !entry.value;
                          _log('多选开关变动: ${entry.key} -> ${_multiSelectState[entry.key]}');
                        },
                      );
                    }).toList();

                    showFluentPopupMenu<String>(
                      context: btnContext,
                      items: items,
                      checkableBehavior: FluentItemCheckableBehavior.all,
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20.0),

            // 示例 4: 符合 Material 原生 PopupMenuButton 习惯的 Widget
            _buildSectionHeader('4. Material 风格 FluentPopupMenuButton<T>'),
            const SizedBox(height: 8.0),
            ListTile(
              tileColor: theme.backgroundColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(theme.cornerRadius),
              ),
              title: const Text('列表卡片操作'),
              subtitle: const Text('右侧为 FluentPopupMenuButton 常用按钮'),
              trailing: FluentPopupMenuButton<String>(
                tooltip: '项目选项',
                onSelected: (val) {
                  _log('FluentPopupMenuButton 选择了: $val');
                },
                itemBuilder: (context) => [
                  FluentPopupMenuItem(
                    value: 'info',
                    title: '查看详情',
                    icon: const Icon(Icons.info_outline),
                  ),
                  FluentPopupMenuItem(
                    value: 'archive',
                    title: '归档项目',
                    icon: const Icon(Icons.archive_outlined),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            // 示例 5: Tokenized 动画 Menu 容器 (FluentMenu)
            _buildSectionHeader('5. Tokenized 动画 Menu (FluentMenu)'),
            const SizedBox(height: 8.0),
            Builder(
              builder: (menuContext) {
                return ElevatedButton.icon(
                  icon: const Icon(Icons.bubble_chart_outlined),
                  label: const Text('弹出动画 FluentMenu 容器'),
                  onPressed: () {
                    showFluentMenu(
                      context: menuContext,
                      child: SizedBox(
                        width: 220,
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(12.0),
                              child: Text(
                                'Tokenized Menu 内容',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: theme.primaryColor,
                                ),
                              ),
                            ),
                            const Divider(height: 1),
                            ListTile(
                              dense: true,
                              leading: const Icon(Icons.star_outline),
                              title: const Text('收藏项'),
                              onTap: () {
                                Navigator.pop(menuContext);
                                _log('点击了 Tokenized Menu 中的收藏');
                              },
                            ),
                            ListTile(
                              dense: true,
                              leading: const Icon(Icons.download_outlined),
                              title: const Text('离线下载'),
                              onTap: () {
                                Navigator.pop(menuContext);
                                _log('点击了 Tokenized Menu 中的下载');
                              },
                            ),
                          ],
                        ),
                      ),
                    );
                  },
                );
              },
            ),
            const SizedBox(height: 20.0),

            // 示例 6: FluentDialog 模态对话框
            _buildSectionHeader('6. 模态对话框 (FluentDialog)'),
            const SizedBox(height: 8.0),
            OutlinedButton.icon(
              icon: const Icon(Icons.crop_square_outlined),
              label: const Text('显示 FluentDialog'),
              onPressed: () {
                showFluentDialog(
                  context: context,
                  title: '确认提交更改？',
                  message: '提交后所有设置更改将同步至 FluentUI Theme Token 上下文。',
                  actions: [
                    TextButton(
                      child: const Text('取消'),
                      onPressed: () => Navigator.pop(context),
                    ),
                    ElevatedButton(
                      child: const Text('确定'),
                      onPressed: () {
                        Navigator.pop(context);
                        _log('点击了 Dialog 确认');
                      },
                    ),
                  ],
                );
              },
            ),
            const SizedBox(height: 20.0),

            // 示例 7: FluentTopAppBar & FluentSearchBar
            _buildSectionHeader('7. 导航栏与搜索栏 (FluentTopAppBar & FluentSearchBar)'),
            const SizedBox(height: 8.0),
            Card(
              elevation: 0,
              color: theme.backgroundColor,
              shape: RoundedCornerShapeBorder(
                borderColor: theme.dividerColor,
                radius: theme.cornerRadius,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // 嵌套 Neutral 风格扩展 TopAppBar 包含 SearchBar
                  FluentTopAppBar(
                    title: '文档搜索中心',
                    subTitle: '包含 5 个组件文档',
                    style: FluentStyle.brand,
                    navigationIcon: IconButton(
                      icon: const Icon(Icons.arrow_back),
                      onPressed: () => _log('点击了 TopAppBar 返回箭头'),
                    ),
                    actions: [
                      IconButton(
                        icon: const Icon(Icons.filter_list),
                        onPressed: () => _log('点击了 TopAppBar 筛选'),
                      ),
                    ],
                    searchBar: FluentSearchBar(
                      hintText: '搜索 Fluent 2 组件...',
                      onChanged: (text) => _log('搜索框输入: $text'),
                      onSubmitted: (text) => _log('提交搜索: $text'),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 24.0),

            // 示例 8: 按钮与 Chips 系列 (FluentButton, FluentCompoundButton, FluentChip)
            _buildSectionHeader('8. 按钮与 Chips 系列 (fluentui_controls.md)'),
            const SizedBox(height: 8.0),
            Wrap(
              spacing: 8.0,
              runSpacing: 8.0,
              children: [
                FluentButton(
                  text: 'Primary Button',
                  icon: const Icon(Icons.add),
                  onPressed: () => _log('点击了 Primary 按钮'),
                ),
                FluentButton(
                  text: 'Secondary',
                  style: FluentButtonStyle.secondary,
                  onPressed: () => _log('点击了 Secondary 按钮'),
                ),
                FluentButton(
                  text: 'Borderless',
                  style: FluentButtonStyle.borderless,
                  onPressed: () => _log('点击了 Borderless 按钮'),
                ),
                FluentButton(
                  text: 'Danger',
                  style: FluentButtonStyle.danger,
                  icon: const Icon(Icons.delete_forever),
                  onPressed: () => _log('点击了 Danger 按钮'),
                ),
              ],
            ),
            const SizedBox(height: 12.0),
            // Chips 药丸按钮组
            Row(
              children: ['全部', '已完成', '待办项', '归档'].map((label) {
                final isSelected = _selectedThemeChoice == label;
                return Padding(
                  padding: const EdgeInsets.only(right: 8.0),
                  child: FluentChip(
                    label: label,
                    selected: isSelected,
                    onPressed: () {
                      setState(() {
                        _selectedThemeChoice = label;
                      });
                      _log('选择了 Chip 标签: $label');
                    },
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 12.0),
            // Compound 按钮
            FluentCompoundButton(
              title: '云端同步数据',
              subTitle: '上一次同步于 10 分钟前',
              icon: const Icon(Icons.cloud_upload_outlined),
              onPressed: () => _log('点击了 Compound 按钮同步'),
            ),
            const SizedBox(height: 20.0),

            // 示例 9: 独立开关与单选选框 (FluentCheckBox, FluentRadioButton, FluentToggleSwitch)
            _buildSectionHeader('9. 开关与选框 (FluentCheckBox / Radio / Switch)'),
            const SizedBox(height: 8.0),
            Card(
              elevation: 0,
              color: theme.backgroundColor,
              shape: RoundedCornerShapeBorder(
                borderColor: theme.dividerColor,
                radius: theme.cornerRadius,
              ),
              child: Padding(
                padding: const EdgeInsets.all(12.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        FluentCheckBox(
                          value: _multiSelectState['通知提醒'] ?? true,
                          label: '接收即时推送',
                          onChanged: (val) {
                            setState(() {
                              _multiSelectState['通知提醒'] = val ?? false;
                            });
                            _log('CheckBox 变动: $val');
                          },
                        ),
                        FluentToggleSwitch(
                          value: _multiSelectState['提示音效'] ?? false,
                          label: '音效',
                          onChanged: (val) {
                            setState(() {
                              _multiSelectState['提示音效'] = val;
                            });
                            _log('ToggleSwitch 变动: $val');
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),

            // 示例 10: 上下文命令栏 (FluentContextualCommandBar - fluentui_ccb.md)
            _buildSectionHeader('10. 上下文命令栏 (FluentContextualCommandBar)'),
            const SizedBox(height: 8.0),
            FluentContextualCommandBar(
              showDismissButton: true,
              onDismiss: () => _log('关闭了命令栏'),
              items: [
                FluentCommandItem(
                  id: 'bold',
                  icon: const Icon(Icons.format_bold),
                  label: '加粗',
                  isSelected: true,
                  onPressed: () => _log('点击了命令栏: 加粗'),
                ),
                FluentCommandItem(
                  id: 'italic',
                  icon: const Icon(Icons.format_italic),
                  label: '斜体',
                  onPressed: () => _log('点击了命令栏: 斜体'),
                ),
                FluentCommandItem(
                  id: 'underline',
                  icon: const Icon(Icons.format_underlined),
                  label: '下划线',
                  onPressed: () => _log('点击了命令栏: 下划线'),
                ),
                FluentCommandItem(
                  id: 'color',
                  icon: const Icon(Icons.format_color_fill),
                  label: '高亮',
                  onPressed: () => _log('点击了命令栏: 高亮'),
                ),
              ],
            ),
            const SizedBox(height: 20.0),

            // 示例 11: 标准列表项与标头 (FluentListItem & FluentListSubHeader - fluentui_listitem.md)
            _buildSectionHeader('11. 标准列表项与标头 (fluentui_listitem.md)'),
            const SizedBox(height: 8.0),
            Card(
              elevation: 0,
              color: theme.backgroundColor,
              shape: RoundedCornerShapeBorder(
                borderColor: theme.dividerColor,
                radius: theme.cornerRadius,
              ),
              child: Column(
                children: [
                  FluentListSubHeader(
                    title: '常用功能列表',
                    actionText: '查看全部分组',
                    onActionTap: () => _log('点击了标头右侧操作'),
                  ),
                  FluentListItem(
                    title: '单行列表项 (One-Line)',
                    leading: const Icon(Icons.folder_open),
                    trailing: const Icon(Icons.chevron_right),
                    onTap: () => _log('点击了单行列表项'),
                  ),
                  FluentListItem(
                    title: '双行列表项 (Two-Line)',
                    subTitle: '包含次要描述信息的双行文本 ListItem (64dp)',
                    leading: const Icon(Icons.mail_outline),
                    trailing: FluentToggleSwitch(
                      value: _switchVal,
                      onChanged: (val) {
                        setState(() {
                          _switchVal = val;
                        });
                        _log('ListItem 中的 Switch 变动: $val');
                      },
                    ),
                    onTap: () => _log('点击了双行列表项'),
                  ),
                  FluentListItem(
                    title: '三行列表项 (Three-Line)',
                    subTitle: 'Microsoft Fluent UI 2 设计规范定义的标准 88dp 三行列表',
                    tertiaryTitle: '更新时间: 今天 14:30 · 来自 Sync Service',
                    leading: const Icon(Icons.verified_user_outlined),
                    trailing: const Icon(Icons.info_outline),
                    showDivider: false,
                    onTap: () => _log('点击了三行列表项'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            // 示例 12: 底部抽屉与侧栏 (FluentBottomSheet & FluentDrawer - fluentui_drawer.md)
            _buildSectionHeader('12. 底部抽屉与侧栏 (fluentui_drawer.md)'),
            const SizedBox(height: 8.0),
            Wrap(
              spacing: 12.0,
              runSpacing: 8.0,
              children: [
                OutlinedButton.icon(
                  icon: const Icon(Icons.vertical_align_top),
                  label: const Text('弹出 FluentBottomSheet'),
                  onPressed: () {
                    showFluentBottomSheet(
                      context: context,
                      title: '选择快速操作',
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          FluentListItem(
                            title: '分享文档',
                            leading: const Icon(Icons.share),
                            onTap: () {
                              Navigator.pop(context);
                              _log('点击了抽屉: 分享文档');
                            },
                          ),
                          FluentListItem(
                            title: '复制链接',
                            leading: const Icon(Icons.link),
                            onTap: () {
                              Navigator.pop(context);
                              _log('点击了抽屉: 复制链接');
                            },
                          ),
                          FluentListItem(
                            title: '移动至文件夹',
                            leading: const Icon(Icons.drive_file_move_outlined),
                            showDivider: false,
                            onTap: () {
                              Navigator.pop(context);
                              _log('点击了抽屉: 移动');
                            },
                          ),
                        ],
                      ),
                    );
                  },
                ),
                OutlinedButton.icon(
                  icon: const Icon(Icons.menu_open),
                  label: const Text('弹出 左侧 FluentDrawer'),
                  onPressed: () {
                    showFluentDrawer(
                      context: context,
                      position: FluentDrawerPosition.left,
                      child: Column(
                        children: [
                          const SizedBox(height: 20.0),
                          const ListTile(
                            leading: CircleAvatar(child: Text('F')),
                            title: Text('Fluent UI User'),
                            subtitle: Text('user@fluent2.org'),
                          ),
                          const Divider(),
                          FluentListItem(
                            title: '个人中心',
                            leading: const Icon(Icons.person_outline),
                            onTap: () => Navigator.pop(context),
                          ),
                          FluentListItem(
                            title: '应用设置',
                            leading: const Icon(Icons.settings_outlined),
                            showDivider: false,
                            onTap: () => Navigator.pop(context),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ],
            ),
            const SizedBox(height: 24.0),

            // 日志监听区域
            _buildSectionHeader('实时操作日志 (Log)'),
            const SizedBox(height: 8.0),
            Container(
              height: 140,
              padding: const EdgeInsets.all(12.0),
              decoration: BoxDecoration(
                color: theme.backgroundColor,
                borderRadius: BorderRadius.circular(theme.cornerRadius),
                border: Border.all(color: theme.dividerColor),
              ),
              child: _logs.isEmpty
                  ? Center(
                      child: Text(
                        '暂无操作记录，请点击上方菜单按钮测试',
                        style: TextStyle(color: theme.foregroundSecondaryColor, fontSize: 12),
                      ),
                    )
                  : ListView.builder(
                      itemCount: _logs.length,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(vertical: 2.0),
                          child: Text(
                            _logs[index],
                            style: TextStyle(
                              fontSize: 12.0,
                              fontFamily: 'monospace',
                              color: theme.foregroundColor,
                            ),
                          ),
                        );
                      },
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    final theme = FluentTheme.of(context);
    return Text(
      title,
      style: TextStyle(
        fontSize: 15.0,
        fontWeight: FontWeight.w600,
        color: theme.primaryColor,
      ),
    );
  }
}

/// 辅助圆角边框 Shape
class RoundedCornerShapeBorder extends OutlinedBorder {
  final Color borderColor;
  final double radius;

  const RoundedCornerShapeBorder({
    required this.borderColor,
    required this.radius,
  });

  @override
  EdgeInsetsGeometry get dimensions => EdgeInsets.zero;

  @override
  Path getInnerPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(radius)));
  }

  @override
  Path getOuterPath(Rect rect, {TextDirection? textDirection}) {
    return Path()..addRRect(RRect.fromRectAndRadius(rect, Radius.circular(radius)));
  }

  @override
  void paint(Canvas canvas, Rect rect, {TextDirection? textDirection}) {
    final paint = Paint()
      ..color = borderColor
      ..style = PaintingStyle.stroke
      ..strokeWidth = 1.0;
    canvas.drawRRect(RRect.fromRectAndRadius(rect, Radius.circular(radius)), paint);
  }

  @override
  ShapeBorder scale(double t) => this;

  @override
  OutlinedBorder copyWith({BorderSide? side}) => this;
}
