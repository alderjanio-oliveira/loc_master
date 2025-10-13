import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/atoms/chip/atomic_chip.dart';
import 'package:loc_master/presentation/atoms/text/text_title_atomo.dart';
import 'package:loc_master/presentation/controllers/details_renters_controller.dart';
import 'package:loc_master/presentation/pages/tenants/sessions/event_session.dart';
import 'package:loc_master/presentation/pages/tenants/sessions/payment_sessions.dart';
import 'package:loc_master/presentation/pages/tenants/sessions/vehicle_session.dart';

class TenantDetailsPage extends GetView<DetailsRetersController> {
  const TenantDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('DetailsRetersPage')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
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
                    const SizedBox(height: 8),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AtomicChip(
                            label: 'Phone:  ${controller.renter.value.phone}'),
                      ],
                    ),
                    AtomicChip(
                      label: 'Address: ${controller.renter.value.address}',
                    ),
                    Obx(() => Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            AtomicChip(
                              label: controller.vehicle.value != null
                                  ? 'Vehicle: ${controller.vehicle.value!.model} : ${controller.vehicle.value!.plate}'
                                  : 'No vehicle assigned',
                            ),
                            const SizedBox(width: 15),
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
                        const SizedBox(width: 15),
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
                        const SizedBox(width: 15),
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
