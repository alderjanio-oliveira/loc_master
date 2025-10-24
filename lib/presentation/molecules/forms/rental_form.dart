import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/presentation/molecules/search_field/search_field_molecule.dart';
import '../../atoms/inputs/primary_input.dart';
import '../../atoms/buttons/primary_button.dart';

class RentalForm extends StatelessWidget {
  final GlobalKey<FormState> formKey;
  final TextEditingController tenantsController;
  final TextEditingController vehiclesController;
  final TextEditingController valueController;
  final TextEditingController dueDayController;
  final TextEditingController periodController;
  final RxList<Renter> tenants;
  final RxList<Vehicle> vehicles;

  final VoidCallback onSubmit;
  final bool isLoading;

  const RentalForm({
    super.key,
    required this.formKey,
    required this.tenantsController,
    required this.vehiclesController,
    required this.valueController,
    required this.dueDayController,
    required this.periodController,
    required this.onSubmit,
    this.isLoading = false,
    required this.tenants,
    required this.vehicles,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: Column(
        children: [
          SearchFieldMolecule(
            hint: 'seahrch-client'.tr,
            searchFunction: (query) async {
              // Simula chamada API/DB
              await Future.delayed(Duration(milliseconds: 300));
              return tenants
                  .map((renter) => renter.name)
                  .where((c) => c.toLowerCase().contains(query.toLowerCase()))
                  .toList();
            },
            itemBuilder: (tenantController) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(tenantController),
            ),
            onSelect: (client) {
              print('Cliente selecionado: $client');
            },
            fieldController: tenantsController,
          ),
          const SizedBox(height: 16),
          SearchFieldMolecule(
            hint: 'search-vehicle'.tr,
            searchFunction: (query) async {
              // Simula chamada API/DB
              await Future.delayed(Duration(milliseconds: 300));
              return vehicles
                  .map((vehicle) => vehicle.model)
                  .where((c) => c.toLowerCase().contains(query.toLowerCase()))
                  .toList();
            },
            itemBuilder: (vehicle) => Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(vehicle),
            ),
            onSelect: (vehicle) {
              print('Veículo selecionado: $vehicle');
            },
            fieldController: vehiclesController,
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'value'.tr,
            keyboardType: TextInputType.number,
            controller: valueController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Por favor, insira o valor';
              }
              return null;
            },
          ),
          const SizedBox(height: 16),
          PrimaryInput(
            label: 'Telefone',
            controller: dueDayController,
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
          DropdownButton<String>(
            value: 'semanal'.tr,
            items: ['semanal', 'diaria', 'mensal', 'quinzenal']
                .map((lang) => DropdownMenuItem<String>(
                      value: lang,
                      child: Text(lang),
                    ))
                .toList(),
            onChanged: (String? value) {
              if (value != null) {
                periodController.text = value;
              }
            },
          ),
          const SizedBox(height: 24),
          PrimaryButton(
            text: 'cadastrar'.tr,
            onPressed: onSubmit,
            isLoading: isLoading,
          ),
        ],
      ),
    );
  }
}
