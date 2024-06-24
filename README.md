
# Flutter Toggle Button Widget

[![License: MIT](https://img.shields.io/badge/Licence-MIT-success.svg)](https://opensource.org/licenses/MIT)

A customizable Flutter widget for creating toggle buttons with various configurations such as button
size, colors, gradients, and text styles.

<table>
  <tr>
    <td align="center">
      <img src="https://github.com/sharmark9931/custom_toggle_button/blob/main/doc/1.png?raw=true" alt="Example 01" width="200" />
      <br />
      Example 01
    </td>
    <td align="center">
      <img src="https://github.com/sharmark9931/custom_toggle_button/blob/main/doc/2.png?raw=true" alt="Example 02" width="200" />
      <br />
      Example 02
    </td>
    <td align="center">
      <img src="https://github.com/sharmark9931/custom_toggle_button/blob/main/doc/3.png?raw=true" alt="Example 03" width="200" />
      <br />
      Example 03
    </td>
  </tr>
  <tr>
    <td align="center">
      <img src="https://github.com/sharmark9931/custom_toggle_button/blob/main/doc/4.png?raw=true" alt="Example 04" width="200" />
      <br />
      Example 04
    </td>
    <td align="center">
      <img src="https://github.com/sharmark9931/custom_toggle_button/blob/main/doc/5.png?raw=true" alt="Example 05" width="200" />
      <br />
      Example 05
    </td>
    <td align="center">
      <img src="https://github.com/sharmark9931/custom_toggle_button/blob/main/doc/6.png?raw=true" alt="Example 06" width="200" />
      <br />
      Example 06
    </td>
  </tr>
</table>

![Example 07](https://github.com/sharmark9931/custom_toggle_button/blob/main/doc/custom_toggle_button.gif?raw=true)

## Features

- **Customizable Design:** Configure button width, height, border radius, colors, gradients, and
  more.
- **Flexible Content:** Supports various types of items including text, numbers, and widgets.
- **Callback Support:** Provides a callback function when a button is tapped, enabling integration
  with other functionalities.

## Getting Started

- [Installation](#installation)
- [Usage](#usage)
- [Parameters](#parameters)
- [Example](#Example)
- [ToDo](#ToDo)
- [License](#License)

## Installation

Add the following line to your `pubspec.yaml` under dependencies:

```yaml
dependencies:
  custom_toggle_button: ^1.0.0 // Replace with latest version
```

## Usage

Import the package into your Dart code:

```yaml
import 'package:custom_toggle_button/flutter_toggle_button.dart';
```

Use the CustomToggleButton widget in your Flutter app:

```dart
FlutterToggleButton(
  items: ['Option 1', 'Option 2', 'Option 3'],
  onTap: (index) {
  print('Selected index: $index');
  },
// Customize other properties as needed
)

```

```dart
FlutterToggleButton(
  outerContainerColor: Colors.grey,
  borderRadius: 60,
  items: const ['Option 1', 'Option 2', 'Option 3],
  buttonGradient: const LinearGradient(
  colors: [Color(0xffcc2b5e), Color(0xff753a88)],
  ),
  onTap: (index) {
  print('Selected index = $index');
  },
// Customize other properties as needed
)
```

### Parameters

| Parameter                 |      	Default       | Value	Description                                                                              |
|:--------------------------|:-------------------:|:-----------------------------------------------------------------------------------------------|
| items                     |      	Required      | 	List of items to display as buttons.                                                          |
| outerContainerMargin      |        	7.87        | 	Margin around the outer container.                                                            |
| buttonWidth               |        	139         | 	Width of each button.                                                                         |
| buttonHeight              |         	68         | 	Height of each button.                                                                        |
| borderRadius              |        	108         | 	Border radius for buttons and outer container.                                                |
| buttonTextFontSize        |         	22         | 	Font size of the button text.                                                                 |
| enableTextFontWeight      |  	FontWeight.w600   | 	Font weight of the text when button is enabled.                                               |
| disableTextFontWeight     |  	FontWeight.w500   | 	Font weight of the text when button is disabled.                                              |
| enableTextColor           |    	Colors.white    | 	Text color when button is enabled.                                                            |
| disableTextColor          | 	Color(0xff7A7A7A)  | 	Text color when button is disabled.                                                           |
| outerContainerColor       |        	None        | 	Solid color for the outer container. Provide either this or outerContainerGradient, not both. |
| buttonColor               |        	None        | 	Solid color for the buttons. Provide either this or buttonGradient, not both.                 |
| outerContainerGradient    |        	None        | 	Gradient for the outer container. Provide either this or outerContainerColor, not both.       |
| buttonGradient            |        	None        | 	Gradient for the buttons. Provide either this or buttonColor, not both.                       |
| outerContainerBorderColor | 	Colors.transparent | 	Border color of the outer container.                                                          |
| outerContainerBorderWidth |         	0          | 	Border width of the outer container.                                                          |
| buttonBorderColor         | 	Colors.transparent | 	Border color of the buttons.                                                                  |
| buttonBorderWidth         |         	0          | 	Border width of the buttons.                                                                  |
| onTap                     |        	None        | 	Callback function when a button is tapped.                                                    |

## Example

```dart
import 'package:flutter/material.dart';
import 'package:flutter_toggle_button/flutter_toggle_button.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Custom Toggle Button Example'),
        ),
        body: Center(
          child: FlutterToggleButton(
            items: ['Option 1', 'Option 2', 'Option 3'],
            onTap: (index) {
              print('Selected index: $index');
            },
            buttonWidth: 120,
            buttonHeight: 50,
            borderRadius: 25,
            buttonTextFontSize: 18,
            enableTextColor: Colors.white,
            disableTextColor: Colors.grey,
            buttonGradient: LinearGradient(
              colors: [Colors.blue, Colors.green],
            ),
          ),
        ),
      ),
    );
  }
}
```
## ToDo

- Add animation as a parameter.
- Add duration for animation as a parameter.

## License

This package is licensed under the MIT License. See the LICENSE file for details.

This **README.md** file serves as a comprehensive guide for users to understand and effectively use
your custom toggle button widget package in their Flutter projects.
