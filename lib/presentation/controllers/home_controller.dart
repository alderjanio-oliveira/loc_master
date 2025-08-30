import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/data/repositories/renters_service.dart';
import 'package:loc_master/data/repositories/vehicles_services.dart';

class HomeController extends GetxController {
  final RentersService rentersService;
  final VehiclesService vehiclesService;
  final AppDatabase database;

  HomeController({
    required this.rentersService,
    required this.vehiclesService,
    required this.database,
  });

  @override
  void onInit() async {
    super.onInit();
    await load();
  }

  Future<void> load() async {
    // Carregue dados iniciais, se necessário
  }
}
