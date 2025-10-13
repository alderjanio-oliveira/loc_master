import 'package:flutter/material.dart';
import 'package:loc_master/presentation/controllers/details_renters_controller.dart';
import 'package:loc_master/presentation/organisms/list/list_builder_organism.dart';

class VehicleSessionWidget extends StatelessWidget {
  final DetailsRetersController controller;

  const VehicleSessionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    if (controller.isLoading.value) {
      return const Center(child: CircularProgressIndicator());
    }

    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IconButton(
            onPressed: () {},
            icon: const Icon(Icons.add_circle_outline_sharp),
          ),
          controller.vehicles.isEmpty
              ? const Text('No vehicles found for this renter.')
              : ListBuilderOrganism(
                  list: controller.vehicles,
                  keyTitle: 'name',
                  keySubtitle: 'plate',
                  onLongPress: (element) => controller.chooseVehicle(element),
                ),
        ],
      ),
    );
  }
}
