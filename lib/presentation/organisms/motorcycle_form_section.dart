import 'package:flutter/material.dart';
import 'package:loc_master/presentation/molecules/forms/motorcycle_form.dart';

class MotorcycleFormSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController modelController;
  final TextEditingController plateController;
  final TextEditingController manufacturerController;
  final TextEditingController descriptionController;
  final TextEditingController financialStatusController;
  final TextEditingController instalmentController;
  final TextEditingController priceInstallmentController;
  final VoidCallback onSubmit;
  final bool isLoading;

  const MotorcycleFormSection({
    super.key,
    required this.formKey,
    required this.modelController,
    required this.plateController,
    required this.manufacturerController,
    required this.descriptionController,
    required this.financialStatusController,
    required this.instalmentController,
    required this.priceInstallmentController,
    required this.onSubmit,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            MotorcycleForm(
              formKey: formKey,
              modelController: modelController,
              plateController: plateController,
              manufacturerController: manufacturerController,
              descriptionController: descriptionController,
              financialStatusController: financialStatusController,
              instalmentController: instalmentController,
              priceInstallmentController: priceInstallmentController,
              onSubmit: onSubmit,
              isLoading: isLoading,
            ),
          ],
        ),
      ),
    );
  }
}
