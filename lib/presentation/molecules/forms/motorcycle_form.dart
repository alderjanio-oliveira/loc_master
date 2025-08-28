import 'package:flutter/material.dart';
import '../../atoms/inputs/primary_input.dart';
import '../../atoms/buttons/primary_button.dart';

class MotorcycleForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController modelController;
  final TextEditingController plateController;
  final TextEditingController dailyRateController;
  final TextEditingController manufacturerController;
  final TextEditingController descriptionController;
  final TextEditingController financialStatusController;
  final TextEditingController instalmentController;
  final TextEditingController priceInstallmentController;
  final VoidCallback onSubmit;
  final bool isLoading;

  const MotorcycleForm({
    super.key,
    required this.formKey,
    required this.modelController,
    required this.plateController,
    required this.dailyRateController,
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
    return Form(
      key: formKey,
      child: Column(
        children: [
          PrimaryInput(
            label: 'Modelo',
            controller: modelController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o modelo';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'Placa',
            controller: plateController,
            validator: (value) {
              if (value == null ||
                  value.isEmpty ||
                  (value.length < 7 || value.length > 8)) {
                return 'Por favor, insira a placa corretamente';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'Valor Diária',
            controller: dailyRateController,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o valor';
              }
              if (double.tryParse(value) == null) {
                return 'Valor inválido';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'Fabricante',
            controller: manufacturerController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o fabricante';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'Descrição',
            controller: descriptionController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira a descrição';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'Status Financeiro',
            controller: financialStatusController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o status financeiro';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'Número de Parcelas',
            controller: instalmentController,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o número de parcelas';
              }
              if (int.tryParse(value) == null) {
                return 'Número inválido';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'Valor da Parcela',
            controller: priceInstallmentController,
            keyboardType: TextInputType.number,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o valor da parcela';
              }
              if (double.tryParse(value) == null) {
                return 'Valor inválido';
              }
              return null;
            },
          ),
          const SizedBox(height: 24),
          PrimaryButton(
            text: 'Cadastrar Moto',
            onPressed: onSubmit,
            isLoading: isLoading,
          ),
        ],
      ),
    );
  }
}
