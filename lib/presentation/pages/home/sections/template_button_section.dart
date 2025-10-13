import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/molecules/buttons/label_button.dart';
import 'package:loc_master/presentation/pages/shared/language_selector.dart';
import 'package:loc_master/presentation/routes/app_pages.dart';
import 'package:loc_master/presentation/templates/two_button_line.dart';

class TemplateButtonSection extends StatelessWidget {
  const TemplateButtonSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const LanguageSelector(),
        SizedBox(height: 20),
        TwoButtonLine(
          firstButton: MLabelButton(
              icon: const Icon(Icons.account_box_rounded),
              onPressed: () => Get.toNamed('/tenants'),
              label: 'tenant'.tr),
          secondButton: MLabelButton(
              icon: const Icon(Icons.car_rental),
              onPressed: () => Get.toNamed('/vehicles'),
              label: 'vehicle'.tr),
        ),
        SizedBox(height: 20),
        TwoButtonLine(
          firstButton: MLabelButton(
            icon: const Icon(Icons.find_in_page),
            onPressed: () => Get.toNamed('/search'),
            label: 'search'.tr,
          ),
          secondButton: MLabelButton(
            icon: const Icon(Icons.payment),
            onPressed: () => Get.toNamed(Routes.RENTALS),
            label: 'payments'.tr,
          ),
        ),
      ],
    );
    ;
  }
}
