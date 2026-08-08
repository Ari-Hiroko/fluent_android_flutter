import 'package:fluent2_android/fluent2_android.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FluentSideRail renders compact mode items and callbacks', (
    WidgetTester tester,
  ) async {
    int? selectedIdx;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FluentSideRail(
            selectedIndex: selectedIdx,
            onDestinationSelected: (index) {
              selectedIdx = index;
            },
            topItems: const [
              FluentSideRailItem(
                title: 'Home',
                icon: Icon(Icons.home),
              ),
              FluentSideRailItem(
                title: 'Search',
                icon: Icon(Icons.search),
              ),
            ],
            bottomItems: const [
              FluentSideRailItem(
                title: 'Settings',
                icon: Icon(Icons.settings),
              ),
            ],
          ),
        ),
      ),
    );

    expect(find.text('Home'), findsOneWidget);
    expect(find.text('Search'), findsOneWidget);
    expect(find.text('Settings'), findsOneWidget);

    await tester.tap(find.text('Search'));
    await tester.pumpAndSettle();

    expect(selectedIdx, 1);

    await tester.tap(find.text('Settings'));
    await tester.pumpAndSettle();

    expect(selectedIdx, 2);
  });

  testWidgets('FluentSideRail renders expanded mode correctly', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FluentSideRail(
            isExpanded: true,
            expandedWidth: 260.0,
            topItems: [
              FluentSideRailItem(
                title: 'Dashboard',
                icon: Icon(Icons.dashboard),
                badgeText: '5',
              ),
            ],
          ),
        ),
      ),
    );

    expect(find.text('Dashboard'), findsOneWidget);
    expect(find.text('5'), findsOneWidget);
  });

  testWidgets('FluentSideRail disabled item does not trigger tap', (
    WidgetTester tester,
  ) async {
    bool tapped = false;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FluentSideRail(
            topItems: [
              FluentSideRailItem(
                title: 'Disabled Item',
                icon: const Icon(Icons.block),
                enabled: false,
                onTap: () {
                  tapped = true;
                },
              ),
            ],
          ),
        ),
      ),
    );

    await tester.tap(find.text('Disabled Item'));
    await tester.pumpAndSettle();

    expect(tapped, false);
  });
}
