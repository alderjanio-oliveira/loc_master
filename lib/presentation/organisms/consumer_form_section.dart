import 'package:flutter/material.dart';
import 'package:loc_master/presentation/molecules/forms/consumer_form.dart';

class ComsumercycleFormSection extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nomeController;
  final TextEditingController cpfController;
  final TextEditingController phoneController;
  final TextEditingController addressController;

  final VoidCallback onSubmit;
  final bool isLoading;

  const ComsumercycleFormSection({
    super.key,
    required this.formKey,
    required this.nomeController,
    required this.cpfController,
    required this.phoneController,
    required this.addressController,
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
            ConsumerForm(
              formKey: formKey,
              nameController: nomeController,
              cpfController: cpfController,
              phoneController: phoneController,
              addressController: addressController,
              onSubmit: onSubmit,
              isLoading: isLoading,
            ),
          ],
        ),
      ),
    );
  }
}
