import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluent2_android/fluent2_android.dart';

void main() {
  group('FluentTopAppBar Custom Color & Adaptive Tests', () {
    testWidgets('Renders FluentTopAppBar with default neutral style',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        FluentTheme(
          themeData: FluentThemeData.light(),
          child: const MaterialApp(
            home: Scaffold(
              appBar: FluentTopAppBar(
                title: 'Test Title',
                subTitle: 'Test Subtitle',
              ),
            ),
          ),
        ),
      );

      expect(find.text('Test Title'), findsOneWidget);
      expect(find.text('Test Subtitle'), findsOneWidget);
    });

    testWidgets('Adapts foreground color automatically for dark background',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        FluentTheme(
          themeData: FluentThemeData.light(),
          child: const MaterialApp(
            home: Scaffold(
              appBar: FluentTopAppBar(
                title: 'Dark Theme Bar',
                backgroundColor: Color(0xFF001F3F), // Dark Navy
              ),
            ),
          ),
        ),
      );

      final textWidget = tester.widget<Text>(find.text('Dark Theme Bar'));
      expect(textWidget.style?.color, equals(FluentColors.white));
    });

    testWidgets('Adapts foreground color automatically for light background',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        FluentTheme(
          themeData: FluentThemeData.light(),
          child: const MaterialApp(
            home: Scaffold(
              appBar: FluentTopAppBar(
                title: 'Light Theme Bar',
                backgroundColor: Color(0xFFFFF0F5), // Light Pink
              ),
            ),
          ),
        ),
      );

      final textWidget = tester.widget<Text>(find.text('Light Theme Bar'));
      expect(textWidget.style?.color, equals(FluentColors.gray900));
    });

    testWidgets('Applies actionsSpacing and centerTitle correctly',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        FluentTheme(
          themeData: FluentThemeData.light(),
          child: MaterialApp(
            home: Scaffold(
              appBar: FluentTopAppBar(
                title: 'Centered Title',
                centerTitle: true,
                actionsSpacing: 16.0,
                rightActions: [
                  IconButton(
                    icon: const Icon(Icons.search),
                    onPressed: () {},
                  ),
                  IconButton(
                    icon: const Icon(Icons.settings),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
        ),
      );

      expect(find.text('Centered Title'), findsOneWidget);
      expect(find.byIcon(Icons.search), findsOneWidget);
      expect(find.byIcon(Icons.settings), findsOneWidget);
      expect(find.byType(SizedBox), findsWidgets);
    });
  });
}
