import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/presentation/controllers/consumer_register_controller.dart';

class TenantRegisterBinding implements Bindings {
  @override
  void dependencies() {
    if (!Get.isRegistered<AppDatabase>()) {
      Get.lazyPut<AppDatabase>(() => AppDatabase());
    }
    Get.lazyPut<ConsumerRegisterController>(
      () => ConsumerRegisterController(
        Get.find<AppDatabase>(),
      ),
    );
  }
}
