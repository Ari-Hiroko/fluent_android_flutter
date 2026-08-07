import 'package:flutter/material.dart';
import 'fluent2_android.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> with SingleTickerProviderStateMixin {
  bool menuIsOpened = false;
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
      themeData: FluentThemeData.light(),
      child: MaterialApp(
        title: "Fluent 2 Android",
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          appBar: FluentTopAppBar(
            // appBarSize: FluentAppBarSize.small,
            leftActions: [
              FluentTooltip(
                message: '菜单',
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      menuIsOpened = !menuIsOpened;
                      if (menuIsOpened) {
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
            elevation: 5,
            backgroundColor: const Color.fromARGB(255, 215, 82, 131),
            title: '测试软件',
            subTitle: '这是一个副标题',
            titleAlignment: TitleAlignment.left,
            rightActions: [
              FluentTooltip(
                message: '搜索',
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
          ),
          body: const Center(child: Text("Fluent 2 Android")),
        ),
      ),
    );
  }
}
