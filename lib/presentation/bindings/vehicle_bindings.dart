import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';
import 'package:loc_master/presentation/controllers/vehicle_controller.dart';

class VehiclesBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VehiclesService>(
      () => VehiclesService(
        database: Get.find<AppDatabase>(),
      ),
    );
    Get.lazyPut<VehiclesController>(
      () => VehiclesController(
        vehiclesService: Get.find<VehiclesService>(),
      ),
    );
  }
}
