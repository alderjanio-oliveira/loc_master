import 'package:flutter/material.dart';

class MLabelButton extends StatelessWidget {
  final String? label;
  final String? tooltip;
  final Icon icon;
  final VoidCallback onPressed;
  const MLabelButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.label,
      this.tooltip});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: icon,
          iconSize: 50,
          color: Colors.blue,
          tooltip: tooltip ?? 'Tooltip',
          padding: const EdgeInsets.all(10),
          splashColor: Colors.blueAccent,
          highlightColor: Colors.blue[100],
          hoverColor: Colors.blue[50],
          focusColor: Colors.blue[200],
          disabledColor: Colors.grey,
          alignment: Alignment.center,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          splashRadius: 30,
          focusNode: FocusNode(),
          enableFeedback: true,
          autofocus: false,
        ),
        const SizedBox(height: 10),
        Text(label ?? 'Label', style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
