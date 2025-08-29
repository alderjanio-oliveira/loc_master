import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';

class TenantsController extends GetxController {
  AppDatabase db;
  RxList<Renter> tenants = <Renter>[].obs;
  RxBool isLoading = true.obs;

  TenantsController(this.db);

  load() async {
    try {
      final result = await db.select(db.renters).get();
      tenants.assignAll(result);
      print('Loaded tenants: ${tenants.length}');
    } catch (e) {
      Get.snackbar('Erro', 'Falha ao carregar locatários');
    } finally {
      isLoading.value = false;
    }
  }

  final nomeController = TextEditingController();
  final cpfController = TextEditingController();
  final phoneController = TextEditingController();
  final addressController = TextEditingController();

  Future<void> register(GlobalKey<FormState> formKey) async {
    if (!formKey.currentState!.validate()) return;

    isLoading.value = true;

    try {
      await db.into(db.renters).insert(buildRenter());
      Get.back();
      Get.snackbar('Sucesso', 'Usuário cadastrado com sucesso!');
    } catch (e) {
      Get.snackbar('Erro', 'Falha ao cadastrar usuário');
    } finally {
      isLoading.value = false;
    }
    await load();
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
