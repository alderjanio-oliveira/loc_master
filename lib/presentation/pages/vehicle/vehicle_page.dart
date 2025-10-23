import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/controllers/vehicle_controller.dart';
import 'package:loc_master/presentation/routes/app_pages.dart';

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
          child: Obx(() {
            if (controller.isLoading.value) {
              return Center(child: CircularProgressIndicator());
            }
            return ListView.builder(
              itemCount: controller.vehicles.length,
              itemBuilder: (context, index) {
                final vehicle = controller.vehicles[index];
                return ListTile(
                  title: Text(vehicle.model),
                  subtitle:
                      Text('Plate: ${vehicle.plate} Status: ${vehicle.status}'),
                  onTap: () {
                    Get.toNamed(
                      Routes.vehicleDetails,
                      arguments: vehicle,
                    );
                  },
                );
              },
            );
          }),
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
