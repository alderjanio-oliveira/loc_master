import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/repositories/retal_service.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';
import 'package:drift/drift.dart' as drift;

class RentalRegisterController extends GetxController {
  RxList<Renter> tenants = <Renter>[].obs;
  RxList<Vehicle> vehicles = <Vehicle>[].obs;
  RxBool isLoading = true.obs;
  final VehiclesService vehiclesService;
  final RentalService rentalService;
  AppDatabase db;

  TextEditingController tenantSearchController = TextEditingController();
  TextEditingController vehicleSearchController = TextEditingController();
  TextEditingController rentalValueController = TextEditingController();
  TextEditingController rentalDueDayController = TextEditingController();
  TextEditingController rentalPeriodController = TextEditingController();

  final RxInt selectedTenantId = RxInt(-1);
  final RxInt selectedVehicleId = RxInt(-1);

  RentalRegisterController({
    required this.db,
    required this.vehiclesService,
    required this.rentalService,
  });

  @override
  void onInit() async {
    super.onInit();
    rentalDueDayController.text =
        DateTime.now().toIso8601String().split('T').first;
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
    rentalService.rentVehicle(vehicles[0], tenants[0], rental: _buildRental());
  }

  _buildRental() {
    return RentalsCompanion(
      vehicleId: drift.Value(selectedVehicleId.value),
      renterId: drift.Value(selectedTenantId.value),
      startDate: drift.Value(DateTime.parse(rentalDueDayController.text)),
      endDate: drift.Value(DateTime.now().add(Duration(days: 7))),
      totalValue: drift.Value(1 * 7),
      paidValue: drift.Value(double.parse(rentalValueController.text)),
      type: drift.Value('weekly'),
      status: drift.Value('active'),
    );
  }
}
