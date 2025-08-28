import 'dart:async';

import 'package:drift/native.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:drift/drift.dart' as drift;

class VehiclesService extends GetxService {
  final AppDatabase database;
  VehiclesService({required this.database});

  Future<void> addOrUpdateVehicle(Vehicle vehicle) async {
    // Simulate adding a vehicle to a database or API
    print('Adding vehicle: $vehicle');
    try {
      VehiclesCompanion vehicleModel = VehiclesCompanion(
        id: vehicle.id != null
            ? drift.Value(vehicle.id!)
            : const drift.Value.absent(),
        name: drift.Value(vehicle.name),
        plate: drift.Value(vehicle.plate),
        brand: drift.Value(vehicle.brand),
        model: drift.Value(vehicle.model),
        year: drift.Value(vehicle.year),
        status: drift.Value(vehicle.status),
        condition: const drift.Value('good'),
        dailyRate: const drift.Value(0.0),
      );
      if (vehicle.id != null) {
        await database.update(database.vehicles).replace(
              vehicleModel,
            );
        print('updated vehicle: $vehicle');
      } else {
        await database.into(database.vehicles).insert(
              vehicleModel,
            );
        print('inserted vehicle: $vehicle');
      }
    } on SqliteException catch (e) {
      print('Erro ao inserir veículo: $e');
      rethrow;
    } catch (e) {
      print('Erro desconhecido ao inserir veículo: $e');
      rethrow;
    }
  }

  Future<List<Vehicle>?> getVehicles() async {
    return await database.select(database.vehicles).get();
  }

  Future<Vehicle?> getVehicleById(int id) async {
    return await (database.select(database.vehicles)
          ..where((tbl) => tbl.id.equals(id)))
        .getSingleOrNull();
  }

  Future<void> deleteVehicle(Vehicle vehicle) async {
    await (database.delete(database.vehicles)
          ..where((tbl) => tbl.id.equals(vehicle.id!)))
        .go();
  }
}
