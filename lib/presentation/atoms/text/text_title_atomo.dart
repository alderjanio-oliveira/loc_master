import 'package:flutter/material.dart';

class TextTitleAtom extends StatelessWidget {
  final String title;

  const TextTitleAtom({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.bodyLarge,
    );
  }
}

class SubTitleAtom extends StatelessWidget {
  final String subtitle;
  const SubTitleAtom({super.key, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Text(
      subtitle,
      style: Theme.of(context).textTheme.bodySmall,
    );
  }
}
