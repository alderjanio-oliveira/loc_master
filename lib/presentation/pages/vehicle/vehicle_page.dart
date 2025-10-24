import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/controllers/vehicle_controller.dart';
import 'package:loc_master/presentation/organisms/list/list_builder_organism.dart';
import 'package:loc_master/presentation/routes/app_pages.dart';
import 'package:loc_master/presentation/templates/load_component.dart';

class VehiclesPage extends GetView<VehiclesController> {
  const VehiclesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('VehiclesPage'), actions: [
        IconButton(
          icon: Icon(Icons.refresh),
          onPressed: () {
            // Refresh the vehicle list
            controller.loadVehicles();
          },
        ),
      ]),
      body: RefreshIndicator(
        onRefresh: () async {
          // Call your controller's refresh method here
          await controller.loadVehicles();
        },
        child: SafeArea(
          child: LoadComponent(
            isLoading: controller.isLoading,
            child: ListBuilderOrganism(
              list: controller.vehicles,
              keyTitle: 'model',
              keySubtitle: 'plate',
              onPressedParam: (item) {
                Get.toNamed(Routes.vehicleDetails, arguments: item);
              },
            ),
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.motorcycleRegister);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
