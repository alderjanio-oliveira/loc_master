import 'package:flutter/material.dart';

class TwoButtonLine extends StatelessWidget {
  final Widget firstButton;
  final Widget secondButton;

  const TwoButtonLine(
      {super.key, required this.firstButton, required this.secondButton});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        firstButton,
        secondButton,
      ],
    );
  }
}
