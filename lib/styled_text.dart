import 'package:flutter/material.dart';

class StyledText extends StatelessWidget {
  final String outputText;
  const StyledText(
    this.outputText, {
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      outputText,
      style: const TextStyle(
        fontSize: 40,
        color: Colors.white60,
      ),
    );
  }
}
