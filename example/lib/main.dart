import 'package:flutter/material.dart';
import 'package:jio_widget/jio_widget.dart';

void main() => runApp(const MainApp());

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        iconTheme: const IconThemeData(color: Colors.white),
        hintColor: Colors.red,
      ),
      home: const Test(),
    );
  }
}

class Test extends StatelessWidget {
  const Test({super.key});

  void _handleButtonClick(BuildContext context, String btn) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text('$btn Button Pressed!'),
      backgroundColor: Colors.black26,
      duration: const Duration(milliseconds: 500),
    ));
    if (btn == 'Alert') {
      JioAlertbox.showCustomAlertBox(
          context: context, willDisplayWidget: Text('$btn Button Pressed!'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black54,
      appBar: const JioAppbar(title: 'Home'),
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              JioButton(
                Buttons.google,
                onPressed: () {
                  _handleButtonClick(context, 'Google');
                },
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
              ),
              const SizedBox(height: 10),
              JioButton(
                Buttons.facebook,
                onPressed: () {
                  _handleButtonClick(context, 'Facebook');
                },
              ),
              const SizedBox(height: 10),
              JioButton(
                Buttons.apple,
                onPressed: () {
                  _handleButtonClick(context, 'Apple');
                },
              ),
              const SizedBox(height: 10),
              JioButton(
                Buttons.microsoft,
                onPressed: () {
                  _handleButtonClick(context, 'Microsoft');
                },
              ),
              const SizedBox(height: 10),
              JioButton(
                Buttons.gitHub,
                text: "Sign up with GitHub",
                onPressed: () {
                  _handleButtonClick(context, 'Github');
                },
              ),
              const SizedBox(height: 10),
              JioButton(
                Buttons.twitter,
                text: "Sign In with Twitter",
                onPressed: () {
                  _handleButtonClick(context, 'Twitter');
                },
              ),
              const SizedBox(height: 10),
              JioButton(
                Buttons.alert,
                text: "Click to show Alert!",
                onPressed: () {
                  _handleButtonClick(context, 'Alert');
                },
              ),
              const SizedBox(height: 10),
              JioButton(
                Buttons.emptywidget,
                text: "Click to show Empty Widget",
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => JioEmptyWidget(
                              ontap: () => Navigator.of(context).pop())));
                },
              ),
              const SizedBox(height: 10),
            ],
          ),
        ),
      ),
    );
  }
}
