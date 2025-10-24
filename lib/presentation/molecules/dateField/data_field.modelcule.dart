import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/config/utils.dart';

class DateFieldMolecule extends StatelessWidget {
  final TextEditingController dateController;
  final Rx<DateTime?> selectedDate;
  final String? label;

  const DateFieldMolecule({
    super.key,
    required this.dateController,
    required this.selectedDate,
    this.label,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      readOnly: true, // Impede edição manual
      decoration: const InputDecoration(
        labelText: 'Data',
        suffixIcon: Icon(Icons.calendar_today),
        border: OutlineInputBorder(),
      ),
      controller: dateController,
      onTap: () async {
        selectedDate.value = await Utils().selectDate(context);
        dateController.text = selectedDate.value?.toString() ?? '';
      },
    );
  }
}
