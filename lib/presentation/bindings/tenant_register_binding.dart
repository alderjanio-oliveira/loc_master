import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/presentation/controllers/tenants_controller.dart';

class TenantRegisterBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<TenantsController>(
      () => TenantsController(
        Get.find<AppDatabase>(),
      ),
    );
  }
}
