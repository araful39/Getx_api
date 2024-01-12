import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_api/part-01/res/langueges/langueges.dart';
import 'package:getx_api/part-01/view/splash_screen.dart';
import 'package:getx_api/part-02/view/login_screen.dart';


void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home: LoginPage02(),
      translations: Langueges(),
      locale: Locale('en','US'),
      // getPages: AppRoutes.appRoutes(),
    );

  }
}
