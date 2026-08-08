import 'package:fluent2_android/fluent2_android.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FluentDrawer renders correctly with custom child', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: FluentDrawer(
          position: FluentDrawerPosition.left,
          width: 300.0,
          child: Text('Drawer Content'),
        ),
      ),
    );

    expect(find.text('Drawer Content'), findsOneWidget);
    expect(find.byType(FluentDrawer), findsOneWidget);
  });

  testWidgets('FluentDrawer renders header, items, and footer', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: FluentDrawer(
          header: Text('Header Text'),
          items: [Text('Item 1'), Text('Item 2')],
          footer: Text('Footer Text'),
        ),
      ),
    );

    expect(find.text('Header Text'), findsOneWidget);
    expect(find.text('Item 1'), findsOneWidget);
    expect(find.text('Item 2'), findsOneWidget);
    expect(find.text('Footer Text'), findsOneWidget);
  });

  testWidgets('showFluentDrawer opens drawer modal and responds to pop', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      MaterialApp(
        home: Builder(
          builder: (context) {
            return Scaffold(
              body: ElevatedButton(
                onPressed: () {
                  showFluentDrawer(
                    context: context,
                    position: FluentDrawerPosition.left,
                    child: const Text('Modal Drawer Content'),
                  );
                },
                child: const Text('Open Drawer'),
              ),
            );
          },
        ),
      ),
    );

    expect(find.text('Modal Drawer Content'), findsNothing);

    await tester.tap(find.text('Open Drawer'));
    await tester.pumpAndSettle();

    expect(find.text('Modal Drawer Content'), findsOneWidget);

    // Tap backdrop / barrier to dismiss
    await tester.tapAt(const Offset(700, 300));
    await tester.pumpAndSettle();

    expect(find.text('Modal Drawer Content'), findsNothing);
  });
}
