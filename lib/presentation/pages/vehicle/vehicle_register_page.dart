import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllers/motorcycle_register_controller.dart';
import '../../organisms/motorcycle_form_section.dart';

class VehicleRegisterPage extends GetView<MotorcycleRegisterController> {
  VehicleRegisterPage({super.key});

  // Crie a GlobalKey aqui, na página
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastrar Nova Moto'),
      ),
      body: SingleChildScrollView(
        child: MotorcycleFormSection(
          formKey: _formKey,
          modelController: controller.modelController,
          plateController: controller.plateController,
          manufacturerController: controller.manufacturerController,
          descriptionController: controller.describleController,
          financialStatusController: controller.financialStatusController,
          instalmentController: controller.instalmentController,
          priceInstallmentController: controller.priceInstallmentController,
          onSubmit: () => controller.registerMotorcycle(_formKey),
          isLoading: controller.isLoading.value,
        ),
      ),
    );
  }
}
