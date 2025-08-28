import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/repositories/renters_service.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';
import 'package:loc_master/presentation/controllers/home_controller.dart';

class HomeBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<AppDatabase>(() => AppDatabase());
    Get.lazyPut<RentersService>(
        () => RentersService(database: Get.find<AppDatabase>()));
    Get.lazyPut<VehiclesService>(
        () => VehiclesService(database: Get.find<AppDatabase>()));
    Get.lazyPut<HomeController>(() => HomeController(
        rentersService: Get.find<RentersService>(),
        vehiclesService: Get.find<VehiclesService>(),
        database: Get.find<AppDatabase>()));
  }
}
