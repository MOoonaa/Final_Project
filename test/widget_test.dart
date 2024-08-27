import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:smart_car2/main.dart'; // Make sure this path is correct
import 'package:smart_car2/pages/sign_in_page.dart'; // Import your SignInPage if it's in a separate file

void main() {
  testWidgets('Sign In page test', (WidgetTester tester) async {
    // Build the SignInPage widget
    await tester.pumpWidget(MaterialApp(home: SignInPage()));

    // Verify if the text fields and sign-in button are present
    expect(find.byType(TextField), findsNWidgets(2)); // Expect two text fields
    expect(find.byType(ElevatedButton),
        findsOneWidget); // Expect one ElevatedButton
    expect(find.text('Sign In Page'),
        findsOneWidget); // Expect text 'Sign In Page'

    // Enter email and password
    await tester.enterText(find.byType(TextField).first, 'azza@gmail.com');
    await tester.enterText(find.byType(TextField).at(1), '000000');

    // Tap the sign-in button
    await tester.tap(find.byType(ElevatedButton));
    await tester.pump(); // Trigger a frame

    // Here you can verify the expected behavior after sign-in
    // For example, you can check if you are redirected to the dashboard or if an error message appears
  });
}
