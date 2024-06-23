import 'package:flutter_toggle_button/flutter_toggle_button.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Custom Toggle Button Example'),
        ),
        body: Center(
          child: FlutterToggleButton(
            items: const ['Option 1', 'Option 2', 'Option 3'],
            onTap: (index) {
              if (kDebugMode) {
                print('Selected index: $index');
              }
            },
            buttonWidth: 120,
            buttonHeight: 50,
            borderRadius: 25,
            buttonTextFontSize: 18,
            enableTextColor: Colors.white,
            disableTextColor: Colors.grey,
            buttonGradient: const LinearGradient(
              colors: [Colors.blue, Colors.green],
            ),
          ),
        ),
      ),
    );
  }
}
