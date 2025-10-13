import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/config/utils.dart';
import 'package:loc_master/presentation/atoms/inputs/primary_input.dart';
import 'package:loc_master/presentation/controllers/details_renters_controller.dart';
import 'package:loc_master/presentation/organisms/dialog_custom.dart';
import 'package:loc_master/presentation/organisms/list/list_builder_organism.dart';
import 'package:loc_master/presentation/templates/load_component.dart';

class PaymentSessionWidget extends StatelessWidget {
  final DetailsRetersController controller;

  const PaymentSessionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    if (controller.isLoading.value) {
      return const Center(child: CircularProgressIndicator());
    }
    return Column(
      children: [
        IconButton(
          onPressed: () => showDialog(
              context: context,
              builder: (context) {
                return DialogCustom(
                  title: 'Add Payment',
                  customContent: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PrimaryInput(
                        label: 'Price',
                        controller: controller.paymentPrice,
                        keyboardType: TextInputType.number,
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        readOnly: true, // Impede edição manual
                        decoration: const InputDecoration(
                          labelText: 'Data',
                          suffixIcon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(),
                        ),
                        controller: controller.paymentDate,
                        onTap: () async {
                          controller.selectedDate.value =
                              await Utils().selectDate(context);
                          controller.paymentDate.text =
                              controller.selectedDate.value?.toString() ?? '';
                        },
                      ),
                    ],
                  ),
                  onPressed: () {
                    controller.addPaymentSession();
                    Get.back();
                  },
                  onCancel: () => Get.back(),
                );
              }),
          icon: const Icon(Icons.add_circle_outline_sharp),
        ),
        Obx(
          () {
            return LoadComponent(
              isLoading: controller.isLoading,
              child: controller.payments.isEmpty
                  ? const Text('No payments found for this renter.')
                  : ListBuilderOrganism(
                      list: controller.payments,
                      keyTitle: 'price',
                      keySubtitle: 'date',
                      isDate: true,
                    ),
            );
          },
        ),
      ],
    );
  }
}
