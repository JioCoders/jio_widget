import 'package:flutter/material.dart';
import 'package:jio_widget/src/jio_appbar.dart';

class JioEmptyWidget extends StatelessWidget {
  final VoidCallback? ontap;

  final String button;

  final String title;
  final bool clickable;

  const JioEmptyWidget({
    super.key,
    this.title = 'Empty Widget',
    this.button = 'Close',
    this.clickable = true,
    this.ontap,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const JioAppbar(title: 'Appbar'),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 60),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(title,
                    style: const TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.w600,
                        color: Colors.black)),
                const SizedBox(height: 60),
                !clickable
                    ? const SizedBox()
                    : ElevatedButton(
                        onPressed: ontap,
                        style: ButtonStyle(
                          side: MaterialStateProperty.all(BorderSide.none),
                          shape:
                              MaterialStateProperty.all(RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                            side: const BorderSide(
                                color: Colors.transparent, width: 0),
                          )),
                          elevation: MaterialStateProperty.all(12),
                          backgroundColor:
                              MaterialStateProperty.all(Colors.amber),
                          padding: MaterialStateProperty.all(
                              const EdgeInsets.symmetric(
                                  horizontal: 20, vertical: 20)),
                        ),
                        child: Center(
                          child: Text(
                            button,
                            style: const TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w600,
                                color: Colors.black),
                          ),
                        ),
                      )
              ]),
        ),
      ),
    );
  }
}
