import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/presentation/controllers/search_controller.dart';

class SearchPage extends GetView<SearchItemsController> {
  const SearchPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Buscar Locatários'),
        actions: [
          IconButton(
            icon: const Icon(Icons.refresh),
            onPressed: controller.loadRenters,
          ),
        ],
      ),
      body: Column(
        children: [
          // Barra de busca e filtros
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              children: [
                // Campo de busca
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Buscar por nome, CPF ou telefone',
                    prefixIcon: const Icon(Icons.search),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    suffixIcon: IconButton(
                      icon: const Icon(Icons.clear),
                      onPressed: () {
                        controller.searchQuery.value = '';
                        controller.onSearchChanged('');
                      },
                    ),
                  ),
                  onChanged: controller.onSearchChanged,
                ),
                const SizedBox(height: 8),
                // Filtros
                Obx(() => Row(
                      children: [
                        FilterChip(
                          label: const Text('Lista Negra'),
                          selected: controller.showBlacklisted.value,
                          onSelected: controller.toggleBlacklistedFilter,
                          selectedColor: Colors.red.withOpacity(0.2),
                          checkmarkColor: Colors.red,
                        ),
                      ],
                    )),
              ],
            ),
          ),
          // Resultados
          Expanded(
            child: Obx(() {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }
              return _buildResultsList(controller);
            }),
          ),
        ],
      ),
    );
  }

  Widget _buildResultsList(SearchItemsController controller) {
    if (controller.filteredRenters.isEmpty) {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(Icons.search_off, size: 50, color: Colors.grey),
            const SizedBox(height: 16),
            Text(
              controller.searchQuery.isEmpty
                  ? 'Nenhum locatário encontrado'
                  : 'Nenhum resultado para "${controller.searchQuery}"',
              style: const TextStyle(color: Colors.grey),
            ),
          ],
        ),
      );
    }

    return buildList(Get.context!, controller);
  }
}

Widget buildList(BuildContext context, SearchItemsController controller) {
  return ListView.builder(
    itemCount: controller.filteredRenters.length,
    itemBuilder: (context, index) {
      final renter = controller.filteredRenters[index];
      return _RenterSearchCard(renter: renter);
    },
  );
}

class _RenterSearchCard extends StatelessWidget {
  final Renter renter;

  const _RenterSearchCard({required this.renter});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      child: ListTile(
        leading: CircleAvatar(
          backgroundColor:
              renter.isBlacklisted ? Colors.red[100] : Colors.blue[100],
          child: Text(renter.name[0]),
        ),
        title: Text(renter.name),
        subtitle: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(renter.cpf),
            if (renter.isBlacklisted)
              Padding(
                padding: const EdgeInsets.only(top: 4),
                child: Row(
                  children: [
                    const Icon(Icons.warning, size: 14, color: Colors.red),
                    const SizedBox(width: 4),
                    Text(
                      'LISTA NEGRA',
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
          ],
        ),
        trailing: const Icon(Icons.chevron_right),
        onTap: () => {},
      ),
    );
  }
}
