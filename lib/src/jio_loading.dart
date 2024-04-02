import 'package:flutter/material.dart';

showLoadingDialog(context) {
  return showDialog(
    context: context,
    builder: (context) => const JioLoadingWidget(),
    barrierDismissible: false,
  );
}

hideLoadingDialog(context) => Navigator.of(context).pop();

class JioLoadingWidget extends StatelessWidget {
  const JioLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
        height: 150,
        width: 180,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircularProgressIndicator(color: Colors.white),
            SizedBox(height: 25),
            Text('Processing, please wait ...',
                style:
                    TextStyle(fontWeight: FontWeight.w600, color: Colors.white))
          ],
        ));
  }
}
