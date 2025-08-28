import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/repositories/renters_service.dart';
import 'package:loc_master/data/repositories/retal_service.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';
import 'package:loc_master/presentation/controllers/details_renters_controller.dart';

class DetailsRetersBinding implements Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<RentersService>()) {
      Get.lazyPut<RentersService>(
          () => RentersService(database: Get.find<AppDatabase>()));
    }
    if (!Get.isRegistered<RentalService>()) {
      Get.lazyPut<RentalService>(
          () => RentalService(database: Get.find<AppDatabase>()));
    }
    if (!Get.isRegistered<VehiclesService>()) {
      Get.lazyPut<VehiclesService>(
          () => VehiclesService(database: Get.find<AppDatabase>()));
    }
    Get.lazyPut<DetailsRetersController>(
      () => DetailsRetersController(
        database: Get.find<AppDatabase>(),
        rentalService: Get.find<RentalService>(),
        rentersService: Get.find<RentersService>(),
        vehiclesService: Get.find<VehiclesService>(),
      ),
    );
  }
}
