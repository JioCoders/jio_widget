import 'package:flutter/material.dart';

class JioAlertbox {
  static Future showCustomAlertBox({
    required BuildContext context,
    required Widget willDisplayWidget,
  }) {
    return showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(15)),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Title(color: Colors.orange, child: const Text('Alert!')),
                const SizedBox(height: 20),
                willDisplayWidget,
                const SizedBox(height: 20),
                MaterialButton(
                  color: Colors.black87,
                  child: const Text(
                    'Close',
                    style: TextStyle(color: Colors.white),
                  ),
                  onPressed: () {
                    Navigator.of(context).pop();
                  },
                )
              ],
            ),
            elevation: 10,
          );
        });
  }
}
