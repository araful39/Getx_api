import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/res/colors/app_color.dart';
import 'package:getx_api/res/routes/routes_name.dart';
import 'package:getx_api/view/login_screen.dart';
import 'package:getx_api/view_model/services/splash_service.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

// SplashService splashService=SplashService();
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2),(){
      Get.off(LoginScreen());
    });
    return Scaffold(
      backgroundColor: AppColor.tealColor,
      body: Center(
        child: Text(
          'welcome_back'.tr,
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
