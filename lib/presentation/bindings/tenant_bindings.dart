import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/presentation/controllers/tenants_controller.dart';

class TenantsBinding implements Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<AppDatabase>()) {
      Get.lazyPut<AppDatabase>(() => AppDatabase());
    }
    Get.lazyPut<TenantsController>(
      () => TenantsController(
        Get.find<AppDatabase>(),
      ),
    );
  }
}
