import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/presentation/controllers/home_controller.dart';
import 'package:loc_master/presentation/pages/home/sections/template_button_section.dart';

class HomePage extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('home'.tr)),
      body: SafeArea(child: TemplateButtonSection()),
    );
  }
}
