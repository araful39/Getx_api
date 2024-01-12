import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/res/colors/app_color.dart';
import 'package:getx_api/view_model/services/splash_service.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

SplashService splashService=SplashService();
@override
  void initState() {
 splashService.isLogin();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
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
