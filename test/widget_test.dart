import 'package:flutter_test/flutter_test.dart';
import 'package:fluent2_android/main.dart';

void main() {
  testWidgets('Fluent 2 Demo App loads properly test', (WidgetTester tester) async {
    await tester.pumpWidget(const Fluent2DemoApp());
    expect(find.text('Fluent 2 Menus 示例 preview'), findsOneWidget);
  });
}
