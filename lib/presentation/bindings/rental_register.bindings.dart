import 'package:get/get.dart';
import 'package:loc_master/data/repositories/retal_service.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';
import 'package:loc_master/presentation/controllers/rentals/rentals_register_controller.dart';

class RentalRegisterBinding extends Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<VehiclesService>()) {
      Get.lazyPut<VehiclesService>(() => VehiclesService(database: Get.find()));
    }
    if (!Get.isRegistered<RentalService>()) {
      Get.lazyPut<RentalService>(() => RentalService(database: Get.find()));
    }

    Get.lazyPut<RentalRegisterController>(
      () => RentalRegisterController(
        vehiclesService: Get.find(),
        db: Get.find(),
        rentalService: Get.find(),
      ),
    );
  }
}
