// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter_test/flutter_test.dart';

import 'package:taskmanager/app.dart';

void main() {
  testWidgets('Counter increments smoke test', (WidgetTester tester) async {
    // Build our app and wait for any timers/animations to settle.
    await tester.pumpWidget(const TaskManager());
    // Allow splash delay (3s) to complete in tests.
    await tester.pump(const Duration(seconds: 4));
    await tester.pumpAndSettle();

    // Verify the app builds and the root widget is present.
    expect(find.byType(TaskManager), findsOneWidget);
  });
}
