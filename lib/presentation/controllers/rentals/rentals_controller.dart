import 'package:drift/drift.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/models/defalt_item_model.dart';

class RentalsController extends GetxController {
  AppDatabase database;
  RentalsController({required this.database});

  final rentals = <Rental>[].obs;
  final defaultList = <DefaultItemModel>[].obs;
  final isLoading = false.obs;

  @override
  void onInit() {
    super.onInit();
    load();
  }

  Future<void> load() async {
    isLoading.value = true;
    final listJoin = await database.select(database.rentals).join([
      leftOuterJoin(database.vehicles,
          database.vehicles.id.equalsExp(database.rentals.vehicleId)),
      leftOuterJoin(database.renters,
          database.renters.id.equalsExp(database.rentals.renterId)),
    ]).get();

    defaultList.value = listJoin.map((row) {
      return DefaultItemModel(
        id: row.readTable(database.rentals).id,
        name: row.readTable(database.renters).name,
        description: row.readTable(database.vehicles).plate,
        vehicleId: row.readTable(database.vehicles).id!,
      );
    }).toList();

    isLoading.value = false;
  }

  Future<void> deleteRental(DefaultItemModel rental) async {
    isLoading.value = true;
    await database.deleteRental(rental.id);
    await database.updateStatusVehicle(rental.vehicleId, "available");
    await load();

    isLoading.value = false;
  }
}
