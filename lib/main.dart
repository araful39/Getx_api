import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:getx_api/res/langueges/langueges.dart';

import 'package:getx_api/view/splash_screen.dart';

void main(){
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(

      home: SplashScreen(),
      translations: Langueges(),
      locale: Locale('en','US'),
      // getPages: AppRoutes.appRoutes(),
    );

  }
}
