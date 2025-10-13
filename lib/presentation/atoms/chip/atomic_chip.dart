import 'package:flutter/material.dart';

class AtomicChip extends StatelessWidget {
  final String label;

  const AtomicChip({super.key, required this.label});

  @override
  Widget build(BuildContext context) {
    return Chip(
      label: Text(label),
    );
  }
}
