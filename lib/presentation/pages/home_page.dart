import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/controllers/home_controller.dart';
import 'package:loc_master/presentation/routes/app_pages.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HomePage')),
      body: SafeArea(child: getButtons()),
    );
  }
}

getButtons() {
  return Column(
    children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MHomeButton(
              icon: const Icon(Icons.account_box_rounded),
              onPressed: () => Get.toNamed('/tenants'),
              label: 'Locatário'),
          MHomeButton(
              icon: const Icon(Icons.car_rental),
              onPressed: () => Get.toNamed('/vehicles'),
              label: 'Veículo'),
        ],
      ),
      SizedBox(height: 20),
      Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          MHomeButton(
              icon: const Icon(Icons.find_in_page),
              onPressed: () => Get.toNamed('/search'),
              label: 'Consulta'),
          MHomeButton(
              icon: const Icon(Icons.payment),
              onPressed: () => Get.toNamed(Routes.RENTALS),
              label: 'Pagamento'),
        ],
      ),
    ],
  );
}

class MHomeButton extends StatelessWidget {
  final String? label;
  final String? tooltip;
  final Icon icon;
  final VoidCallback onPressed;
  const MHomeButton(
      {super.key,
      required this.icon,
      required this.onPressed,
      this.label,
      this.tooltip});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        IconButton(
          onPressed: onPressed,
          icon: icon,
          iconSize: 50,
          color: Colors.blue,
          tooltip: tooltip ?? 'Tooltip',
          padding: const EdgeInsets.all(10),
          splashColor: Colors.blueAccent,
          highlightColor: Colors.blue[100],
          hoverColor: Colors.blue[50],
          focusColor: Colors.blue[200],
          disabledColor: Colors.grey,
          alignment: Alignment.center,
          visualDensity: VisualDensity.adaptivePlatformDensity,
          splashRadius: 30,
          focusNode: FocusNode(),
          enableFeedback: true,
          autofocus: false,
        ),
        const SizedBox(height: 10),
        Text(label ?? 'Label', style: const TextStyle(fontSize: 16)),
      ],
    );
  }
}
