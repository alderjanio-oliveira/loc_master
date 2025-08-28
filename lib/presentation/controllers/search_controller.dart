import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';

class SearchItemsController extends GetxController {
  final AppDatabase database;
  final searchQuery = ''.obs;
  final showBlacklisted = false.obs;
  final isLoading = false.obs;
  final renters = <Renter>[].obs;
  final filteredRenters = <Renter>[].obs;

  SearchItemsController(this.database);

  @override
  void onInit() {
    super.onInit();
    loadRenters();
  }

  Future<void> loadRenters() async {
    try {
      isLoading(true);
      renters.value = await database.select(database.renters).get();
      _filterRenters();
    } catch (e) {
      Get.snackbar('Erro', 'Falha ao carregar locatários');
    } finally {
      isLoading(false);
    }
  }

  void _filterRenters() {
    if (searchQuery.isEmpty && !showBlacklisted.value) {
      filteredRenters.value = renters;
      return;
    }

    filteredRenters.value = renters.where((renter) {
      final matchesSearch = searchQuery.isEmpty ||
          renter.name.toLowerCase().contains(searchQuery.toLowerCase()) ||
          renter.cpf.contains(searchQuery) ||
          renter.phone.contains(searchQuery);

      final matchesBlacklist = !showBlacklisted.value || renter.isBlacklisted;

      return matchesSearch && matchesBlacklist;
    }).toList();
  }

  void onSearchChanged(String query) {
    searchQuery.value = query;
    _filterRenters();
  }

  void toggleBlacklistedFilter(bool value) {
    showBlacklisted.value = value;
    _filterRenters();
  }
}
