import 'package:get/get.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';
import '../controllers/motorcycle_register_controller.dart';

class MotorcycleRegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<MotorcycleRegisterController>(
      () => MotorcycleRegisterController(
        vehiclesService: Get.find<VehiclesService>(),
      ),
    );
  }
}
