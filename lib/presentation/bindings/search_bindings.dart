import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/presentation/controllers/search_controller.dart';

class SearchBindings implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<SearchItemsController>(
      () => SearchItemsController(
        Get.find<AppDatabase>(),
      ),
    );
  }
}
