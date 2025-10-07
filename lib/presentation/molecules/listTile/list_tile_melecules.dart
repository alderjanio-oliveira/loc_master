import 'package:flutter/material.dart';
import 'package:loc_master/presentation/atoms/text/text_title_atomo.dart';

class ListTileMelecules extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final String subtitle;
  final Widget? leading;
  final Widget? trailing;
  final VoidCallback? onLongPress;

  const ListTileMelecules({
    super.key,
    this.onTap,
    required this.title,
    required this.subtitle,
    this.leading,
    this.trailing,
    this.onLongPress,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      child: ListTile(
        title: Center(
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextTitleAtom(title: title),
          ),
        ),
        subtitle: Chip(label: Text(subtitle)),
        leading: leading,
        trailing: trailing,
        onTap: onTap,
        onLongPress: onLongPress,
      ),
    );
  }
}
