import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/config/utils.dart';
import 'package:loc_master/presentation/molecules/listTile/list_tile_melecules.dart';

class ListBuilderOrganism extends ListView {
  final RxList<dynamic> list;
  final VoidCallback? onTap;
  final ValueChanged<dynamic>? onPressedParam;
  final ValueChanged<dynamic>? onLongPress;
  final Widget? leading;
  final Widget? trailing;
  final String? keyTitle;
  final String? keySubtitle;
  final bool isDate;
  ListBuilderOrganism({
    super.key,
    this.onTap,
    this.leading,
    this.trailing,
    required this.list,
    this.keyTitle,
    this.keySubtitle,
    this.onLongPress,
    this.isDate = false,
    this.onPressedParam,
  });

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => ListView.builder(
        shrinkWrap: true,
        itemCount: list.length,
        itemBuilder: (context, index) {
          final item = list[index].toJson();
          return ListTileMelecules(
            title: (item[keyTitle ?? 'title'] ?? 'Item ').toString(),
            subtitle: isDate
                ? Utils().formatDate(list[index].date).toString()
                : (item[keySubtitle ?? 'subtitle'] ?? 'Subtitle ').toString(),
            leading: leading,
            trailing: trailing,
            onTap: onTap ?? () => onPressedParam?.call(list[index]),
            onLongPress: () => onLongPress?.call(list[index]),
          );
        },
      ),
    );
  }
}
