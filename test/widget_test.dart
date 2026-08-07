import 'package:flutter_test/flutter_test.dart';
import 'package:fluent2_android/show.dart';

void main() {
  testWidgets('Fluent 2 Demo App loads properly test', (WidgetTester tester) async {
    await tester.pumpWidget(const Fluent2DemoApp());
    expect(find.text('Microsoft Fluent UI 2'), findsOneWidget);
  });
}
