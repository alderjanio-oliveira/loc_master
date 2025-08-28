import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/controllers/rentals/rentals_controller.dart';
import 'package:loc_master/presentation/organisms/list/list_builder_organism.dart';

class RentalsPage extends GetView<RentalsController> {
  const RentalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Rentals')),
      body: Obx(
        () {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListBuilderOrganism(
              list: controller.defaultList,
              keyTitle: 'name',
              keySubtitle: 'description',
              onLongPress: (item) {
                controller.deleteRental(item);
              });
        },
      ),
    );
  }
}
