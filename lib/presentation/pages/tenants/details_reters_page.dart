import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:loc_master/presentation/atoms/inputs/primary_input.dart';
import 'package:loc_master/presentation/atoms/text/text_title_atomo.dart';
import 'package:loc_master/presentation/controllers/details_renters_controller.dart';
import 'package:loc_master/presentation/organisms/dialog_custom.dart';
import 'package:loc_master/presentation/organisms/list/list_builder_organism.dart';

class DetailsRetersPage extends GetView<DetailsRetersController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('DetailsRetersPage')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    TextTitleAtom(
                        title: 'Renter Name: ${controller.renter.value.name}'),
                    SubTitleAtom(
                        subtitle: 'CNH: ${controller.renter.value.cnh}'),
                    SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Chip(
                            label: Text(
                                'Phone:  ${controller.renter.value.phone}')),
                      ],
                    ),
                    Chip(
                      label:
                          Text('Address: ${controller.renter.value.address}'),
                    ),
                    Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Chip(
                              label: Text(controller.vehicle.value != null
                                  ? 'Vehicle: ${controller.vehicle.value!.name} : ${controller.vehicle.value!.plate}'
                                  : 'No vehicle assigned'),
                            ),
                            SizedBox(width: 15),
                            IconButton(
                              onPressed: () {
                                if (controller.rental.value == null) {
                                  controller.vehicleLoadSession();
                                } else {
                                  controller
                                      .deleteRental(controller.rental.value!);
                                }
                              },
                              icon: Icon(
                                  controller.rental.value == null
                                      ? Icons.link
                                      : Icons.link_off,
                                  color: Colors.blue),
                            ),
                          ],
                        )),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        IconButton(
                          onPressed: () => (),
                          icon: Icon(Icons.edit, color: Colors.blue),
                        ),
                        SizedBox(width: 15),
                        IconButton(
                          onPressed: () => (),
                          icon: Icon(Icons.delete, color: Colors.blue),
                        ),
                        SizedBox(width: 15),
                        IconButton(
                          onPressed: () => controller.blockRenter(),
                          icon: Obx(() => Icon(Icons.block_rounded,
                              color: controller.renter.value.isBlacklisted
                                  ? Colors.red
                                  : Colors.blue)),
                        ),
                        SizedBox(width: 15),
                        IconButton(
                          onPressed: () => controller.eventsLoad(),
                          icon: Icon(Icons.menu_book_sharp, color: Colors.blue),
                        ),
                        SizedBox(width: 15),
                        IconButton(
                          onPressed: () => controller.paymentsLoad(),
                          icon: Icon(Icons.payment_rounded, color: Colors.blue),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            Obx(() {
              if (controller.paymentSession.value) {
                return PaymentSessionWidget(controller: controller);
              }
              if (controller.eventSession.value) {
                return EventSessionWidget(controller: controller);
              }
              if (controller.vehicleSession.value) {
                return VehicleSessionWidget(controller: controller);
              }
              return Container();
            }),
          ],
        ),
      ),
    );
  }
}

class PaymentSessionWidget extends StatelessWidget {
  final DetailsRetersController controller;

  const PaymentSessionWidget({super.key, required this.controller});

  Future<DateTime?> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate:
          DateTime.now().subtract(const Duration(days: 365)), // 1 ano atrás
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            dialogBackgroundColor: Colors.white,
            dialogTheme: DialogThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    return picked;
  }

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
                              await _selectDate(context);
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
          icon: Icon(Icons.add_circle_outline_sharp),
        ),
        controller.payments.isEmpty
            ? const Text('No payments found for this renter.')
            : ListBuilderOrganism(
                list: controller.payments,
                keyTitle: 'price',
                keySubtitle: 'date',
                isDate: true,
              ), // ← Sem Expanded
      ],
    );
  }
}

class EventSessionWidget extends StatelessWidget {
  final DetailsRetersController controller;

  const EventSessionWidget({super.key, required this.controller});

  Future<DateTime?> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate:
          DateTime.now().subtract(const Duration(days: 365)), // 1 ano atrás
      lastDate: DateTime(2100),
      builder: (context, child) {
        return Theme(
          data: Theme.of(context).copyWith(
            dialogBackgroundColor: Colors.white,
            dialogTheme: DialogThemeData(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(16),
              ),
            ),
          ),
          child: child!,
        );
      },
    );

    return picked;
  }

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
                  title: 'Add Event',
                  customContent: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      PrimaryInput(
                        label: 'Description',
                        controller: controller.eventDescription,
                      ),
                      SizedBox(height: 16),
                      TextFormField(
                        readOnly: true,
                        decoration: const InputDecoration(
                          labelText: 'Date',
                          suffixIcon: Icon(Icons.calendar_today),
                          border: OutlineInputBorder(),
                        ),
                        controller: controller.eventDate,
                        onTap: () async {
                          controller.selectedEventDate.value =
                              await _selectDate(context);
                          controller.eventDate.text =
                              controller.selectedEventDate.value?.toString() ??
                                  '';
                        },
                      ),
                    ],
                  ),
                  onPressed: () {
                    controller.addEventSession();
                    Get.back();
                  },
                  onCancel: () => Get.back(),
                );
              }),
          icon: Icon(Icons.add_circle_outline_sharp),
        ),
        controller.events.isEmpty
            ? const Text('No events found for this renter.')
            : ListBuilderOrganism(
                list: controller.events,
                keyTitle: 'description',
                keySubtitle: 'date',
                isDate: true,
              ),
      ],
    );
  }
}

class VehicleSessionWidget extends StatelessWidget {
  final DetailsRetersController controller;

  const VehicleSessionWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    if (controller.isLoading.value) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      children: [
        IconButton(
          onPressed: () {},
          icon: Icon(Icons.add_circle_outline_sharp),
        ),
        controller.vehicles.isEmpty
            ? const Text('No vehicles found for this renter.')
            : ListBuilderOrganism(
                list: controller.vehicles,
                keyTitle: 'name',
                keySubtitle: 'plate',
                onLongPress: (element) => controller.chooseVehicle(element),
              ),
      ],
    );
  }
}
