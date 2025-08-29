import 'package:flutter/material.dart';
import '../../atoms/inputs/primary_input.dart';
import '../../atoms/buttons/primary_button.dart';

class ConsumerForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController nameController;
  final TextEditingController cpfController;
  final TextEditingController phoneController;
  final TextEditingController addressController;

  final VoidCallback onSubmit;
  final bool isLoading;

  const ConsumerForm({
    super.key,
    required this.formKey,
    required this.nameController,
    required this.cpfController,
    required this.phoneController,
    required this.addressController,
    required this.onSubmit,
    this.isLoading = false,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          PrimaryInput(
            label: 'Nome',
            controller: nameController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o nome';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'CPF',
            keyboardType: TextInputType.number,
            controller: cpfController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o CPF';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'Telefone',
            controller: phoneController,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o telefone';
              }
              if (double.tryParse(value) == null) {
                return 'Valor inválido';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'Endereço',
            controller: addressController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o endereço';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          PrimaryButton(
            text: 'Cadastrar',
            onPressed: onSubmit,
            isLoading: isLoading,
          ),
        ],
      ),
    );
  }
}
