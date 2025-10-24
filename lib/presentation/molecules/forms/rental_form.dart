import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/core/constants/constantes.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/presentation/molecules/dateField/data_field.modelcule.dart';
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
  final RxInt selectedTenantId;
  final RxInt selectedVehicleId;

  final selectedDate = Rx<DateTime?>(DateTime.now());

  final VoidCallback onSubmit;
  final bool isLoading;

  RentalForm({
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
    required this.selectedTenantId,
    required this.selectedVehicleId,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SearchFieldMolecule<Renter>(
                hint: 'search-client'.tr,
                searchFunction: (query) async {
                  return tenants.toList();
                },
                itemBuilder: (tenant) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(tenant.name),
                ),
                onSelect: (dynamic client) {
                  selectedTenantId.value = client.id;
                },
                fieldController: tenantsController,
              ),
              const SizedBox(height: 16),
              SearchFieldMolecule(
                hint: 'search-vehicle'.tr,
                searchFunction: (query) async {
                  // Simula chamada API/DB
                  await Future.delayed(Duration(milliseconds: 300));
                  return vehicles.toList();
                },
                itemBuilder: (vehicle) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text(vehicle.model),
                ),
                onSelect: (dynamic vehicle) {
                  selectedVehicleId.value = vehicle.id;
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
              DateFieldMolecule(
                selectedDate: selectedDate,
                dateController: dueDayController,
                label: 'due-date'.tr,
              ),
              const SizedBox(height: 16),
              DropdownButton<String>(
                value: 'WEEKLY',
                items: Constantes.rentalPeriods.entries.map((entry) {
                  return DropdownMenuItem<String>(
                    value: entry.key,
                    child: Text(entry.value),
                  );
                }).toList(),
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
        ),
      ),
    );
  }
}
