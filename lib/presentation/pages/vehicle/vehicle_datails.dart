import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/atoms/text/text_title_atomo.dart';
import 'package:loc_master/presentation/controllers/detail_vehicle_controller.dart';
import 'package:loc_master/presentation/organisms/dialog_custom.dart';
import 'package:loc_master/presentation/routes/app_pages.dart';

class VehicleDetailsPage extends GetView<VehicleDetailsController> {
  const VehicleDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final vehicle = controller.vehicle;
    controller.loadComplete();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Detalhes do Veículo'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Seção de Imagem (opcional)
            if (vehicle.imagePath != null)
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: FileImage(File(vehicle.imagePath!)),
                    fit: BoxFit.cover,
                  ),
                  borderRadius: BorderRadius.circular(8),
                ),
              ),

            // Seção Principal
            Card(
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TextTitleAtom(title: vehicle.model),
                    const SizedBox(height: 12),
                    _buildDetailRow('Placa', vehicle.plate),
                    _buildDetailRow('Marca', vehicle.brand),
                    _buildDetailRow('Modelo', vehicle.model),
                    _buildDetailRow('Ano', vehicle.year.toString()),
                    const SizedBox(height: 12),
                    IconButton(
                      onPressed: () {
                        Get.toNamed(Routes.MOTORCYCLE_REGISTER,
                            arguments: vehicle);
                      },
                      icon: const Icon(Icons.edit),
                    ),
                    if (vehicle.description?.isNotEmpty ?? false) ...[
                      const SizedBox(height: 12),
                      _buildDescription(vehicle.description!),
                    ],
                    Obx(
                      () {
                        return Text(
                          'Locatários: ${controller.selectedRenter.value?.name ?? "Nenhum locatário selecionado"}',
                          style: const TextStyle(fontSize: 16),
                        );
                      },
                    )
                  ],
                ),
              ),
            ),
            Obx(() {
              if (controller.isLoading.value) {
                return const Center(child: CircularProgressIndicator());
              }

              if (controller.renters.isEmpty) {
                return const Center(child: Text("Nenhum locatário encontrado"));
              }

              return ListView.builder(
                shrinkWrap: true,
                itemCount: controller.renters.length,
                itemBuilder: (context, index) {
                  final renter = controller.renters[index];
                  return ListTile(
                    onTap: () => showDialog(
                      context: context,
                      builder: (context) {
                        return DialogCustom(
                          title: 'Locatário',
                          content:
                              'Deseja alugar este veículo para ${renter.name}?',
                          buttonText: 'OK',
                          onPressed: () {
                            controller.rentalConfirm(vehicle, renter);
                            Get.back();
                          },
                          onCancel: () => Get.back(),
                        );
                      },
                    ),
                    leading: CircleAvatar(
                      backgroundColor: renter.isBlacklisted
                          ? Colors.red[100]
                          : Colors.blue[100],
                      child: Text(renter.name[0]),
                    ),
                    title: Text(renter.name),
                    subtitle: Text(renter.cpf),
                  );
                },
              );
            })
          ],
        ),
      ),
    );
  }

  Widget _buildDetailRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: 100,
            child: Text(
              '$label:',
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.grey,
              ),
            ),
          ),
          Expanded(
            child: Text(
              value,
              style: const TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildDescription(String description) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Descrição:',
          style: TextStyle(
            fontWeight: FontWeight.bold,
            color: Colors.grey,
          ),
        ),
        const SizedBox(height: 4),
        Text(
          description,
          style: const TextStyle(fontSize: 15),
        ),
      ],
    );
  }
}
