import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_toggle_button/flutter_toggle_button.dart';

void main() {
  testWidgets('CustomToggleButton displays items and responds to taps',
      (WidgetTester tester) async {
    final items = ['Option 1', 'Option 2', 'Option 3'];
    int selectedIndex = -1;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FlutterToggleButton(
            items: items,
            onTap: (index) {
              selectedIndex = index;
            },
          ),
        ),
      ),
    );

    // Verify that the items are displayed
    for (var item in items) {
      expect(find.text(item), findsOneWidget);
    }

    // Tap on the second item
    await tester.tap(find.text('Option 2'));
    await tester.pump();

    // Verify that the onTap callback was called with the correct index
    expect(selectedIndex, 1);
  });

  testWidgets('CustomToggleButton applies customizations', (WidgetTester tester) async {
    final items = ['Option A', 'Option B'];
    const double customButtonWidth = 100;
    const double customButtonHeight = 50;
    const double customBorderRadius = 25;
    const Color customButtonColor = Colors.red;

    await tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: FlutterToggleButton(
            items: items,
            buttonWidth: customButtonWidth,
            buttonHeight: customButtonHeight,
            borderRadius: customBorderRadius,
            buttonColor: customButtonColor,
          ),
        ),
      ),
    );

    final button = tester.widget<Container>(find.byType(Container).first);

    // Verify button width and height
    expect(button.constraints?.maxWidth, customButtonWidth);
    expect(button.constraints?.maxHeight, customButtonHeight);

    // Verify button color
    final decoration = button.decoration as BoxDecoration;
    expect(decoration.color, customButtonColor);

    // Verify border radius
    expect(decoration.borderRadius, BorderRadius.circular(customBorderRadius));
  });
}
