# jio_widget

A Flutter package for both android and iOS which provides custom widgets

```
published package url - https://pub.dev/packages/jio_widget
```

## Screenshots

<img src="https://github.com/JioCoders/jio_widget/blob/main/example/screenshots/ss1.jpeg?raw=true" height="400em" width="225em" />

<img src="https://raw.githubusercontent.com/JioCoders/jio_widget/main/example/screenshots/ss2.jpeg" height="400em" width="225em" />

## Usage

[Example](https://github.com/JioCoders/jio_widget/blob/main/example/lib/main.dart)

To use this package :

- add the dependency to your [pubspec.yaml](https://github.com/JioCoders/jio_widget/blob/main/pubspec.yaml) file.

```yaml
dependencies:
  flutter:
    sdk: flutter
  jio_widget:
```

### How to use

```dart
class Test extends StatelessWidget {
  const Test({super.key});

  void _handleButtonClick(BuildContext context, String btn) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$btn Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: const Duration(milliseconds: 500),
    ));
    JioAlertbox.showCustomAlertBox(
          context: context, willDisplayWidget: Text('$btn Button Pressed!'));
        if (btn == 'Alert') {
          JioAlertbox.showCustomAlertBox(
            context: context, willDisplayWidget: Text('$btn Button Pressed!'));
        }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          JioButton(
            Buttons.facebook,
            onPressed: () {
              _handleButtonClick(context, 'Facebook');
            },
          ),
        ],
      ),
    );
  }
}

```

### List Of Buttons

- Buttons.google
- Buttons.facebook
- Buttons.microsoft
- Buttons.apple
- Buttons.github
- Buttons.linkedIn
- Buttons.twitter
- Buttons.email
- Buttons.alert
- Buttons.emptywidget

# License

Copyright (c) 2024 Jiocoders

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.

## Getting Started

For help getting started with Flutter, view our online [documentation](https://flutter.io/).

For help on editing package code, view the [documentation](https://flutter.io/developing-packages/).
