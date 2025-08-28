import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:loc_master/presentation/molecules/listTile/list_tile_melecules.dart';

class ListBuilderOrganism extends StatelessWidget {
  final List list;
  final VoidCallback? onTap;
  final ValueChanged<dynamic>? onLongPress;
  final IconData? leadingIcon;
  final IconData? trailingIcon;
  final String? keyTitle;
  final String? keySubtitle;
  final bool isDate;
  const ListBuilderOrganism({
    super.key,
    this.onTap,
    this.leadingIcon,
    this.trailingIcon,
    required this.list,
    this.keyTitle,
    this.keySubtitle,
    this.onLongPress,
    this.isDate = false,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: list.length,
      itemBuilder: (context, index) {
        final item = list[index].toJson();
        return ListTileMelecules(
          title: (item[keyTitle ?? 'title'] ?? 'Item $index').toString(),
          subtitle: isDate
              ? formatDate((list[index].date).toString())
              : (item[keySubtitle ?? 'subtitle'] ?? 'Subtitle $index')
                  .toString(),
          leadingIcon: leadingIcon,
          trailingIcon: trailingIcon,
          onTap: onTap,
          onLongPress: () => onLongPress?.call(list[index]),
        );
      },
    );
  }

  formatDate(dateStr) {
    try {
      return (DateFormat('dd/MM/yyyy').format(DateTime.parse(dateStr)));
    } catch (e) {
      return dateStr;
    }
  }
}
