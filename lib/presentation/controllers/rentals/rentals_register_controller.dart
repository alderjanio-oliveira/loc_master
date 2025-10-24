import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';

class RentalRegisterController extends GetxController {
  RxList<Renter> tenants = <Renter>[].obs;
  RxList<Vehicle> vehicles = <Vehicle>[].obs;
  RxBool isLoading = true.obs;
  final VehiclesService vehiclesService;
  AppDatabase db;

  TextEditingController tenantSearchController = TextEditingController();
  TextEditingController vehicleSearchController = TextEditingController();
  TextEditingController rentalValueController = TextEditingController();
  TextEditingController rentalDueDayController = TextEditingController();
  TextEditingController rentalPeriodController = TextEditingController();

  RentalRegisterController({required this.db, required this.vehiclesService});

  @override
  void onInit() async {
    super.onInit();
    await loadTenants();
    await loadVehicles();
  }

  loadTenants() async {
    try {
      final result = await db.select(db.renters).get();
      tenants.assignAll(result);
      print('Loaded tenants: ${tenants.length}');
    } catch (e) {
      Get.snackbar('Erro', 'Falha ao carregar locatários');
    } finally {
      isLoading.value = false;
    }
  }

  loadVehicles() async {
    try {
      vehicles.value = await vehiclesService.getVehicles() ?? [];
    } catch (e) {
      Get.snackbar('Erro', 'Falha ao carregar veículos');
    } finally {
      isLoading.value = false;
    }
  }

  onSubmit() {
    // Lógica para submissão do formulário de aluguel
    print('Submitting rental form');
  }
}
