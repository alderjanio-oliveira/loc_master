import 'dart:async';

import 'package:drift/native.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';

class VehiclesService extends GetxService {
  final AppDatabase database;
  VehiclesService({required this.database});

  Future<void> addOrUpdateVehicle(Vehicle vehicle) async {
    try {
      if (vehicle.id != null) {
        await database.update(database.vehicles).replace(
              vehicle,
            );
      } else {
        await database.into(database.vehicles).insert(
              vehicle,
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
