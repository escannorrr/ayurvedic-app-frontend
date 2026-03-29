import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:vaidyaai/main.dart';

void main() {
  testWidgets('App starts with Login page', (WidgetTester tester) async {
    // Build our app and trigger a frame.
    await tester.pumpWidget(const MyAppRoot());
    await tester.pumpAndSettle();

    // Verify that the login page is shown.
    // AppBar title
    expect(find.descendant(of: find.byType(AppBar), matching: find.text('Login')), findsOneWidget);
    
    // Login button
    expect(find.descendant(of: find.byType(ElevatedButton), matching: find.text('Login')), findsOneWidget);
    
    expect(find.byType(TextField), findsNWidgets(2));
  });
}
