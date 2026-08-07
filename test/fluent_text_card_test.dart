import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:fluent2_android/fluent2_android.dart';

void main() {
  group('FluentCard Factory Constructor Tests', () {
    testWidgets('Renders via FluentCard.text constructor', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FluentCard.text(
              title: 'Card Title via FluentCard.text',
              subTitle: 'Card Subtitle',
              text: 'Expanded detail text',
              initiallyExpanded: true,
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('Card Title via FluentCard.text'), findsOneWidget);
      expect(find.text('Expanded detail text'), findsOneWidget);
    });

    testWidgets('Renders via FluentCard.Text static method', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FluentCard.Text(
              title: 'Card Title via FluentCard.Text',
              text: 'Capital Text method content',
              initiallyExpanded: true,
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('Card Title via FluentCard.Text'), findsOneWidget);
      expect(find.text('Capital Text method content'), findsOneWidget);
    });

    testWidgets('Renders file card via FluentCard.file', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FluentCard.file(
              fileName: 'Document.pdf',
              subTitle: '2.5 MB',
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('Document.pdf'), findsOneWidget);
      expect(find.text('2.5 MB'), findsOneWidget);
    });

    testWidgets('Renders announcement card via FluentCard.announcement', (tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FluentCard.announcement(
              title: 'New Update Available',
              description: 'Version 2.0 has been released.',
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('New Update Available'), findsOneWidget);
      expect(find.text('Version 2.0 has been released.'), findsOneWidget);
    });
  });

  group('FluentTextCard Expandable Component Tests', () {
    testWidgets('Renders title and subtitle when collapsed', (tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: Scaffold(
            body: FluentTextCard(
              title: 'Card Title',
              subTitle: 'Card Subtitle',
              text: 'Expandable body text content',
              initiallyExpanded: false,
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();

      expect(find.text('Card Title'), findsOneWidget);
      expect(find.text('Card Subtitle'), findsOneWidget);
      expect(find.text('Expandable body text content'), findsNothing);
    });

    testWidgets('Toggles expand and collapse when header is tapped', (tester) async {
      bool isExpandedState = false;

      await tester.pumpWidget(
        MaterialApp(
          home: Scaffold(
            body: FluentTextCard(
              title: 'Expandable Card Title',
              text: 'Expanded detail content text',
              initiallyExpanded: false,
              onExpandedChanged: (expanded) {
                isExpandedState = expanded;
              },
            ),
          ),
        ),
      );

      await tester.pumpAndSettle();
      expect(find.text('Expanded detail content text'), findsNothing);

      await tester.tap(find.text('Expandable Card Title'));
      await tester.pumpAndSettle();

      expect(isExpandedState, isTrue);
      expect(find.text('Expanded detail content text'), findsOneWidget);

      await tester.tap(find.text('Expandable Card Title'));
      await tester.pumpAndSettle();

      expect(isExpandedState, isFalse);
      expect(find.text('Expanded detail content text'), findsNothing);
    });
  });
}
