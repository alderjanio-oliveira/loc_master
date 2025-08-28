import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';

class TenantsController extends GetxController {
  AppDatabase db;
  final tenants = <Renter>[].obs;
  RxBool isLoading = true.obs;

  TenantsController(this.db);

  @override
  void onInit() {
    super.onInit();
    load();
  }

  load() async {
    try {
      final result = await db.select(db.renters).get();
      tenants.value = result;
      print('Loaded tenants: ${tenants.length}');
    } catch (e) {
      Get.snackbar('Erro', 'Falha ao carregar locatários');
    } finally {
      isLoading.value = false;
    }
  }
}
