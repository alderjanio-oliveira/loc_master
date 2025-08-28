import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:drift/drift.dart' as drift;

class RentalService extends GetxService {
  final AppDatabase database;

  RentalService({required this.database});

  Future<List<Rental>> load() async {
    return await database.select(database.rentals).get();
  }

  Future<Rental?> getById(int id) async {
    return await (database.select(database.rentals)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<Rental?> getByRenterId(int renterId) async {
    return await (database.select(database.rentals)
          ..where((tbl) => tbl.renterId.equals(renterId)))
        .getSingleOrNull();
  }

  Future<void> rentVehicle(Vehicle vehicle, Renter renter) async {
    await database.into(database.rentals).insert(
          RentalsCompanion(
            vehicleId: drift.Value(vehicle.id!),
            renterId: drift.Value(renter.id!),
            startDate: drift.Value(DateTime.now()),
            endDate: drift.Value(
              DateTime.now().add(Duration(days: 7)),
            ),
            totalValue: drift.Value(1 * 7),
          ),
        );
  }
}
