import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:loc_master/data/database/database.dart';
import 'package:loc_master/presentation/bindings/home_bindings.dart';
import 'package:loc_master/presentation/routes/app_pages.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p; // <-- Add this line

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // APENAS PARA DESENVOLVIMENTO - REMOVA DEPOIS
  // await deleteDatabase();

  runApp(const MyApp());
}

Future<void> deleteDatabase() async {
  final dbFolder = await getApplicationSupportDirectory();
  final file = File(p.join(dbFolder.path, 'my_database.sqlite'));
  if (await file.exists()) {
    await file.delete();
    print('✅ Banco de dados deletado com sucesso!');
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.HOME,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      defaultTransition: Transition.fade,
      initialBinding: HomeBinding(),
      getPages: AppPages.routes,
    );
  }
}
