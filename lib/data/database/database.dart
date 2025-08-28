import 'package:drift/drift.dart';
import 'package:drift_flutter/drift_flutter.dart';
import 'package:flutter/material.dart' show DateTimeRange;
import 'package:path_provider/path_provider.dart';

part 'database.g.dart';

class TodoItems extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get title => text().withLength(min: 6, max: 32)();
  TextColumn get content => text().named('body')();
  DateTimeColumn get createdAt => dateTime().nullable()();
}

class Vehicles extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get name => text().withLength(min: 2, max: 50)();
  TextColumn get description => text().nullable()();
  TextColumn get plate => text().withLength(min: 7, max: 8).unique()();
  TextColumn get brand => text().withLength(min: 2, max: 30)();
  TextColumn get model => text().withLength(min: 2, max: 30)();
  IntColumn get year => integer().nullable()();

  // Quitado, Financiado, Consorcio
  TextColumn get status => text().withDefault(const Constant('Consórcio'))();
  DateTimeColumn get acquisitionDate => dateTime().nullable()();

  RealColumn get priceInstallment => real().nullable()();
  IntColumn get amount => integer().nullable()();

  // Condition: 'new', 'good', 'regular', 'bad'
  TextColumn get condition => text().withDefault(const Constant('good'))();

  RealColumn get dailyRate => real()();
  TextColumn get imagePath => text().nullable()();
}

class Renters extends Table {
  IntColumn get id => integer().autoIncrement().nullable()();
  TextColumn get name => text().withLength(min: 3, max: 100)();
  TextColumn get cnh => text().withLength(min: 11, max: 15).unique()();
  TextColumn get address => text().withLength(min: 5, max: 200)();
  TextColumn get phone => text().withLength(min: 10, max: 15)();
  TextColumn get email => text().nullable()();
  TextColumn get cpf => text().withLength(min: 11, max: 14).unique()();
  TextColumn get notes => text().nullable()();
  BoolColumn get isBlacklisted =>
      boolean().withDefault(const Constant(false))();
  TextColumn get blacklistReason => text().nullable()();
}

class Rentals extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get vehicleId => integer().references(Vehicles, #id)();
  IntColumn get renterId => integer().references(Renters, #id)();
  DateTimeColumn get startDate => dateTime().nullable()();
  DateTimeColumn get endDate => dateTime().nullable()();
  DateTimeColumn get returnDate => dateTime().nullable()();
  RealColumn get totalValue => real().nullable()();
  RealColumn get paidValue => real().withDefault(const Constant(0))();
  TextColumn get type => text().withDefault(const Constant('full'))();

  // Status: 'active', 'completed', 'canceled', 'overdue'
  TextColumn get status => text().withDefault(const Constant('active'))();

  TextColumn get notes => text().nullable()();
}

class Payments extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get renterId =>
      integer().named('renter_id').references(Renters, #id)();
  IntColumn get rentalId => integer().nullable().references(Rentals, #id)();
  RealColumn get price => real()();
  DateTimeColumn get date => dateTime()();

  // Type: 'partial', 'full', 'fine', 'deposit'
  TextColumn get type => text().nullable()();

  TextColumn get description => text().nullable()();

  // Method: 'cash', 'credit', 'debit', 'transfer', 'pix'
  TextColumn get method => text().nullable()();
}

class Events extends Table {
  IntColumn get id => integer().autoIncrement()();
  IntColumn get rentalId => integer().references(Rentals, #id).nullable()();
  IntColumn get renterId => integer().references(Renters, #id)();
  DateTimeColumn get date => dateTime().withDefault(Constant(DateTime.now()))();
  // Type: 'delay', 'accident', 'maintenance', 'observation', 'warning'
  TextColumn get type => text().withDefault(const Constant('delay'))();

  TextColumn get description => text()();
  BoolColumn get requiresAction =>
      boolean().withDefault(const Constant(false))();
  BoolColumn get resolved => boolean().withDefault(const Constant(false))();
  TextColumn get resolutionNotes => text().nullable()();
}

@DriftDatabase(
    tables: [TodoItems, Vehicles, Renters, Rentals, Payments, Events])
class AppDatabase extends _$AppDatabase {
  // After generating code, this class needs to define a `schemaVersion` getter
  // and a constructor telling drift where the database should be stored.
  // These are described in the getting started guide: https://drift.simonbinder.eu/setup/
  AppDatabase([QueryExecutor? executor]) : super(executor ?? _openConnection());

  @override
  int get schemaVersion => 1;

  static QueryExecutor _openConnection() {
    return driftDatabase(
      name: 'my_database',
      native: const DriftNativeOptions(
        // By default, `driftDatabase` from `package:drift_flutter` stores the
        // database files in `getApplicationDocumentsDirectory()`.
        databaseDirectory: getApplicationSupportDirectory,
      ),
      // If you need web support, see https://drift.simonbinder.eu/platforms/web/
    );
  }

  Future<bool> vehicleExists(int id) async {
    final query = select(rentals)..where((v) => v.vehicleId.equals(id));
    final result = await query.getSingleOrNull();
    return result != null;
  }

  Future<bool> updateStatusVehicle(int id, String status) async {
    final query = update(vehicles)..where((v) => v.id.equals(id));
    final result = await query.write(
      VehiclesCompanion(
        status: Value(status),
      ),
    );
    return result > 0;
  }

  Future<void> deleteRental(int id) async {
    try {
      final query = delete(rentals)..where((tbl) => tbl.id.equals(id));
      await query.go();
      print('Rental $id deletado com sucesso');
    } catch (e) {
      print('Erro ao deletar rental $id: $e');
    }
  }
}
