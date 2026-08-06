import 'package:flutter/material.dart';
import 'fluent2_android.dart';

void main() {
  runApp(const Fluent2DemoApp());
}

/// Fluent 2 Flutter 组件库交互式 API 图谱与展示应用 [Fluent2DemoApp]
class Fluent2DemoApp extends StatefulWidget {
  const Fluent2DemoApp({super.key});

  @override
  State<Fluent2DemoApp> createState() => _Fluent2DemoAppState();
}

class _Fluent2DemoAppState extends State<Fluent2DemoApp> {
  bool _isDarkMode = false;

  void _toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return FluentTheme(
      data: _isDarkMode ? Fluent2ThemeData.dark() : Fluent2ThemeData.light(),
      child: Builder(
        builder: (context) {
          final fluentTheme = FluentTheme.of(context);
          return MaterialApp(
            title: 'Fluent UI 2 Catalog',
            debugShowCheckedModeBanner: false,
            theme: fluentTheme.toMaterialTheme(),
            home: ShowcaseHomePage(
              isDarkMode: _isDarkMode,
              onToggleTheme: _toggleTheme,
            ),
          );
        },
      ),
    );
  }
}

/// 交互式组件表主界面 [ShowcaseHomePage]
class ShowcaseHomePage extends StatefulWidget {
  final bool isDarkMode;
  final VoidCallback onToggleTheme;

  const ShowcaseHomePage({
    super.key,
    required this.isDarkMode,
    required this.onToggleTheme,
  });

  @override
  State<ShowcaseHomePage> createState() => _ShowcaseHomePageState();
}

class _ShowcaseHomePageState extends State<ShowcaseHomePage> {
  int _selectedCategoryIndex = 0;
  final List<String> _logs = [];

  bool _switchValue = true;
  bool _checkboxValue = true;
  int _radioValue = 1;
  int _tabBarIndex = 0;
  int _pillBarIndex = 0;
  bool _cardExpanded = false;
  DateTime? _selectedCalendarDate;

  void _log(String message) {
    setState(() {
      _logs.insert(
        0,
        '[${DateTime.now().toString().substring(11, 19)}] $message',
      );
      if (_logs.length > 20) _logs.removeLast();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = FluentTheme.of(context);

    return Scaffold(
      backgroundColor: theme.brightness == Brightness.dark
          ? const Color(0xFF141414)
          : const Color(0xFFF0F2F5),

      appBar: FluentTopAppBar(
        title: 'Microsoft Fluent UI 2',
        subTitle: '示例交互式 API 属性表',
        style: FluentStyle.brand,
        navigationIcon: IconButton(
          mouseCursor: SystemMouseCursors.click,
          icon: const Icon(Icons.menu),
          tooltip: '侧边抽屉菜单',
          onPressed: () => _openDrawer(context),
        ),
        actions: [
          IconButton(
            mouseCursor: SystemMouseCursors.click,
            icon: Icon(
              widget.isDarkMode ? Icons.wb_sunny : Icons.nightlight_round,
            ),
            tooltip: '切换明暗主题',
            onPressed: widget.onToggleTheme,
          ),
          IconButton(
            mouseCursor: SystemMouseCursors.click,
            icon: const Icon(Icons.receipt_long),
            tooltip: '查看交互日志',
            onPressed: () => _showLogBottomSheet(context),
          ),
        ],
      ),

      body: Column(
        children: [
          Container(
            color: theme.backgroundColor,
            padding: const EdgeInsets.symmetric(vertical: 6.0),
            child: FluentPillBar(
              isScrollable: true,
              selectedIndex: _selectedCategoryIndex,
              onSelected: (index) {
                setState(() {
                  _selectedCategoryIndex = index;
                });
                _log('切换画廊分类: ${_getCategoryName(index)}');
              },
              labels: const [
                '按钮与选框',
                '列表与卡片',
                '导航工具栏',
                '文本搜索框',
                '模态与通知',
                '人员与微光',
                '日历与图标',
              ],
            ),
          ),

          Expanded(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(16.0),
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  _buildPageCategory(theme),
                  const SizedBox(height: 80.0),
                ],
              ),
            ),
          ),
        ],
      ),

      bottomNavigationBar: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: FluentContextualCommandBar(
            showDismissButton: false,
            items: [
              FluentCommandItem(
                id: 'theme',
                icon: Icon(
                  widget.isDarkMode ? Icons.wb_sunny : Icons.nightlight_round,
                ),
                label: widget.isDarkMode ? '浅色模式' : '深色模式',
                onPressed: widget.onToggleTheme,
              ),
              FluentCommandItem(
                id: 'sheet',
                icon: const Icon(Icons.vertical_align_top),
                label: '底部 Sheet',
                onPressed: () => _openBottomSheet(context),
              ),
              FluentCommandItem(
                id: 'dialog',
                icon: const Icon(Icons.crop_square_outlined),
                label: '模态对话框',
                onPressed: () => _openConfirmDialog(context),
              ),
              FluentCommandItem(
                id: 'toast',
                icon: const Icon(Icons.notifications_active_outlined),
                label: 'Snackbar',
                onPressed: () {
                  showFluentSnackbar(
                    context: context,
                    title: '操作成功',
                    message: '已成功触发 Fluent 2 全局通知 Snackbar',
                    style: FluentSnackbarStyle.brand,
                    leadingIcon: const Icon(FluentIcons.success),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }

  String _getCategoryName(int index) {
    const names = [
      '按钮与选框',
      '列表与卡片',
      '导航工具栏',
      '文本搜索框',
      '模态与通知',
      '人员与微光',
      '日历与图标',
    ];
    return names[index];
  }

  // 根据选中的页码构建分类组件表
  Widget _buildPageCategory(Fluent2ThemeData theme) {
    switch (_selectedCategoryIndex) {
      case 0:
        return _buildButtonsAndTogglesPage(theme);
      case 1:
        return _buildListAndCardPage(theme);
      case 2:
        return _buildNavigationPage(theme);
      case 3:
        return _buildInputsPage(theme);
      case 4:
        return _buildModalsAndNotificationsPage(theme);
      case 5:
        return _buildPersonasAndTransientsPage(theme);
      case 6:
        return _buildCalendarAndIconsPage(theme);
      default:
        return _buildButtonsAndTogglesPage(theme);
    }
  }

  // 1. 按钮与选框 Page
  Widget _buildButtonsAndTogglesPage(Fluent2ThemeData theme) {
    return Column(
      children: [
        ComponentDocCard(
          theme: theme,
          name: 'FluentButton',
          description:
              'Fluent 2 标准按钮，包含 Primary, Secondary, Borderless, Danger 4 种视觉款式。',
          demo: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              FluentButton(
                text: 'Primary Button',
                icon: const Icon(Icons.add),
                onPressed: () => _log('点击 Primary Button'),
              ),
              FluentButton(
                text: 'Secondary',
                style: FluentButtonStyle.secondary,
                onPressed: () => _log('点击 Secondary Button'),
              ),
              FluentButton(
                text: 'Borderless',
                style: FluentButtonStyle.borderless,
                onPressed: () => _log('点击 Borderless Button'),
              ),
              FluentButton(
                text: 'Danger',
                style: FluentButtonStyle.danger,
                icon: const Icon(Icons.delete_outline),
                onPressed: () => _log('点击 Danger Button'),
              ),
            ],
          ),
          codeSnippet: '''FluentButton(
  text: 'Primary Button',
  icon: const Icon(Icons.add),
  style: FluentButtonStyle.primary, // primary, secondary, borderless, danger
  size: FluentButtonSize.medium,    // small (32dp), medium (40dp), large (48dp)
  onPressed: () => print('OnPressed Callback'),
)''',
          params: const [
            ApiParam(
              name: 'text',
              type: 'String',
              defaultVal: '必填',
              desc: '按钮显示文字',
            ),
            ApiParam(
              name: 'icon',
              type: 'Widget?',
              defaultVal: 'null',
              desc: '前置图标 Icon',
            ),
            ApiParam(
              name: 'style',
              type: 'FluentButtonStyle',
              defaultVal: 'primary',
              desc: '按钮风格样式',
            ),
            ApiParam(
              name: 'size',
              type: 'FluentButtonSize',
              defaultVal: 'medium',
              desc: '按钮规格尺寸',
            ),
            ApiParam(
              name: 'onPressed',
              type: 'VoidCallback?',
              defaultVal: 'null',
              desc: '点击触发函数，为 null 时自动切换为禁用禁用态',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        ComponentDocCard(
          theme: theme,
          name: 'FluentCompoundButton',
          description: '包含大字主标题与小字详细描述的双行卡片式操作按钮。',
          demo: FluentCompoundButton(
            title: '同步配置至云端 OneDrive',
            subTitle: '包含最新项目配置与样式数据',
            icon: const Icon(Icons.cloud_upload_outlined),
            onPressed: () => _log('点击了 CompoundButton'),
          ),
          codeSnippet: '''FluentCompoundButton(
  title: '同步配置至云端 OneDrive',
  subTitle: '包含最新项目配置与样式数据',
  icon: const Icon(Icons.cloud_upload_outlined),
  onPressed: () => print('Syncing'),
)''',
          params: const [
            ApiParam(
              name: 'title',
              type: 'String',
              defaultVal: '必填',
              desc: '主标题大字',
            ),
            ApiParam(
              name: 'subTitle',
              type: 'String',
              defaultVal: '必填',
              desc: '副标题/次要描述小字',
            ),
            ApiParam(
              name: 'icon',
              type: 'Widget?',
              defaultVal: 'null',
              desc: '前置图标',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        ComponentDocCard(
          theme: theme,
          name: 'FluentCheckBox / Radio / Switch',
          description: '全套选框与开关控制器。',
          demo: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              FluentCheckBox(
                value: _checkboxValue,
                label: '记住我的登录状态与偏好设置',
                onChanged: (val) {
                  setState(() => _checkboxValue = val ?? false);
                  _log('CheckBox: $val');
                },
              ),
              const SizedBox(height: 12.0),
              Row(
                children: [
                  FluentRadioButton<int>(
                    value: 1,
                    groupValue: _radioValue,
                    label: '选项 1',
                    onChanged: (val) => setState(() => _radioValue = val!),
                  ),
                  const SizedBox(width: 16.0),
                  FluentRadioButton<int>(
                    value: 2,
                    groupValue: _radioValue,
                    label: '选项 2',
                    onChanged: (val) => setState(() => _radioValue = val!),
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              const Divider(height: 1.0),
              const SizedBox(height: 8.0),
              FluentToggleSwitch(
                value: _switchValue,
                label: '开启新版本发布自动推送提醒',
                onChanged: (val) {
                  setState(() => _switchValue = val);
                  _log('ToggleSwitch: $val');
                },
              ),
            ],
          ),
          codeSnippet: '''FluentCheckBox(
  value: isChecked,
  label: '记住状态',
  onChanged: (val) => setState(() => isChecked = val!),
);

FluentToggleSwitch(
  value: isEnabled,
  label: '接收推送',
  onChanged: (val) => setState(() => isEnabled = val),
);''',
          params: const [
            ApiParam(
              name: 'value',
              type: 'bool / T',
              defaultVal: '必填',
              desc: '当前状态选值',
            ),
            ApiParam(
              name: 'onChanged',
              type: 'ValueChanged',
              defaultVal: '必填',
              desc: '状态改变回调 (为 null 时自动禁用)',
            ),
            ApiParam(
              name: 'label',
              type: 'String?',
              defaultVal: 'null',
              desc: '关联点击的标签文本',
            ),
            ApiParam(
              name: 'enableCursor',
              type: 'bool',
              defaultVal: 'true',
              desc: '是否启用鼠标悬停手形',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        ComponentDocCard(
          theme: theme,
          name: 'FluentBadge / FluentCitation',
          description: '微软提醒徽章 Badge 与索引引用标签 Citation。',
          demo: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const FluentBadge(style: FluentBadgeStyle.danger),
              const FluentBadge(text: '8', style: FluentBadgeStyle.brand),
              const FluentBadge(text: '99+', style: FluentBadgeStyle.danger),
              FluentBadge(
                text: '3',
                child: IconButton(
                  icon: const Icon(Icons.notifications_outlined),
                  onPressed: () => _log('点击了未读通知 Icon'),
                ),
              ),
              FluentCitation(
                text: '[1]',
                onTap: () => _log('点击了 Citation 引用索引'),
              ),
            ],
          ),
          codeSnippet: '''FluentBadge(
  text: '99+',
  style: FluentBadgeStyle.danger,
  child: const Icon(Icons.notifications),
);

FluentCitation(
  text: '[1]',
  onTap: () => print('Open citation link'),
);''',
          params: const [
            ApiParam(
              name: 'text',
              type: 'String?',
              defaultVal: 'null',
              desc: '徽章文本，为 null 时为红点 Dot Badge',
            ),
            ApiParam(
              name: 'style',
              type: 'FluentBadgeStyle',
              defaultVal: 'danger',
              desc: 'brand, neutral, danger',
            ),
            ApiParam(
              name: 'child',
              type: 'Widget?',
              defaultVal: 'null',
              desc: '被标记的目标 Element',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        ComponentDocCard(
          theme: theme,
          name: 'FluentBasicChip / FluentChip',
          description:
              '微软 Chip 标签药丸组件，支持 Rest, Selected, Disabled, Static 与前后 Accessory。',
          demo: Wrap(
            spacing: 8.0,
            runSpacing: 8.0,
            children: [
              FluentBasicChip(
                label: 'Word',
                onClick: () => _log('点击了 Word Chip'),
              ),
              FluentBasicChip(
                label: 'Excel',
                selected: true,
                onClick: () => _log('点击了 Excel Chip'),
              ),
              FluentBasicChip(
                label: 'PowerPoint',
                leadingAccessory: const Icon(Icons.slideshow),
                onClick: () => _log('点击了 PowerPoint Chip'),
              ),
              FluentBasicChip(
                label: 'Cart',
                trailingAccessory: const Icon(Icons.shopping_cart_outlined),
                onClick: () => _log('点击了 Cart Chip'),
              ),
              const FluentBasicChip(label: 'Disabled', enabled: false),
              const FluentBasicChip(label: 'Static'),
            ],
          ),
          codeSnippet: '''FluentBasicChip(
  label: 'Excel',
  selected: true,
  leadingAccessory: const Icon(Icons.table_chart),
  trailingAccessory: const Icon(Icons.close),
  onClick: () => print('Click'),
);''',
          params: const [
            ApiParam(
              name: 'label',
              type: 'String',
              defaultVal: '必填',
              desc: 'Chip 标签显示文字',
            ),
            ApiParam(
              name: 'selected',
              type: 'bool',
              defaultVal: 'false',
              desc: '是否处于 Selected 高亮选中状态',
            ),
            ApiParam(
              name: 'enabled',
              type: 'bool',
              defaultVal: 'true',
              desc: '是否启用响应点击手势',
            ),
            ApiParam(
              name: 'onClick / onPressed',
              type: 'VoidCallback?',
              defaultVal: 'null',
              desc: '点击回调，为 null 时为静态 Static Chip',
            ),
            ApiParam(
              name: 'leadingAccessory / trailingAccessory',
              type: 'Widget?',
              defaultVal: 'null',
              desc: '前后配件/图标 Icon 槽位',
            ),
          ],
        ),
      ],
    );
  }

  // 2. 列表与卡片 Page
  Widget _buildListAndCardPage(Fluent2ThemeData theme) {
    return Column(
      children: [
        ComponentDocCard(
          theme: theme,
          name: 'FluentListItem',
          description: '包含单行、双行、三行列表项、SectionHeader 与 SectionDescription。',
          demo: Column(
            children: [
              FluentListSectionHeader(
                title: '系统配置 SectionHeader',
                accessoryTextTitle: '管理操作',
                accessoryTextOnClick: () => _log('点击了 SectionHeader Action'),
              ),
              FluentListItem(
                title: '单行列表项',
                leading: const Icon(Icons.folder_open),
                trailing: const Icon(Icons.chevron_right),
                onTap: () => _log('点击单行列表项'),
              ),
              FluentListItem(
                title: '双行列表项',
                subTitle: '包含次要信息描述的 ListItem 结构',
                leading: const Icon(Icons.mail_outline),
                trailing: FluentToggleSwitch(
                  value: _switchValue,
                  onChanged: (val) => setState(() => _switchValue = val),
                ),
                onTap: () => _log('点击双行列表项'),
              ),
              FluentListItem(
                title: '三行列表项',
                subTitle: '包含完整三层文本结构',
                tertiaryTitle: '同步于 10 分钟前 · 节点机房 Alpha',
                leading: const Icon(Icons.verified_user_outlined),
                showDivider: false,
                onTap: () => _log('点击三行列表项'),
              ),
              const FluentListItem(
                title: '禁用列表项',
                subTitle: '无法响应点击手势',
                enabled: false,
              ),
              FluentListSectionDescription(
                description: 'SectionDescription 说明文本：用于在分组底部说明详细业务逻辑与限制条款。',
                actionText: '了解更多',
                onActionClick: () => _log('点击了 SectionDescription Action'),
              ),
            ],
          ),
          codeSnippet: '''FluentListItem(
  title: '双行列表项',
  subTitle: '副标题文本描述',
  leading: const Icon(Icons.mail_outline),
  trailing: const Icon(Icons.chevron_right),
  showDivider: true,
  onTap: () => print('Tapped'),
);''',
          params: const [
            ApiParam(
              name: 'title',
              type: 'String',
              defaultVal: '必填',
              desc: '主标题文本',
            ),
            ApiParam(
              name: 'subTitle',
              type: 'String?',
              defaultVal: 'null',
              desc: '第二行描述小字',
            ),
            ApiParam(
              name: 'tertiaryTitle',
              type: 'String?',
              defaultVal: 'null',
              desc: '第三行辅助文本',
            ),
            ApiParam(
              name: 'leading',
              type: 'Widget?',
              defaultVal: 'null',
              desc: '前置 Icon 或 Avatar',
            ),
            ApiParam(
              name: 'trailing',
              type: 'Widget?',
              defaultVal: 'null',
              desc: '尾部开关、图标或箭头',
            ),
            ApiParam(
              name: 'showDivider',
              type: 'bool',
              defaultVal: 'true',
              desc: '底部 1dp 缩进分割线',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        // FluentCard, FluentFileCard / FluentAnnouncementCard
        ComponentDocCard(
          theme: theme,
          name: 'FluentCard',
          description: '支持内容改变时的平滑 AnimatedSize 伸缩动画、Preview 预览图与溢出菜单。',
          demo: Column(
            children: [
              FluentCard(
                enableSizeAnimation: true,
                onTap: () {
                  setState(() => _cardExpanded = !_cardExpanded);
                  _log(_cardExpanded ? '展开卡片详情' : '折叠卡片详情');
                },
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        const Icon(Icons.dashboard_outlined),
                        const SizedBox(width: 12.0),
                        const Expanded(
                          child: Text(
                            'Fluent 2 基础容器卡片 (BasicCard)',
                            style: TextStyle(fontWeight: FontWeight.bold),
                          ),
                        ),
                        Icon(
                          _cardExpanded
                              ? Icons.keyboard_arrow_up
                              : Icons.keyboard_arrow_down,
                        ),
                      ],
                    ),
                    if (_cardExpanded) ...[
                      const SizedBox(height: 12.0),
                      Text(
                        '内置 AnimatedSize 平滑伸缩动画。当卡片内部结构或动态文本发生改变时，卡片容器会自动高度平滑扩展与折叠，无需手动计算高度或写 AnimationController。',
                        style: TextStyle(
                          fontSize: 13.0,
                          color: theme.foregroundSecondaryColor,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
              const SizedBox(height: 12.0),
              FluentFileCard(
                fileName: 'Fluent2_Design_Tokens.pdf',
                subTitle: '4.2 MB · 微软设计规范文档',
                actionOverflowOnClick: () => _log('点击了文件卡片更多选项'),
                onTap: () => _log('点击了文件卡片'),
              ),
              const SizedBox(height: 12.0),
              FluentAnnouncementCard(
                title: ' Fluent 2 Mobile 视觉规范库正式发布',
                description: '为 iOS/Android 提供完整的微软 Token 化设计控件支持。',
                buttonText: '了解更多',
                buttonOnClick: () => _log('点击了 AnnouncementCard 操作按钮'),
              ),
            ],
          ),
          codeSnippet: '''FluentCard(
  enableSizeAnimation: true, // 开启内容改变平滑伸缩
  onTap: () => setState(() => isExpanded = !isExpanded),
  child: const Text('Card Content'),
);

FluentFileCard(
  fileName: 'Document.pdf',
  subTitle: '2.4 MB · PDF',
  actionOverflowOnClick: () => openMenu(),
);''',
          params: const [
            ApiParam(
              name: 'enableSizeAnimation',
              type: 'bool',
              defaultVal: 'true',
              desc: '内容改变时自动执行 AnimatedSize 平滑伸缩动画',
            ),
            ApiParam(
              name: 'animationDuration',
              type: 'Duration',
              defaultVal: '300ms',
              desc: '伸缩动画过渡时长',
            ),
            ApiParam(
              name: 'actionOverflowOnClick',
              type: 'VoidCallback?',
              defaultVal: 'null',
              desc: '文件卡片更多选项图标点击回调，为 null 时不渲染',
            ),
          ],
        ),
      ],
    );
  }

  // 3. 导航工具栏 Page
  Widget _buildNavigationPage(Fluent2ThemeData theme) {
    return Column(
      children: [
        ComponentDocCard(
          theme: theme,
          name: 'FluentTopAppBar & FluentAppBarLayout',
          description:
              '微软 Tokenized 顶部导航与 AppBarLayout 容器，支持 Avatar / BackIcon 导航指示、Accessory 搜索栏扩展与 ScrollBehavior 隐退手势。',
          demo: Column(
            children: [
              FluentAppBarLayout(
                title: 'AppBarLayout 动态演示',
                subTitle: '包含 Avatar 导航图标与 Accessory 搜索栏',
                navigationIconType: FluentNavigationIconType.avatar,
                avatarName: 'Mauricio August',
                style: FluentStyle.brand,
                accessoryView: Container(
                  height: 48.0,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 12.0,
                    vertical: 4.0,
                  ),
                  child: FluentSearchBar(
                    hintText: '搜索文档、联系人与邮件...',
                    onChanged: (val) {},
                  ),
                ),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              FluentTopAppBar(
                title: 'Neutral 极简导航栏',
                subTitle: '包含 5 项控件',
                style: FluentStyle.neutral,
                navigationIcon: const Icon(Icons.arrow_back),
                actions: [
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    onPressed: () {},
                  ),
                ],
              ),
            ],
          ),
          codeSnippet: '''FluentAppBarLayout(
  title: 'AppBarLayout 动态演示',
  subTitle: '包含 Avatar 导航图标',
  navigationIconType: FluentNavigationIconType.avatar, // none, avatar, backIcon
  scrollBehavior: FluentScrollBehavior.collapseToolbar, // none, collapseToolbar, pin
  accessoryView: FluentSearchBar(hintText: '搜索...'),
  actions: [ ... ],
);''',
          params: const [
            ApiParam(
              name: 'title / subTitle',
              type: 'String',
              defaultVal: '必填',
              desc: '主标题与副标题',
            ),
            ApiParam(
              name: 'navigationIconType',
              type: 'FluentNavigationIconType',
              defaultVal: 'backIcon',
              desc: 'none, avatar, backIcon 导航图标形态',
            ),
            ApiParam(
              name: 'scrollBehavior',
              type: 'FluentScrollBehavior',
              defaultVal: 'collapseToolbar',
              desc: 'none, collapseToolbar, pin 滚动展开折叠行为',
            ),
            ApiParam(
              name: 'accessoryView',
              type: 'Widget?',
              defaultVal: 'null',
              desc: '底部扩展槽位 (如 SearchBar / PillBar)',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        ComponentDocCard(
          theme: theme,
          name: 'FluentTabBar & FluentPillBar',
          description:
              '微软 V2 选项卡，支持 Vertical, Horizontal, NoText 排布、自定义 Badge (Dot / Character) 与 PillBar 分段控制。',
          demo: Column(
            children: [
              FluentTabBar(
                selectedIndex: _tabBarIndex,
                style: FluentStyle.neutral,
                showIndicator: true,
                tabTextAlignment: FluentTabTextAlignment.vertical,
                onTabSelected: (idx) => setState(() => _tabBarIndex = idx),
                tabs: const [
                  FluentTabItem(
                    title: '主页',
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                    badge: FluentBadge(),
                  ),
                  FluentTabItem(
                    title: '邮件',
                    icon: Icon(Icons.mail_outlined),
                    selectedIcon: Icon(Icons.mail),
                    badgeText: '123+',
                  ),
                  FluentTabItem(
                    title: '设置',
                    icon: Icon(Icons.settings_outlined),
                    selectedIcon: Icon(Icons.settings),
                  ),
                  FluentTabItem(
                    title: '通知',
                    icon: Icon(Icons.notifications_outlined),
                    selectedIcon: Icon(Icons.notifications),
                    badgeText: '10',
                  ),
                  FluentTabItem(
                    title: '禁用',
                    icon: Icon(Icons.block_outlined),
                    enabled: false,
                  ),
                ],
              ),
              const SizedBox(height: 10.0),
              FluentTabBar(
                selectedIndex: _tabBarIndex,
                style: FluentStyle.brand,
                showIndicator: true,
                tabTextAlignment: FluentTabTextAlignment.horizontal,
                onTabSelected: (idx) => setState(() => _tabBarIndex = idx),
                tabs: const [
                  FluentTabItem(
                    title: '主页',
                    icon: Icon(Icons.home_outlined),
                    selectedIcon: Icon(Icons.home),
                  ),
                  FluentTabItem(
                    title: '邮件',
                    icon: Icon(Icons.mail_outlined),
                    selectedIcon: Icon(Icons.mail),
                    badgeText: '99+',
                  ),
                  FluentTabItem(
                    title: '设置',
                    icon: Icon(Icons.settings_outlined),
                    selectedIcon: Icon(Icons.settings),
                  ),
                ],
              ),
              const SizedBox(height: 14.0),
              FluentPillBar(
                isScrollable: true,
                selectedIndex: _pillBarIndex,
                onSelected: (idx) => setState(() => _pillBarIndex = idx),
                labels: const ['日视图', '周视图', '月视图', '年视图'],
              ),
              const SizedBox(height: 10.0),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                children: [
                  FluentPillButton(
                    label: '单个 Pill',
                    selected: true,
                    onClick: () => _log('点击了单个 PillButton'),
                  ),
                  FluentPillButton(
                    label: '未读红点 Pill',
                    notificationDot: true,
                    onClick: () => _log('点击了未读红点 PillButton'),
                  ),
                  const FluentPillButton(
                    label: 'Disabled Pill',
                    enabled: false,
                  ),
                ],
              ),
            ],
          ),
          codeSnippet: '''FluentPillBar(
  labels: const ['日视图', '周视图', '月视图', '年视图'],
  selectedIndex: _pillBarIndex,
  onSelected: (index) => setState(() => _pillBarIndex = index),
);

FluentPillButton(
  label: '未读提醒',
  notificationDot: true,
  selected: true,
  onClick: () => print('Tapped'),
);''',
          params: const [
            ApiParam(
              name: 'tabs / selectedIndex',
              type: 'List<FluentTabItem> / int',
              defaultVal: '必填',
              desc: 'TabBar 选项卡模型与当前选中索引',
            ),
            ApiParam(
              name: 'tabTextAlignment',
              type: 'TabTextAlignment',
              defaultVal: 'horizontal',
              desc: 'vertical, horizontal, noText 文字排布',
            ),
            ApiParam(
              name: 'style',
              type: 'FluentStyle',
              defaultVal: 'neutral',
              desc: 'neutral (中性底色), brand (微软通信蓝)',
            ),
            ApiParam(
              name: 'badge / badgeText',
              type: 'Widget? / String?',
              defaultVal: 'null',
              desc: 'TabItem 关联的 Dot/Character 提醒徽章',
            ),
            ApiParam(
              name: 'labels / notificationDot',
              type: 'List<String> / bool',
              defaultVal: '必填 / false',
              desc: 'PillBar 标签列表与未读红点提示',
            ),
            ApiParam(
              name: 'enableCursor',
              type: 'bool',
              defaultVal: 'true',
              desc: '是否启用鼠标悬停手形',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        //  FluentSideRail
        ComponentDocCard(
          theme: theme,
          name: 'FluentSideRail',
          description: '微软平板、桌面或大屏模式下的左侧垂直 Navigation Rail 导航条。',
          demo: SizedBox(
            height: 440.0,
            child: FluentSideRail(
              width: 72,
              header: CircleAvatar(
                radius: 18.0,
                backgroundColor: theme.primaryColor,
                child: const Text(
                  'F',
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              topItems: [
                FluentSideRailItem(
                  title: '主页',
                  icon: const Icon(Icons.home_outlined),
                  selectedIcon: const Icon(Icons.home),
                  onTap: () => _log('点击了 SideRail 主页'),
                ),
                FluentSideRailItem(
                  title: '邮件',
                  icon: const Icon(Icons.email_outlined),
                  selectedIcon: const Icon(Icons.email),
                  badgeText: '9+',
                  onTap: () => _log('点击了 SideRail 邮件'),
                ),
                FluentSideRailItem(
                  title: '设置',
                  icon: const Icon(Icons.settings_outlined),
                  selectedIcon: const Icon(Icons.settings),
                  onTap: () => _log('点击了 SideRail 设置'),
                ),
              ],
              bottomItems: [
                FluentSideRailItem(
                  title: '个人',
                  icon: const Icon(Icons.person_outline),
                  onTap: () => _log('点击了 SideRail 个人'),
                ),
              ],
            ),
          ),
          codeSnippet: '''FluentSideRail(
  header: const CircleAvatar(child: Text('F')),
  enableText: true,
  topItems: [
    FluentSideRailItem(title: '主页', icon: const Icon(Icons.home_outlined)),
    FluentSideRailItem(title: '邮件', icon: const Icon(Icons.email_outlined), badgeText: '9+'),
  ],
  bottomItems: [
    FluentSideRailItem(title: '个人', icon: const Icon(Icons.person_outline)),
  ],
  onTopSelected: (index) => print('Top: \$index'),
);''',
          params: const [
            ApiParam(
              name: 'header',
              type: 'Widget?',
              defaultVal: 'null',
              desc: '顶栏 Header (如 Avatar, FAB, Logo)',
            ),
            ApiParam(
              name: 'topItems',
              type: 'List<FluentSideRailItem>',
              defaultVal: '必填',
              desc: '顶部垂直导航选项列表',
            ),
            ApiParam(
              name: 'bottomItems',
              type: 'List<FluentSideRailItem>',
              defaultVal: '[]',
              desc: '底部吸顶导航选项列表',
            ),
            ApiParam(
              name: 'enableText',
              type: 'bool',
              defaultVal: 'true',
              desc: '是否显示文本，为 false 时为 Icon Only 模式',
            ),
          ],
        ),
      ],
    );
  }

  // 4. 文本搜索框 Page
  Widget _buildInputsPage(Fluent2ThemeData theme) {
    return Column(
      children: [
        ComponentDocCard(
          theme: theme,
          name: 'FluentTextField',
          description: '标准输入框，支持 Label、HelperText 与 ErrorText 错误红线高亮。',
          demo: FluentTextField(
            label: '工作电子邮箱',
            hintText: 'user@microsoft.com',
            leadingIcon: const Icon(Icons.email_outlined),
            helperText: '我们将向该邮箱发送通知和更新',
            onChanged: (text) => _log('输入框文本: $text'),
          ),
          codeSnippet: '''FluentTextField(
  label: '电子邮箱',
  hintText: 'user@company.com',
  errorText: isValid ? null : '邮箱格式不合规',
  leadingIcon: const Icon(Icons.email_outlined),
  showClearButton: true,
  onChanged: (text) => validate(text),
);''',
          params: const [
            ApiParam(
              name: 'label',
              type: 'String?',
              defaultVal: 'null',
              desc: '顶部说明 Label',
            ),
            ApiParam(
              name: 'hintText',
              type: 'String?',
              defaultVal: 'null',
              desc: '占位文本',
            ),
            ApiParam(
              name: 'errorText',
              type: 'String?',
              defaultVal: 'null',
              desc: '错误提示，非空时边框自动高亮变红',
            ),
            ApiParam(
              name: 'showClearButton',
              type: 'bool',
              defaultVal: 'true',
              desc: '非空时是否自动呈现一键清空 X 按钮',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        ComponentDocCard(
          theme: theme,
          name: 'FluentLabel',
          description: '微软 12 种 Typography 规范文本标签，满足各类标题与正文层级需求。',
          demo: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              FluentLabel(
                text: 'Display - 32pt Bold',
                style: FluentLabelStyle.display,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'LargeTitle - 28pt Bold',
                style: FluentLabelStyle.largeTitle,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'Title1 - 24pt Bold',
                style: FluentLabelStyle.title1,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'Title2 - 20pt Bold',
                style: FluentLabelStyle.title2,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'Title3 - 16pt SemiBold',
                style: FluentLabelStyle.title3,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'Body1Strong - 15pt SemiBold',
                style: FluentLabelStyle.body1Strong,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'Body1 - 15pt Regular',
                style: FluentLabelStyle.body1,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'Body2Strong - 13pt SemiBold',
                style: FluentLabelStyle.body2Strong,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'Body2 - 13pt Regular',
                style: FluentLabelStyle.body2,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'Caption1Strong - 12pt SemiBold',
                style: FluentLabelStyle.caption1Strong,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'Caption1 - 12pt Regular',
                style: FluentLabelStyle.caption1,
              ),
              SizedBox(height: 4.0),
              FluentLabel(
                text: 'Caption2 - 11pt Regular',
                style: FluentLabelStyle.caption2,
              ),
            ],
          ),
          codeSnippet: '''FluentLabel(
  text: 'Title1 Header',
  style: FluentLabelStyle.title1, // display, largeTitle, title1~3, body1~2, caption1~2
);''',
          params: const [
            ApiParam(
              name: 'text',
              type: 'String',
              defaultVal: '必填',
              desc: '标签文本内容',
            ),
            ApiParam(
              name: 'style',
              type: 'FluentLabelStyle',
              defaultVal: 'body1',
              desc: '12 种 Fluent 2  Typography 字体层级样式',
            ),
            ApiParam(
              name: 'color',
              type: 'Color?',
              defaultVal: 'null',
              desc: '自定义文字颜色，默认跟随系统前景主题',
            ),
          ],
        ),
      ],
    );
  }

  // 5. 模态与通知 Page
  Widget _buildModalsAndNotificationsPage(Fluent2ThemeData theme) {
    return Column(
      children: [
        ComponentDocCard(
          theme: theme,
          name: 'showFluentDialog / BottomSheet / Drawer',
          description: '全局模态对话框、底部 Sheet 抓手抽屉与侧栏。',
          demo: Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            children: [
              OutlinedButton.icon(
                icon: const Icon(Icons.title),
                label: const Text('TextButton Dialog'),
                onPressed: () => _openConfirmDialog(context, buttonType: FluentDialogButtonType.textButton),
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.smart_button),
                label: const Text('Standard Button Dialog'),
                onPressed: () => _openConfirmDialog(context, buttonType: FluentDialogButtonType.button),
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.vertical_align_top),
                label: const Text('showFluentBottomSheet'),
                onPressed: () => _openBottomSheet(context),
              ),
              OutlinedButton.icon(
                icon: const Icon(Icons.menu_open),
                label: const Text('showFluentDrawer'),
                onPressed: () => _openDrawer(context),
              ),
            ],
          ),
          codeSnippet: '''showFluentDialog(
  context: context,
  title: '确认提交配置？',
  message: '提交后当前选项将即时生效。',
  actions: [ ... ],
);

showFluentBottomSheet(
  context: context,
  title: '快捷操作',
  child: const MySheetContent(),
);''',
          params: const [
            ApiParam(
              name: 'context',
              type: 'BuildContext',
              defaultVal: '必填',
              desc: 'BuildContext 上下文',
            ),
            ApiParam(
              name: 'title',
              type: 'String?',
              defaultVal: 'null',
              desc: '标题文字',
            ),
            ApiParam(
              name: 'isDismissible',
              type: 'bool',
              defaultVal: 'true',
              desc: '点击背景 Mask 遮罩是否自动关闭',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        ComponentDocCard(
          theme: theme,
          name: 'FluentSnackbar / FluentBanner',
          description:
              '支持平滑展开/折叠动画、Accessory Buttons、LeadingIcon 与全量 Action 按键。',
          demo: Column(
            children: [
              FluentBanner(
                text: '正在同步本地 1 个大文件',
                message: '建议在 Wi-Fi 网络下使用 Fluent 2 云服务',
                leadingIcon: const Icon(FluentIcons.info),
                actionButtonText: '查看进度',
                actionButtonOnClick: () => _log('点击了 Banner Action 按钮'),
              ),
              const SizedBox(height: 10.0),
              FluentBanner(
                text: '发现 Fluent 2 视觉库最新控件版本',
                accessoryTextButton1: '稍后提醒',
                accessoryTextButton1OnClick: () =>
                    _log('点击了 Accessory 1 (稍后提醒)'),
                accessoryTextButton2: '立即更新',
                accessoryTextButton2OnClick: () =>
                    _log('点击了 Accessory 2 (立即更新)'),
              ),
              const SizedBox(height: 16.0),
              Wrap(
                spacing: 8.0,
                runSpacing: 8.0,
                alignment: WrapAlignment.center,
                children: [
                  ElevatedButton.icon(
                    icon: const Icon(Icons.notifications_active),
                    label: const Text('Show Animated Toast'),
                    onPressed: () {
                      showFluentSnackbarToast(
                        context: context,
                        title: '发送成功',
                        message: '邮件投递成功',
                        subTitle: '已包含附件资源文件',
                        leadingIcon: const Icon(Icons.email_outlined),
                        actionText: '查看详情',
                        enableDismiss: true,
                        enableSwipeToDismiss: true,
                        style: FluentSnackbarStyle.accent,
                        duration: FluentSnackbarDuration.long,
                        onResult: (res) => _log('Snackbar 交互结果: $res'),
                      );
                    },
                  ),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.warning_amber),
                    label: const Text('Warning Toast'),
                    onPressed: () {
                      showFluentSnackbarToast(
                        context: context,
                        message: '网络连通性受限，部分功能可能不可用',
                        style: FluentSnackbarStyle.warning,
                        enableDismiss: true,
                        duration: FluentSnackbarDuration.short,
                        onResult: (res) => _log('Warning Toast 结果: $res'),
                      );
                    },
                  ),
                  OutlinedButton.icon(
                    icon: const Icon(Icons.error_outline),
                    label: const Text('Danger Toast'),
                    onPressed: () {
                      showFluentSnackbarToast(
                        context: context,
                        message: '文件已被彻底删除',
                        style: FluentSnackbarStyle.danger,
                        actionText: '撤销',
                        duration: FluentSnackbarDuration.indefinite,
                        enableDismiss: true,
                        onResult: (res) => _log('Danger Toast 结果: $res'),
                      );
                    },
                  ),
                ],
              ),
            ],
          ),
          codeSnippet: '''// 弹出包含 PopUp 上弹动画与 Swipe-To-Dismiss 横向划出隐藏的 Toast
showFluentSnackbarToast(
  context: context,
  title: '发送成功',
  message: '邮件投递成功',
  subTitle: '包含附件资源',
  leadingIcon: const Icon(Icons.email),
  actionText: '查看',
  enableDismiss: true,
  enableSwipeToDismiss: true, // 开启横向手势划出
  style: FluentSnackbarStyle.accent, // neutral, contrast, accent, warning, danger
  duration: FluentSnackbarDuration.long, // short (4s), long (10s), indefinite
  onResult: (result) => print('Result: \$result'),
);''',
          params: const [
            ApiParam(
              name: 'message',
              type: 'String',
              defaultVal: '必填',
              desc: '主要消息正文',
            ),
            ApiParam(
              name: 'subTitle',
              type: 'String?',
              defaultVal: 'null',
              desc: '第二行/第三行辅助文本',
            ),
            ApiParam(
              name: 'style',
              type: 'FluentSnackbarStyle',
              defaultVal: 'neutral',
              desc: 'neutral, contrast, accent, warning, danger',
            ),
            ApiParam(
              name: 'enableDismiss',
              type: 'bool',
              defaultVal: 'false',
              desc: '右侧 X 独立关闭按钮',
            ),
            ApiParam(
              name: 'dismissFluentSnackbar',
              type: 'Function',
              defaultVal: 'API',
              desc: '主动关闭/隐藏当前 Snackbar',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        //  FluentCardNudge
        ComponentDocCard(
          theme: theme,
          name: 'FluentCardNudge',
          description: '微软带有操作与撤销功能的 CardNudge 通知卡片。',
          demo: FluentCardNudge(
            title: '更新通知',
            message: '发现 Fluent 2 视觉库最新组件可供使用。',
            accentText: 'NEW',
            icon: const Icon(Icons.tips_and_updates_outlined),
            actionText: '立即更新',
            onActionTap: () => _log('点击了 CardNudge 动作'),
            onDismiss: () => _log('点击了 CardNudge 关闭'),
          ),
          codeSnippet: '''FluentCardNudge(
  title: '更新通知',
  message: '最新组件可供更新使用',
  accentText: 'NEW',
  actionText: '更新',
  onActionTap: () => print('Update'),
  onDismiss: () => print('Dismiss'),
);''',
          params: const [
            ApiParam(
              name: 'title',
              type: 'String',
              defaultVal: '必填',
              desc: '主标题',
            ),
            ApiParam(
              name: 'message',
              type: 'String',
              defaultVal: '必填',
              desc: '正文消息描述',
            ),
            ApiParam(
              name: 'accentText',
              type: 'String?',
              defaultVal: 'null',
              desc: '突出显示的高亮 Chip 文本',
            ),
            ApiParam(
              name: 'onDismiss',
              type: 'VoidCallback?',
              defaultVal: 'null',
              desc: '右侧关闭按键回调',
            ),
          ],
        ),
      ],
    );
  }

  // 6. 人员与微光 Page
  Widget _buildPersonasAndTransientsPage(Fluent2ThemeData theme) {
    return Column(
      children: [
        ComponentDocCard(
          theme: theme,
          name: 'FluentAvatar / FluentAvatarGroup',
          description: '头像、Presence 在线状态圆点与重叠堆叠组。',
          demo: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: const [
                  FluentAvatar(
                    name: 'Satya Nadella',
                    presence: FluentPresence.available,
                    hasRing: true,
                  ),
                  FluentAvatar(name: 'Amy Hood', presence: FluentPresence.busy),
                  FluentAvatar(
                    name: 'Panos Panay',
                    presence: FluentPresence.away,
                  ),
                  FluentAvatar(
                    name: 'Bill Gates',
                    presence: FluentPresence.offline,
                  ),
                ],
              ),
              const SizedBox(height: 12.0),
              const FluentAvatarGroup(
                avatars: [
                  FluentAvatar(name: 'User A'),
                  FluentAvatar(name: 'User B'),
                  FluentAvatar(name: 'User C'),
                  FluentAvatar(name: 'User D'),
                  FluentAvatar(name: 'User E'),
                ],
                maxVisible: 3,
              ),
            ],
          ),
          codeSnippet: '''FluentAvatar(
  name: 'Satya Nadella',
  size: FluentAvatarSize.size40,
  presence: FluentPresence.available, // available, busy, away, dnd, offline
  hasRing: true,
);''',
          params: const [
            ApiParam(
              name: 'name',
              type: 'String?',
              defaultVal: 'null',
              desc: '自动提取 Initials 首字母与哈希专属色彩',
            ),
            ApiParam(
              name: 'presence',
              type: 'FluentPresence',
              defaultVal: 'none',
              desc: '在线/忙碌/离开/离线状态指示器',
            ),
            ApiParam(
              name: 'hasRing',
              type: 'bool',
              defaultVal: 'false',
              desc: '外层是否有高亮蓝色圆环包裹',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        ComponentDocCard(
          theme: theme,
          name: 'FluentProgressIndicator / FluentShimmer',
          description: '进度条与 1500ms 自然平滑扫光骨架屏。',
          demo: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Row(
                children: [
                  FluentCircularProgressIndicator(size: 28.0),
                  SizedBox(width: 16.0),
                  Expanded(child: FluentLinearProgressIndicator(value: 0.65)),
                ],
              ),
              SizedBox(height: 12.0),
              FluentShimmer(height: 18.0, width: 220.0),
              SizedBox(height: 6.0),
              FluentShimmer(height: 14.0, width: 140.0),
            ],
          ),
          codeSnippet: '''FluentShimmer(
  height: 18.0,
  width: 220.0,
  durationMs: 1500,
);''',
          params: const [
            ApiParam(
              name: 'height',
              type: 'double',
              defaultVal: '16.0',
              desc: '骨架图高度',
            ),
            ApiParam(
              name: 'durationMs',
              type: 'int',
              defaultVal: '1500',
              desc: '扫光一次时长毫秒',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        //  FluentAvatarCarousel / FluentAcrylic
        ComponentDocCard(
          theme: theme,
          name: 'FluentAvatarCarousel / FluentAcrylic (V2)',
          description: '微软 人员轮播选择器与亚克力磨砂玻璃面板。',
          demo: Column(
            children: [
              FluentAvatarCarousel(
                items: [
                  FluentAvatarCarouselItem(
                    name: 'Satya',
                    presence: FluentPresence.available,
                    onTap: () => _log('选了 Satya'),
                  ),
                  FluentAvatarCarouselItem(
                    name: 'Amy',
                    presence: FluentPresence.busy,
                    onTap: () => _log('选了 Amy'),
                  ),
                  FluentAvatarCarouselItem(
                    name: 'Panos',
                    presence: FluentPresence.away,
                    onTap: () => _log('选了 Panos'),
                  ),
                  FluentAvatarCarouselItem(
                    name: 'Bill',
                    presence: FluentPresence.offline,
                    onTap: () => _log('选了 Bill'),
                  ),
                  FluentAvatarCarouselItem(
                    name: 'Brad',
                    presence: FluentPresence.available,
                    onTap: () => _log('选了 Brad'),
                  ),
                ],
                onSelected: (idx) => _log('轮播选择项: $idx'),
              ),
              const SizedBox(height: 12.0),
              FluentAcrylic(
                padding: const EdgeInsets.all(12.0),
                child: Row(
                  children: const [
                    Icon(Icons.blur_on, color: Colors.blue),
                    SizedBox(width: 8.0),
                    Expanded(child: Text('Fluent 2 亚克力磨砂玻璃 (AcrylicPane)')),
                  ],
                ),
              ),
            ],
          ),
          codeSnippet: '''FluentAvatarCarousel(
  items: [
    FluentAvatarCarouselItem(name: 'Satya', presence: FluentPresence.available),
    FluentAvatarCarouselItem(name: 'Amy', presence: FluentPresence.busy),
  ],
  onSelected: (index) => print(index),
);

FluentAcrylic(
  blur: 12.0,
  child: const Text('Acrylic Content'),
);''',
          params: const [
            ApiParam(
              name: 'items',
              type: 'List',
              defaultVal: '必填',
              desc: '轮播成员数据配置项',
            ),
            ApiParam(
              name: 'blur',
              type: 'double',
              defaultVal: '12.0',
              desc: '亚克力 BackdropFilter 模糊度',
            ),
          ],
        ),
      ],
    );
  }

  // 7. 日历与图标 Page
  Widget _buildCalendarAndIconsPage(Fluent2ThemeData theme) {
    return Column(
      children: [
        ComponentDocCard(
          theme: theme,
          name: 'FluentCalendarView',
          description: '年月标头切换与 Grid 日期选择器。',
          demo: FluentCalendarView(
            selectedDate: _selectedCalendarDate,
            onDateSelected: (date) {
              setState(() => _selectedCalendarDate = date);
              _log('选择日期: ${date.toString().substring(0, 10)}');
            },
          ),
          codeSnippet: '''FluentCalendarView(
  selectedDate: DateTime.now(),
  onDateSelected: (date) => print(date),
);''',
          params: const [
            ApiParam(
              name: 'selectedDate',
              type: 'DateTime?',
              defaultVal: 'null',
              desc: '初始默认选中的日期',
            ),
            ApiParam(
              name: 'onDateSelected',
              type: 'ValueChanged<DateTime>?',
              defaultVal: 'null',
              desc: '日期选中改变回调',
            ),
          ],
        ),
        const SizedBox(height: 16.0),

        ComponentDocCard(
          theme: theme,
          name: 'FluentIcons',
          description: 'Fluent 2 系统图标映射字典。',
          demo: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: const [
              Icon(FluentIcons.search),
              Icon(FluentIcons.share),
              Icon(FluentIcons.settings),
              Icon(FluentIcons.info),
              Icon(FluentIcons.warning),
              Icon(FluentIcons.success),
            ],
          ),
          codeSnippet: '''Icon(FluentIcons.search);
Icon(FluentIcons.success);''',
          params: const [
            ApiParam(
              name: 'icon',
              type: 'IconData',
              defaultVal: '必填',
              desc: '常用基础图标常量字典',
            ),
          ],
        ),
      ],
    );
  }

  // 弹窗与日志底栏
  void _openConfirmDialog(BuildContext context, {FluentDialogButtonType buttonType = FluentDialogButtonType.textButton}) {
    showFluentDialog(
      context: context,
      title: '确认提交配置？',
      message: '提交后当前选项将即时生效应用。',
      buttonType: buttonType,
      secondaryButtonText: '取消',
      onSecondaryPressed: () => Navigator.pop(context),
      primaryButtonText: '确定提交',
      onPrimaryPressed: () {
        Navigator.pop(context);
        _log('Dialog 确认提交');
      },
    );
  }

  void _openBottomSheet(BuildContext context) {
    showFluentBottomSheet(
      context: context,
      title: '快捷操作列表',
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          FluentListItem(
            title: '分享组件表配置',
            leading: const Icon(Icons.share),
            onTap: () {
              Navigator.pop(context);
              _log('点击分享');
            },
          ),
          FluentListItem(
            title: '导出为 PDF 格式文档',
            leading: const Icon(Icons.picture_as_pdf_outlined),
            showDivider: false,
            onTap: () {
              Navigator.pop(context);
              _log('点击导出');
            },
          ),
        ],
      ),
    );
  }

  void _openDrawer(BuildContext context) {
    showFluentDrawer(
      context: context,
      position: FluentDrawerPosition.left,
      child: Column(
        children: [
          const SizedBox(height: 20.0),
          const ListTile(
            leading: CircleAvatar(child: Text('A')),
            title: Text('Ari-Hiroko'),
            subtitle: Text('poriel-05@outlook.com'),
          ),
          const Divider(),
          FluentListItem(
            title: '全景交互组件表',
            leading: const Icon(Icons.grid_view),
            onTap: () => Navigator.pop(context),
          ),
          FluentListItem(
            title: '语言与主题',
            leading: const Icon(Icons.settings_outlined),
            showDivider: false,
            onTap: () => Navigator.pop(context),
          ),
        ],
      ),
    );
  }

  void _showLogBottomSheet(BuildContext context) {
    showFluentBottomSheet(
      context: context,
      title: '实时交互记录 (Log)',
      child: Container(
        height: 200,
        padding: const EdgeInsets.all(8.0),
        child: _logs.isEmpty
            ? const Center(child: Text('暂无操作日志'))
            : ListView.builder(
                itemCount: _logs.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(vertical: 2.0),
                    child: Text(
                      _logs[index],
                      style: const TextStyle(
                        fontSize: 12.0,
                        fontFamily: 'monospace',
                      ),
                    ),
                  );
                },
              ),
      ),
    );
  }
}

/// 简单参数定义模型 [ApiParam]
class ApiParam {
  final String name;
  final String type;
  final String defaultVal;
  final String desc;

  const ApiParam({
    required this.name,
    required this.type,
    required this.defaultVal,
    required this.desc,
  });
}

/// 美观高颜值组件文档卡片 [ComponentDocCard]
class ComponentDocCard extends StatefulWidget {
  final Fluent2ThemeData theme;
  final String name;
  final String description;
  final Widget demo;
  final String codeSnippet;
  final List<ApiParam> params;

  const ComponentDocCard({
    super.key,
    required this.theme,
    required this.name,
    required this.description,
    required this.demo,
    required this.codeSnippet,
    required this.params,
  });

  @override
  State<ComponentDocCard> createState() => _ComponentDocCardState();
}

class _ComponentDocCardState extends State<ComponentDocCard> {
  int _activeTabIndex = 0;

  @override
  Widget build(BuildContext context) {
    final isDark = widget.theme.brightness == Brightness.dark;

    return Container(
      decoration: BoxDecoration(
        color: widget.theme.backgroundColor,
        borderRadius: BorderRadius.circular(12.0),
        border: Border.all(
          color: widget.theme.dividerColor.withAlpha(isDark ? 100 : 200),
          width: 1.0,
        ),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withAlpha(isDark ? 40 : 10),
            blurRadius: 10.0,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Flexible(
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10.0,
                      vertical: 4.0,
                    ),
                    decoration: BoxDecoration(
                      color: widget.theme.primaryColor.withAlpha(
                        isDark ? 50 : 20,
                      ),
                      borderRadius: BorderRadius.circular(6.0),
                      border: Border.all(
                        color: widget.theme.primaryColor.withAlpha(80),
                        width: 1.0,
                      ),
                    ),
                    child: Text(
                      widget.name,
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.bold,
                        color: widget.theme.primaryColor,
                      ),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 8.0),
            Text(
              widget.description,
              style: TextStyle(
                fontSize: 13.0,
                color: widget.theme.foregroundSecondaryColor,
              ),
            ),
            const SizedBox(height: 14.0),

            Container(
              height: 36.0,
              padding: const EdgeInsets.all(2.0),
              decoration: BoxDecoration(
                color: isDark
                    ? const Color(0xFF282828)
                    : const Color(0xFFEFEFEF),
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Row(
                children: [
                  _buildTabOption(0, '演示'),
                  _buildTabOption(1, 'API'),
                  _buildTabOption(2, '示例'),
                ],
              ),
            ),
            const SizedBox(height: 14.0),

            if (_activeTabIndex == 0)
              Container(
                width: double.infinity,
                padding: const EdgeInsets.all(16.0),
                decoration: BoxDecoration(
                  color: isDark
                      ? const Color(0xFF242424)
                      : const Color(0xFFFAFAFA),
                  borderRadius: BorderRadius.circular(8.0),
                  border: Border.all(
                    color: widget.theme.dividerColor.withAlpha(120),
                  ),
                ),
                child: widget.demo,
              )
            else if (_activeTabIndex == 1)
              ClipRRect(
                borderRadius: BorderRadius.circular(8.0),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: widget.theme.dividerColor),
                  ),
                  child: Table(
                    columnWidths: const {
                      0: FlexColumnWidth(2.0),
                      1: FlexColumnWidth(2.0),
                      2: FlexColumnWidth(1.5),
                      3: FlexColumnWidth(3.0),
                    },
                    children: [
                      TableRow(
                        decoration: BoxDecoration(
                          color: widget.theme.primaryColor.withAlpha(
                            isDark ? 40 : 20,
                          ),
                        ),
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '参数名',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '类型',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '默认值',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              '描述说明',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ],
                      ),
                      ...List.generate(widget.params.length, (idx) {
                        final p = widget.params[idx];
                        final isEven = idx % 2 == 0;
                        return TableRow(
                          decoration: BoxDecoration(
                            color: isEven
                                ? (isDark
                                      ? const Color(0xFF1E1E1E)
                                      : Colors.white)
                                : (isDark
                                      ? const Color(0xFF262626)
                                      : const Color(0xFFF9F9F9)),
                          ),
                          children: [
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                p.name,
                                style: const TextStyle(
                                  fontSize: 11.0,
                                  fontFamily: 'monospace',
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                p.type,
                                style: const TextStyle(
                                  fontSize: 11.0,
                                  color: Color(0xFF0078D4),
                                ),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                p.defaultVal,
                                style: const TextStyle(fontSize: 11.0),
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                p.desc,
                                style: const TextStyle(fontSize: 11.0),
                              ),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              )
            else
              Container(
                width: double.infinity,
                decoration: BoxDecoration(
                  color: const Color(0xFF1E1E1E),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 12.0,
                        vertical: 6.0,
                      ),
                      decoration: const BoxDecoration(
                        color: Color(0xFF2D2D2D),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8.0),
                          topRight: Radius.circular(8.0),
                        ),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: const [
                          Text(
                            'Dart',
                            style: TextStyle(
                              fontSize: 11.0,
                              color: Color(0xFFAAAAAA),
                              fontFamily: 'monospace',
                            ),
                          ),
                          Icon(
                            Icons.code,
                            size: 14.0,
                            color: Color(0xFF888888),
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        widget.codeSnippet,
                        style: const TextStyle(
                          fontFamily: 'monospace',
                          fontSize: 12.0,
                          height: 1.4,
                          color: Color(0xFF80CBC4),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }

  Widget _buildTabOption(int index, String label) {
    final isSelected = index == _activeTabIndex;
    final theme = widget.theme;

    return Expanded(
      child: GestureDetector(
        onTap: () => setState(() => _activeTabIndex = index),
        child: MouseRegion(
          cursor: SystemMouseCursors.click,
          child: AnimatedContainer(
            duration: const Duration(milliseconds: 150),
            alignment: Alignment.center,
            decoration: BoxDecoration(
              color: isSelected ? theme.primaryColor : Colors.transparent,
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: Text(
              label,
              style: TextStyle(
                fontSize: 12.0,
                fontWeight: isSelected ? FontWeight.bold : FontWeight.w500,
                color: isSelected ? Colors.white : theme.foregroundColor,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
