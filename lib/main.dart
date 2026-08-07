import 'package:flutter/material.dart';
import 'package:fluent2_android/fluent2_android.dart';

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

  @override
  Widget build(BuildContext context) {
    return FluentTheme(
      themeData: FluentThemeData.fromSeed(
        seedColor: const Color.fromARGB(255, 215, 82, 131),
      ),
      child: MaterialApp(
        title: "Fluent 2 Android",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.white,
          appBar: FluentTopAppBar(
            leftActions: [
              FluentTooltip(
                message: '菜单',
                child: IconButton(
                  onPressed: () {
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
                  onPressed: () {},
                  icon: const Icon(Icons.navigation),
                  mouseCursor: SystemMouseCursors.click,
                ),
              ),
              FluentTooltip(
                message: '设置',
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.settings),
                  mouseCursor: SystemMouseCursors.click,
                ),
              ),
            ],
            elevation: 5,
            style: FluentStyle.brand,
            title: '测试软件',
            subTitle: '这是一个副标题',
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
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.infinity,
                      child: FluentCard.Text(
                        opacity: 0.8,
                        title: '咦？',
                        subTitle: '点击卡片可展开或折叠详细内容',
                        leadingIcon: const Icon(Icons.auto_fix_normal),
                        initiallyExpanded: true,
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
                    ),
                  ],
                ),
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
    );
  }
}
