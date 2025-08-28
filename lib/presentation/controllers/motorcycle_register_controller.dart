import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';

class MotorcycleRegisterController extends GetxController {
  final VehiclesService vehiclesService;

  Rx<Vehicle?> vehicle = (Get.arguments is Vehicle)
      ? (Get.arguments as Vehicle).obs
      : Rx<Vehicle?>(null);

  MotorcycleRegisterController({required this.vehiclesService, Key? key});

  @override
  void onInit() {
    super.onInit();
    initialLoad();
  }

  // Remova a GlobalKey daqui e crie na página
  final modelController = TextEditingController();
  final manufacturerController = TextEditingController();
  final describleController = TextEditingController();
  final plateController = TextEditingController();
  final dailyRateController = TextEditingController();
  final financialStatusController = TextEditingController();
  final instalmentController = TextEditingController();
  final priceInstallmentController = TextEditingController();
  var isLoading = false.obs;

  initialLoad() {
    if (vehicle.value != null) {
      modelController.text = vehicle.value!.model;
      manufacturerController.text = vehicle.value!.brand;
      describleController.text = vehicle.value!.description ?? '';
      plateController.text = vehicle.value!.plate;
      dailyRateController.text = vehicle.value!.dailyRate.toString();
      financialStatusController.text = vehicle.value!.status ?? '';
      instalmentController.text = vehicle.value!.dailyRate.toString();
      priceInstallmentController.text = vehicle.value!.dailyRate.toString();
    }
  }

  Future<void> registerMotorcycle(GlobalKey<FormState> formKey) async {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;

    try {
      await vehiclesService.addOrUpdateVehicle(buildVehicle());
      Get.back();
      Get.snackbar('Sucesso', 'Moto cadastrada com sucesso!');
    } catch (e) {
      Get.snackbar('Erro', 'Falha ao cadastrar moto');
    } finally {
      isLoading.value = false;
    }
  }

  @override
  void onClose() {
    modelController.dispose();
    plateController.dispose();
    dailyRateController.dispose();
    super.onClose();
  }

  buildVehicle() {
    return Vehicle(
      name: modelController.text,
      plate: plateController.text,
      brand: manufacturerController.text,
      model: modelController.text,
      year: 2025,
      status: 'available',
      condition: 'good',
      dailyRate: 100.0,
    );
  }
}
