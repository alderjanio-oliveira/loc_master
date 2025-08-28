import 'dart:math';

import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';

class VehiclesController extends GetxController {
  final VehiclesService vehiclesService;
  RxBool isLoading = true.obs;
  RxList<Vehicle> vehicles = <Vehicle>[].obs;

  VehiclesController({required this.vehiclesService});

  @override
  void onInit() async {
    super.onInit();
    loadVehicles();
  }

  @override
  void onReady() {
    super.onReady();
    loadVehicles();
  }

  loadVehicles() async {
    isLoading.value = true;
    try {
      vehicles.value = await vehiclesService.getVehicles() ?? [];
    } catch (e) {
      print('Error loading vehicles: $e');
    } finally {
      isLoading.value = false;
    }
  }
}
