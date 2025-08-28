import 'package:drift/drift.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/repositories/renters_service.dart';
import 'package:loc_master/data/repositories/retal_service.dart';

class VehicleDetailsController extends GetxController {
  final RentersService rentersService;
  final RentalService rentalService;
  VehicleDetailsController(
      {required this.rentersService, required this.rentalService});

  // Use a lista do service ou crie uma própria
  RxList<Renter> renters = <Renter>[].obs;
  var isLoading = true.obs;
  RxInt currentRental = 0.obs;
  Vehicle vehicle = Get.arguments as Vehicle;
  Rx<Renter?> selectedRenter = Rx<Renter?>(null);

  @override
  void onInit() {
    super.onInit();
    loadRenters();
    loadComplete();
  }

  Future<void> loadRenters() async {
    try {
      renters.value = await rentersService.loadRenter();

      isLoading.value = true;
    } catch (e) {
      print("Erro ao carregar renters: $e");
    } finally {
      isLoading.value = false;
    }
  }

  Future<dynamic> loadRental() async {
    var rentals = await rentalService.load();
    currentRental.value = rentals.length;
  }

  Future<void> rentalConfirm(Vehicle vehicle, Renter renter) async {
    isLoading.value = true;
    bool res = await rentersService.database.vehicleExists(vehicle.id!);

    if (!res) {
      await rentalService.rentVehicle(vehicle, renter);
      await loadRental();
      await loadComplete();
      await rentersService.database.updateStatusVehicle(vehicle.id!, "rented");
      Get.snackbar("Sucesso", "Veiculo alugado com sucesso");
    } else {
      Get.snackbar("Erro", "Veiculo já alugado");
    }
    isLoading.value = false;
  }

  Future<void> loadComplete() async {
    isLoading.value = false;
    final rentalQuery = rentalService.database
        .select(rentalService.database.rentals)
      ..where((tbl) => tbl.vehicleId.equals(vehicle.id!));

// Depois faz o JOIN com outras tabelas
    final data = await rentalQuery.join([
      leftOuterJoin(
        rentalService.database.vehicles,
        rentalService.database.vehicles.id
            .equalsExp(rentalService.database.rentals.vehicleId),
      ),
      leftOuterJoin(
        rentalService.database.renters,
        rentalService.database.renters.id
            .equalsExp(rentalService.database.rentals.renterId),
      ),
    ]).get();

    final rentersList = data
        .map((row) => row.readTable(rentalService.database.renters))
        .toList();
    selectedRenter.value = rentersList.firstOrNull;
  }
}
