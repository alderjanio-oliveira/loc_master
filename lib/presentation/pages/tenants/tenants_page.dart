import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/controllers/tenants_controller.dart';
import 'package:loc_master/presentation/organisms/list/list_builder_organism.dart';
import 'package:loc_master/presentation/routes/app_pages.dart';

class TenantsPage extends GetView<TenantsController> {
  const TenantsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Locatários'),
        actions: [
          IconButton(
            icon: Icon(Icons.refresh),
            onPressed: () {
              controller.load();
            },
          ),
        ],
      ),
      body: SafeArea(
        child: Obx(() {
          if (controller.isLoading.value) {
            return const Center(child: CircularProgressIndicator());
          }
          return ListBuilderOrganism(
            list: controller.tenants,
            keyTitle: 'name',
            keySubtitle: 'cnh',
            onPressedParam: (item) {
              Get.toNamed(Routes.DETAILS_RENTERS, arguments: item);
            },
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Get.toNamed(Routes.TENANT_REGISTER);
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
