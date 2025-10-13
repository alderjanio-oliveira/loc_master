import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadComponent extends StatelessWidget {
  RxBool isLoading;
  Widget child;
  LoadComponent({super.key, required this.child, required this.isLoading});

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      if (isLoading.value) {
        return const Center(child: CircularProgressIndicator());
      }
      return child;
    });
  }
}
