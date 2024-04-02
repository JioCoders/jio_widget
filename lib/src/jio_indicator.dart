import 'package:flutter/material.dart';
import 'package:jio_widget/jio_widget.dart';

class JioIndicator extends StatelessWidget {
  const JioIndicator({super.key, this.color = kWhiteColor});
  final Color color;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: color,
      ),
    );
  }
}
