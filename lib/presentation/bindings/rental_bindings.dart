import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/presentation/controllers/rentals/rentals_controller.dart';

class RentalBindings implements Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<AppDatabase>()) {
      Get.lazyPut<AppDatabase>(() => AppDatabase());
    }
    Get.lazyPut<RentalsController>(
      () => RentalsController(
        database: Get.find<AppDatabase>(),
      ),
    );
  }
}
