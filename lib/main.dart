import 'package:flutter/material.dart';
import 'package:fluent_2_flutter/fluent_2_flutter.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  bool _menuIsOpened = false;
  int _tabIndex = 0;
  late final AnimationController _controller = AnimationController(
    vsync: this,
    duration: const Duration(milliseconds: 300),
  );

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  Widget _buildHomeContent(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(8.0),
      child: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FluentCard.Announcement(
              // style: FluentCardStyle(shadow: FluentShadow.shadow16(context)),
              selectable: true,
              opacity: 0.8,
              title: '飞八分钱',
              description: '大家好啊，我是公告喵，今天来点大家想看的东西',
            ),
            const SizedBox(height: 10),
            FluentCard.Text(
              opacity: 0.8,
              expandable: false,
              title: 'BIG 天皇 IS WATCHING YOU',
              child: Center(
                child: Container(
                  height: 75,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: Image.asset('assets/sun.jpg').image,
                      alignment: const AlignmentGeometry.xy(0, -0.2),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            FluentCard.Text(
              expandable: false,
              opacity: 0.8,
              title: '按钮测试',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('我测你们按钮'),
                  Row(
                    children: [
                      FluentButton.danger(
                        text: '飞八',
                        onPressed: () {
                          showFluentStackableSnackbarToast(
                            offset: const Offset(0, -50),
                            context: context,
                            title: '危险动作',
                            message: '飞八惊坐起了',
                            style: FluentSnackbarStyle.danger,
                          );
                        },
                      ),
                      const SizedBox(width: 10),
                      FluentButton.primary(
                        text: '哦对了',
                        onPressed: () {
                          showFluentStackableSnackbarToast(
                            offset: const Offset(0, -50),

                            context: context,
                            title: '哦对了，',
                            message: '你妈妈一定不好',
                          );
                        },
                      ),
                    ],
                  ),
                  // FluentPopupMenuButton(
                  //   itemBuilder: (BuildContext context) {
                  //     return [
                  //       FluentPopupMenuItem(title: 'a'),
                  //       FluentPopupMenuItem(title: 'a'),
                  //     ];
                  //   },
                  // ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            FluentCard.Text(
              expandable: false,
              opacity: 0.8,
              title: '按钮测试',
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('飞八分钱干飞马，干得飞马笑哈哈'),
                  FluentTextButton(
                    text: '飞八分钱',
                    onPressed: () {
                      showFluentSnackbarToast(
                        context: context,
                        title: '笑哈哈！',
                        message: '干飞马成功',
                        subTitle: '飞八分钱干飞马，干得飞马笑哈哈',
                        leadingIcon: const Icon(Icons.face_2),
                        actionText: '把碧玺',
                        enableDismiss: true,
                        style: FluentSnackbarStyle.accent,
                        duration: FluentSnackbarDuration.long,
                        offset: const Offset(0, -50),
                      );
                    },
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            FluentCard.Text(
              showDivider: true,
              opacity: 0.7,
              expandable: false,
              title: '大家好啊',
              child: Column(
                children: [
                  const FluentTextField(
                    // expands: true,
                    hintText: 'hello (FluentTextField)',
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(height: 8),
                  const FluentTextField.password(
                    hintText: '输入密码',
                    backgroundColor: Colors.transparent,
                  ),
                  const SizedBox(height: 8),
                  FluentTextField.number(
                    hintText: '数值 (带 +/- 步进)',
                    backgroundColor: Colors.transparent,
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            FluentCard.Text(
              opacity: 0.7,
              title: '咦？',
              subtitle: '这都有火箭收的',
              leadingIcon: const Icon(Icons.auto_fix_normal),
              // initiallyExpanded: true,
              showDivider: true,
              richText: const TextSpan(
                text: '飞八分钱干飞马，干得飞马笑哈哈\n',
                style: TextStyle(fontSize: 14),
                children: [
                  TextSpan(text: '哦对了\n'),
                  TextSpan(text: '哦对了'),
                ],
              ),
            ),
            const SizedBox(height: 12),
            // FluentInkWell 特效展示卡片
            FluentMaterial(
              color: Colors.white38,
              borderRadius: BorderRadius.circular(8.0),
              child: FluentInkWell(
                borderRadius: BorderRadius.circular(8.0),
                onTap: () {},
                child: Container(
                  padding: const EdgeInsets.all(16.0),
                  decoration: BoxDecoration(
                    // color: const Color(0xFFF3F3F3),
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                  child: const Row(
                    children: [
                      Icon(Icons.touch_app, color: Color(0xFF0078D4)),
                      SizedBox(width: 12),
                      Text(
                        'FluentInkWell',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return FluentTheme(
      themeData: FluentThemeData.fromSeed(
        seedColor: const Color.fromARGB(255, 215, 82, 131),
      ),
      child: MaterialApp(
        title: "Fluent 2 Android",
        debugShowCheckedModeBanner: false,
        home: Builder(
          builder: (context) => Scaffold(
            backgroundColor: Colors.white,
            appBar: FluentTopAppBar(
              leftActions: [
                FluentTooltip(
                  message: '菜单',
                  child: IconButton(
                    onPressed: () {
                      showFluentDrawer(
                        context: context,
                        child: const FluentSideRail(
                          topItems: [
                            FluentSideRailItem(
                              title: '导航 1',
                              icon: Icon(Icons.navigation),
                            ),
                            FluentSideRailItem(
                              title: '导航 2',
                              icon: Icon(Icons.explore),
                            ),
                          ],
                          bottomItems: [
                            FluentSideRailItem(
                              title: '主页',
                              icon: Icon(Icons.home),
                            ),
                          ],
                        ),
                      );
                      setState(() {
                        _menuIsOpened = !_menuIsOpened;
                        if (_menuIsOpened) {
                          _controller.forward();
                        } else {
                          _controller.reverse();
                        }
                      });
                    },
                    icon: AnimatedIcon(
                      icon: AnimatedIcons.menu_close,
                      progress: _controller,
                    ),
                    mouseCursor: SystemMouseCursors.click,
                  ),
                ),
              ],
              rightActions: [
                FluentTooltip(
                  message: '导航',
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _tabIndex = 0;
                      });
                    },
                    icon: const Icon(Icons.navigation),
                    mouseCursor: SystemMouseCursors.click,
                  ),
                ),
                FluentTooltip(
                  message: '设置',
                  child: IconButton(
                    onPressed: () {
                      setState(() {
                        _tabIndex = 1;
                      });
                    },
                    icon: const Icon(Icons.settings),
                    mouseCursor: SystemMouseCursors.click,
                  ),
                ),
              ],
              elevation: 5,
              style: FluentStyle.brand,
              title: _tabIndex == 0 ? '测试软件' : '软件设置',
              subTitle: _tabIndex == 0 ? '这是一个副标题' : '这是一个假的设置',
              titleAlignment: TitleAlignment.left,
            ),
            body: Container(
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: Image.asset('assets/sun.jpg').image,
                  fit: BoxFit.cover,
                ),
              ),
              child: FluentAcrylic(
                borderRadius: 0,
                blur: 10.0,
                opacity: 0.8,
                child: FluentTabSwitcher(
                  selectedIndex: _tabIndex,
                  onPageChanged: (index) => setState(() {
                    _tabIndex = index;
                  }),
                  children: [_buildHomeContent(context), const _SettingsView()],
                ),
              ),
            ),
            bottomNavigationBar: FluentTabBar(
              tabTextAlignment: FluentTabTextAlignment.vertical,
              selectedIndex: _tabIndex,
              onTabSelected: (index) => setState(() {
                _tabIndex = index;
              }),
              tabs: [
                FluentTabItem(
                  icon: const Icon(Icons.home),
                  title: '飞八分钱',
                  onClick: () => setState(() {
                    _tabIndex = 0;
                  }),
                ),
                FluentTabItem(
                  icon: const Icon(Icons.settings),
                  title: '设置',
                  onClick: () => setState(() {
                    _tabIndex = 1;
                  }),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

/// 精美 Fluent 2 风格设置屏幕 Widget [_SettingsView]
class _SettingsView extends StatefulWidget {
  const _SettingsView();

  @override
  State<_SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<_SettingsView> {
  bool _darkMode = false;
  bool _notifications = true;
  bool _acrylicEffect = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // 个人 Profile 账户卡片
          FluentCard(
            style: const FluentCardStyle(opacity: 0.7),
            child: Row(
              children: [
                const FluentAvatar(
                  presence: FluentPresence.available,
                  name: '孙',
                  size: FluentAvatarSize.size56,
                  image: AssetImage('assets/sun.jpg'),
                ),
                const SizedBox(width: 14.0),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text(
                        '孙笑川',
                        style: TextStyle(
                          fontSize: 16.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 2.0),
                      Text(
                        'SunXiaoChuan258@nm.sl',
                        style: TextStyle(fontSize: 13.0, color: Colors.black54),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // 通用与外观设置卡片
          FluentCard(
            style: const FluentCardStyle(opacity: 0.7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '通用与外观',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                FluentList(
                  children: [
                    FluentListItem(
                      title: '暗黑模式',
                      subTitle: '开启沉浸深色主题界面',
                      leading: const Icon(Icons.dark_mode_outlined),
                      borderRadius: BorderRadius.circular(8.0),
                      onClick: () {
                        setState(() => _darkMode = !_darkMode);
                      },
                      trailing: FluentToggleSwitch(
                        value: _darkMode,
                        onChanged: (v) => setState(() => _darkMode = v),
                      ),
                    ),
                    FluentListItem(
                      title: '亚克力磨砂效果',
                      subTitle: '启用流畅 UI Acrylic 材质背景',
                      leading: const Icon(Icons.blur_on),
                      borderRadius: BorderRadius.circular(8.0),
                      trailing: FluentToggleSwitch(
                        value: _acrylicEffect,
                        onChanged: (v) => setState(() => _acrylicEffect = v),
                      ),
                    ),
                    FluentListItem(
                      title: '实时消息通知',
                      subTitle: '允许后台推送 Toast 消息通知',
                      leading: const Icon(Icons.notifications_none),
                      borderRadius: BorderRadius.circular(8.0),
                      trailing: FluentToggleSwitch(
                        value: _notifications,
                        onChanged: (v) => setState(() => _notifications = v),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 10),

          // 关于与系统维护卡片
          FluentCard(
            style: const FluentCardStyle(opacity: 0.7),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  '关于软件',
                  style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8.0),
                FluentListItem(
                  title: '检查软件更新',
                  subTitle: '当前版本 v1.1.4-build.514',
                  leading: const Icon(Icons.system_update_alt),
                  onTap: () {
                    showFluentSnackbarToast(
                      offset: Offset(0, -50),
                      context: context,
                      title: '检查更新',
                      message: '当前已是最新版本 v1.1.4',
                      leadingIcon: const Icon(Icons.check_circle_outline),
                      style: FluentSnackbarStyle.accent,
                    );
                  },
                ),
                const Divider(height: 1.0),
                FluentListItem(
                  title: '清除系统缓存',
                  subTitle: '已占用 51.4 MB 临时资源',
                  leading: const Icon(Icons.cleaning_services_outlined),
                  onTap: () {
                    showFluentSnackbarToast(
                      offset: Offset(0, -50),
                      context: context,
                      title: '清理完成',
                      message: '成功清理 0.4 MB 缓存空间',
                      style: FluentSnackbarStyle.neutral,
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
