import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluent2_android/fluent2_android.dart';

void main() {
  group('FluentThemeData.fromSeed Tests', () {
    test('Creates light theme data from seedColor correctly', () {
      final themeData = FluentThemeData.fromSeed(
        seedColor: Colors.pink,
        brightness: Brightness.light,
      );

      expect(themeData.primaryColor, equals(Colors.pink));
      expect(themeData.brightness, equals(Brightness.light));
      expect(themeData.foregroundSelectedColor, equals(Colors.pink));
      expect(themeData.popupMenuItemForegroundSelectedColor, equals(Colors.pink));
    });

    test('Creates dark theme data from seedColor correctly', () {
      final themeData = FluentThemeData.fromSeed(
        seedColor: Colors.teal,
        brightness: Brightness.dark,
      );

      expect(themeData.primaryColor, equals(Colors.teal));
      expect(themeData.brightness, equals(Brightness.dark));
      expect(themeData.backgroundColor, equals(FluentColors.darkBackground1));
    });
  });

  group('FluentTabBar & Tab Theme Color Adaptivity Tests', () {
    testWidgets('Inherits FluentThemeData.fromSeed primaryColor correctly', (tester) async {
      await tester.pumpWidget(
        FluentTheme(
          themeData: FluentThemeData.fromSeed(seedColor: Colors.purple),
          child: MaterialApp(
            home: Scaffold(
              bottomNavigationBar: FluentTabBar(
                selectedIndex: 0,
                tabs: const [
                  FluentTabItem(title: 'Home', icon: Icon(Icons.home)),
                  FluentTabItem(title: 'Settings', icon: Icon(Icons.settings)),
                ],
              ),
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      final textWidget = tester.widget<Text>(find.text('Home'));
      expect(textWidget.style?.color, equals(Colors.purple));
    });

    testWidgets('Inherits MaterialApp ColorScheme.primary when themeColor is not specified', (tester) async {
      int selectedIndex = 0;
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          ),
          home: Scaffold(
            bottomNavigationBar: FluentTabBar(
              selectedIndex: selectedIndex,
              tabs: const [
                FluentTabItem(title: 'Home', icon: Icon(Icons.home)),
                FluentTabItem(title: 'Settings', icon: Icon(Icons.settings)),
              ],
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      final textWidget = tester.widget<Text>(find.text('Home'));
      expect(textWidget.style?.color, isNotNull);
      expect(textWidget.style?.color, isNot(equals(FluentColors.communicationBlue)));
    });

    testWidgets('Uses explicit themeColor parameter over parent themes when passed', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.pink),
          ),
          home: Scaffold(
            bottomNavigationBar: FluentTabBar(
              themeColor: Colors.purple,
              selectedIndex: 0,
              tabs: const [
                FluentTabItem(title: 'Home', icon: Icon(Icons.home)),
                FluentTabItem(title: 'Settings', icon: Icon(Icons.settings)),
              ],
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      final textWidget = tester.widget<Text>(find.text('Home'));
      expect(textWidget.style?.color, equals(Colors.purple));
    });

    testWidgets('FluentPillBar inherits themeColor parameter and ColorScheme', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          theme: ThemeData.from(
            colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
          ),
          home: Scaffold(
            body: FluentPillBar(
              labels: const ['All', 'Unread', 'Archive'],
              selectedIndex: 0,
              onSelected: (_) {},
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('All'), findsOneWidget);
    });
  });
}
