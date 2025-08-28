import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/repositories/renters_service.dart';
import 'package:loc_master/data/repositories/retal_service.dart';
import 'package:loc_master/presentation/controllers/detail_vehicle_controller.dart';

class VehicleDetailsBinding implements Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<AppDatabase>()) {
      Get.lazyPut<AppDatabase>(() => AppDatabase());
    }
    if (!Get.isRegistered<RentersService>()) {
      Get.lazyPut<RentersService>(
        () => RentersService(database: Get.find<AppDatabase>()),
      );
    }
    if (!Get.isRegistered<RentalService>()) {
      Get.lazyPut<RentalService>(
        () => RentalService(database: Get.find<AppDatabase>()),
      );
    }
    Get.lazyPut<VehicleDetailsController>(
      () => VehicleDetailsController(
        rentersService: Get.find<RentersService>(),
        rentalService: Get.find<RentalService>(),
      ),
    );
  }
}
