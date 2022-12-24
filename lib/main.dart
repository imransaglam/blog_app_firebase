import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:loginregister/di.dart';
import 'package:loginregister/modules/register/register_screen.dart';
import 'package:loginregister/routes/app_pages.dart';

import 'modules/login/login_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await DependencyInjection.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(),
      initialRoute: Routes.LOGIN,
      enableLog: true,
      getPages: AppPages.routes,
    );
  }
}

