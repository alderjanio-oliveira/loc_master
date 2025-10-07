import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:loc_master/presentation/organisms/list/list_builder_organism.dart';

class Utils {
  Future<DateTime?> selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate:
          DateTime.now().subtract(const Duration(days: 365)), // 1 ano atrás
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            dialogTheme: DialogThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    return picked;
  }

  formatDate(dateStr) {
    try {
      return (DateFormat('dd/MM/yyyy').format(DateTime.parse(dateStr)));
    } catch (e) {
      return dateStr;
    }
  }

  buildList<T>({
    required ListBuilderOrganism listBuildElement,
    required List<T> items,
    bool isLoading = false,
  }) {
    Obx(
      () {
        if (isLoading) {
          return const Center(child: CircularProgressIndicator());
        }
        return items.isEmpty
            ? const Text('No payments found for this renter.')
            : listBuildElement;
      },
    );
  }
}
