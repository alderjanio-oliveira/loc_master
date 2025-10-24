import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/controllers/rentals/rentals_register_controller.dart';
import 'package:loc_master/presentation/molecules/forms/rental_form.dart';

class RentalRegisterPage extends GetView<RentalRegisterController> {
  RentalRegisterPage({super.key});
  // Crie a GlobalKey aqui, na página
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('RentalRegisterPage')),
        body: RentalForm(
          formKey: _formKey,
          tenantsController: controller.tenantSearchController,
          vehiclesController: controller.vehicleSearchController,
          valueController: controller.rentalValueController,
          dueDayController: controller.rentalDueDayController,
          periodController: controller.rentalPeriodController,
          onSubmit: controller.onSubmit,
          tenants: controller.tenants,
          vehicles: controller.vehicles,
          selectedTenantId: controller.selectedTenantId,
          selectedVehicleId: controller.selectedVehicleId,
        ));
  }
}
