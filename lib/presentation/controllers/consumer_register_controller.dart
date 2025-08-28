import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';

class ConsumerRegisterController extends GetxController {
  AppDatabase db;

  ConsumerRegisterController(this.db);

  // Remova a GlobalKey daqui e crie na página
  final nomeController = TextEditingController();
  final cpfController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();
  var isLoading = false.obs;

  Future<void> register(GlobalKey<FormState> formKey) async {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;

    try {
      await db.into(db.renters).insert(buildRenter());
      Get.back();
      Get.snackbar('Sucesso', 'Moto cadastrada com sucesso!');
    } catch (e) {
      Get.snackbar('Erro', 'Falha ao cadastrar moto');
    } finally {
      isLoading.value = false;
    }
  }

  buildRenter() {
    return Renter(
      name: nomeController.text,
      cpf: cpfController.text,
      phone: phoneController.text,
      address: addressController.text,
      cnh: cpfController.text,
      isBlacklisted: false,
    );
  }

  @override
  void onClose() {
    nomeController.dispose();
    cpfController.dispose();
    phoneController.dispose();
    addressController.dispose();
    super.onClose();
  }
}
