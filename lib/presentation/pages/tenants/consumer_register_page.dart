import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/controllers/consumer_register_controller.dart';
import 'package:loc_master/presentation/organisms/consumer_form_section.dart';

class ConsumerRegisterPage extends GetView<ConsumerRegisterController> {
  ConsumerRegisterPage({super.key});

  // Crie a GlobalKey aqui, na página
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Novo Locatário'),
      ),
      body: SingleChildScrollView(
        child: ComsumercycleFormSection(
          formKey: _formKey,
          nomeController: controller.nomeController,
          cpfController: controller.cpfController,
          phoneController: controller.phoneController,
          addressController: controller.addressController,
          onSubmit: () => controller.register(_formKey),
          isLoading: controller.isLoading.value,
        ),
      ),
    );
  }
}
