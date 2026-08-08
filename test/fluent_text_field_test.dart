import 'package:fluent2_android/fluent2_android.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('FluentTextField builds and handles text input', (
    WidgetTester tester,
  ) async {
    String currentText = '';

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FluentTextField(
            label: 'Test Label',
            hintText: 'Enter text...',
            textFieldStyle: FluentTextFieldStyle.outlined,
            onChanged: (val) {
              currentText = val;
            },
          ),
        ),
      ),
    );

    expect(find.text('Test Label'), findsOneWidget);
    expect(find.text('Enter text...'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'Hello Fluent');
    await tester.pumpAndSettle();

    expect(currentText, 'Hello Fluent');
  });

  testWidgets('FluentTextField.password toggles text visibility', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FluentTextField.password(
            label: 'Password',
          ),
        ),
      ),
    );

    final textField = tester.widget<TextField>(find.byType(TextField));
    expect(textField.obscureText, isTrue);

    // Tap toggle visibility icon
    await tester.tap(find.byIcon(Icons.visibility_outlined));
    await tester.pumpAndSettle();

    final textFieldToggled = tester.widget<TextField>(find.byType(TextField));
    expect(textFieldToggled.obscureText, isFalse);
  });

  testWidgets('FluentTextField.number horizontal stepper adds and removes', (
    WidgetTester tester,
  ) async {
    final controller = TextEditingController(text: '10');

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FluentTextField.number(
            controller: controller,
            stepperStyle: FluentNumberStepperStyle.horizontal,
            step: 5,
            minNumber: 0,
            maxNumber: 100,
          ),
        ),
      ),
    );

    expect(controller.text, '10');

    // Tap add_circle_outline button
    await tester.tap(find.byIcon(Icons.add_circle_outline));
    await tester.pumpAndSettle();
    expect(controller.text, '15');

    // Tap remove_circle_outline button
    await tester.tap(find.byIcon(Icons.remove_circle_outline));
    await tester.pumpAndSettle();
    expect(controller.text, '10');
  });

  testWidgets('FluentTextFormField validates inside Form', (
    WidgetTester tester,
  ) async {
    final formKey = GlobalKey<FormState>();

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: Form(
            key: formKey,
            child: Column(
              children: [
                FluentTextFormField(
                  label: 'Email',
                  validator: (val) {
                    if (val == null || !val.contains('@')) {
                      return 'Invalid email';
                    }
                    return null;
                  },
                ),
                ElevatedButton(
                  onPressed: () {
                    formKey.currentState!.validate();
                  },
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );

    await tester.tap(find.text('Submit'));
    await tester.pumpAndSettle();

    expect(find.text('Invalid email'), findsOneWidget);
  });

  testWidgets('FluentTextField handles expands: true without assertion error', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: SizedBox(
            height: 200,
            child: FluentTextField(
              expands: true,
              hintText: 'Expanding text field',
            ),
          ),
        ),
      ),
    );

    expect(find.text('Expanding text field'), findsOneWidget);
  });

  testWidgets('FluentTextField.multiline builds and handles multi-line input', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(
      const MaterialApp(
        home: Scaffold(
          body: FluentTextField.multiline(
            label: 'Multi-line Notes',
            hintText: 'Type multiple lines...',
          ),
        ),
      ),
    );

    expect(find.text('Multi-line Notes'), findsOneWidget);
    expect(find.text('Type multiple lines...'), findsOneWidget);

    await tester.enterText(find.byType(TextField), 'Line 1\nLine 2\nLine 3');
    await tester.pumpAndSettle();

    expect(find.text('Line 1\nLine 2\nLine 3'), findsOneWidget);
  });
}
