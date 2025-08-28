import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';

class RentersService extends GetxService {
  final AppDatabase database;

  RentersService({required this.database});

  RxList<Renter> list = <Renter>[].obs;

  @override
  onInit() {
    super.onInit();
    loadRenter();
  }

  Future<List<Renter>> loadRenter() async {
    list.value = await database.select(database.renters).get();
    return list;
  }
}
