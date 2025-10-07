import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:drift/drift.dart' as drift;
import 'package:loc_master/data/repositories/renters_service.dart';
import 'package:loc_master/data/repositories/retal_service.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';

class DetailsRetersController extends GetxController {
  AppDatabase database;
  RentalService rentalService;
  RentersService rentersService;
  VehiclesService vehiclesService;
  DetailsRetersController({
    required this.database,
    required this.rentalService,
    required this.rentersService,
    required this.vehiclesService,
  });

  TextEditingController paymentPrice = TextEditingController();
  TextEditingController paymentDate = TextEditingController();
  Rx<DateTime?> selectedDate = Rx<DateTime?>(null);

  TextEditingController eventDescription = TextEditingController();
  TextEditingController eventDate = TextEditingController();
  Rx<DateTime?> selectedEventDate = Rx<DateTime?>(null);

  Rx<Renter> renter = Rx<Renter>(Get.arguments as Renter);
  Rx<Rental?> rental = Rx<Rental?>(null);
  RxBool isLoading = false.obs;

  RxBool paymentSession = false.obs;
  RxBool eventSession = false.obs;
  RxBool vehicleSession = false.obs;
  RxList<Event> events = <Event>[].obs;
  RxList<Payment> payments = <Payment>[].obs;
  RxList<Vehicle> vehicles = <Vehicle>[].obs;
  Rx<Vehicle?> vehicle = Rx<Vehicle?>(null);

  @override
  void onInit() async {
    await loadRental();
    if (rental.value != null) await loadVehicle(rental.value!);
    super.onInit();
  }

  void resetSessions() {
    paymentSession.value = false;
    eventSession.value = false;
    vehicleSession.value = false;
  }

  Future<void> loadRental() async {
    isLoading.value = true;
    rental.value = await rentalService.getByRenterId(renter.value.id!);

    final data = await rentalService.load();
    print(data);

    if (rental.value == null) {
      print('No rental found for renter: ${renter.value.name}');
    } else {
      print('Rental found for renter: ${renter.value.name}');
    }
    isLoading.value = false;
  }

  Future<void> deleteRental(Rental rental) async {
    isLoading.value = true;
    await database.deleteRental(rental.id);
    await database.updateStatusVehicle(rental.vehicleId, "available");
    await loadRental();
    vehicle.value = null;
    isLoading.value = false;
  }

  Future<List<Vehicle>> loadVehicles() async {
    isLoading.value = true;
    vehicles.value = await vehiclesService.getVehicles() ?? [];
    isLoading.value = false;
    return vehicles;
  }

  Future<void> chooseVehicle(Vehicle vehicle) async {
    isLoading.value = true;
    this.vehicle.value = vehicle;
    isLoading.value = false;
  }

  Future<void> loadVehicle(Rental? rental) async {
    isLoading.value = true;
    vehicle.value = await vehiclesService.getVehicleById(rental!.vehicleId);
    isLoading.value = false;
  }

  Future<RxList<Vehicle>> getVehicles() async {
    isLoading.value = true;
    vehicles.value = await vehiclesService.getVehicles() ?? [];
    isLoading.value = false;
    return vehicles;
  }

  void updateSessions(String sessionType) async {
    resetSessions();
    switch (sessionType) {
      case 'payment':
        await loadPayments();
        paymentSession.value = true;
        break;
      case 'event':
        await loadEvents();
        eventSession.value = true;
        break;
      case 'vehicle':
        await getVehicles();
        vehicleSession.value = true;
        break;
    }
  }

  EventsCompanion _buildEvent() {
    return EventsCompanion(
      renterId: drift.Value(renter.value.id!),
      rentalId: drift.Value(renter.value.id!),
      date: drift.Value(
          selectedEventDate.value?.toUtc() ?? DateTime.now().toUtc()),
      description: drift.Value(eventDescription.text),
      type: drift.Value('observation'),
      requiresAction: drift.Value(false),
      resolved: drift.Value(false),
    );
  }

  Future<void> addEventSession() async {
    isLoading.value = true;
    await database.into(database.events).insert(_buildEvent());
    print('Adicionar evento para o locatário: ${renter.value.name}');
    await loadEvents();
    isLoading.value = false;
  }

  Future<void> loadEvents() async {
    isLoading.value = true;
    events.value = await (database.select(database.events)
          ..where((tbl) => tbl.renterId.equals(renter.value.id!)))
        .get();

    print(events.value);
    isLoading.value = false;
  }

  Future<void> loadPayments() async {
    isLoading.value = true;
    payments.value = await (database.select(database.payments)
          ..where((tbl) => tbl.renterId.equals(renter.value.id!)))
        .get();

    print(payments.value);
    isLoading.value = false;
  }

  Future<void> addPaymentSession() async {
    isLoading.value = true;
    database.into(database.payments).insert(
          PaymentsCompanion(
            renterId: drift.Value(renter.value.id!),
            rentalId: const drift.Value(null),
            date: drift.Value(
                selectedDate.value?.toUtc() ?? DateTime.now().toUtc()),
            description: const drift.Value('New payment'),
            type: drift.Value('partial'),
            method: drift.Value('cash'),
            price: drift.Value(double.tryParse(paymentPrice.text) ?? 0.0),
          ),
        );
    print('Adicionar pagamento para o locatário: ${renter.value.name}');
    await loadPayments();
    isLoading.value = false;
  }

  void blockRenter() {
    database.update(database.renters).replace(
          Renter(
              id: renter.value.id,
              name: renter.value.name,
              cnh: renter.value.cnh,
              address: renter.value.address,
              cpf: renter.value.cpf,
              phone: renter.value.phone,
              email: renter.value.email,
              isBlacklisted: !renter.value.isBlacklisted),
        );
    renter.value = renter.value.copyWith(
      isBlacklisted: !renter.value.isBlacklisted,
    );
  }

  Future<void> eventsLoad() async {
    updateSessions('event');
    print('Load events: $eventSession');
  }

  Future<void> paymentsLoad() async {
    updateSessions('payment');
    print('Load payments: $paymentSession');
  }

  Future<void> vehicleLoadSession() async {
    updateSessions('vehicle');
    print('Load vehicles: $vehicleSession');
  }

  Future<void> delete() async {
    await (database.delete(database.renters)
          ..where((tbl) => tbl.id.equals(renter.value.id!)))
        .go();
    Get.back();
  }
}
