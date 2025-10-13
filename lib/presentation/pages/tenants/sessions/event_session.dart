import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/config/utils.dart';
import 'package:loc_master/presentation/atoms/inputs/primary_input.dart';
import 'package:loc_master/presentation/controllers/details_renters_controller.dart';
import 'package:loc_master/presentation/organisms/dialog_custom.dart';
import 'package:loc_master/presentation/organisms/list/list_builder_organism.dart';

class EventSessionWidget extends StatelessWidget {
  final DetailsRetersController controller;

  const EventSessionWidget({super.key, required this.controller});

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
                      const SizedBox(height: 16),
                      PrimaryInput(
                        label: 'Date',
                        readOnly: true,
                        controller: controller.eventDate,
                        onTap: () async {
                          controller.selectedEventDate.value =
                              await Utils().selectDate(context);
                          controller.eventDate.text =
                              controller.selectedEventDate.value?.toString() ??
                                  '';
                        },
                      ),
                      const SizedBox(height: 16),
                    ],
                  ),
                  onPressed: () {
                    controller.addEventSession();
                    Get.back();
                  },
                  onCancel: () => Get.back(),
                );
              }),
          icon: const Icon(Icons.add_circle_outline_sharp),
        ),
        Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return controller.events.isEmpty
              ? const Text('No events found for this renter.')
              : ListBuilderOrganism(
                  list: controller.events,
                  keyTitle: 'description',
                  keySubtitle: 'date',
                  isDate: true,
                );
        })
      ],
    );
  }
}
