import 'dart:async';

import 'package:get/get.dart';
import 'package:getx_api/res/routes/routes_name.dart';

class SplashService{


  void isLogin(){
    Timer(Duration(seconds: 5),
       ()=>Get.toNamed(RouteName.loginScreen));
}
}