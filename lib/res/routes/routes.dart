import 'package:get/get.dart';
import 'package:getx_api/res/routes/routes_name.dart';

import 'package:getx_api/view/login_screen.dart';
import 'package:getx_api/view/splash_screen.dart';

class AppRoutes{
  static appRoutes()=>[
    GetPage(name: RouteName.splashScreen, page: ()=> SplashScreen(),
    transitionDuration: Duration(milliseconds: 250),
    transition: Transition.leftToRightWithFade),

    GetPage(name: RouteName.loginScreen, page: ()=> LoginScreen(),
    transitionDuration: Duration(milliseconds: 250),
    transition: Transition.leftToRightWithFade),

    // GetPage(name: RouteName.loginView, page: ()=> HomePage(),
    // transitionDuration: Duration(milliseconds: 250),
    // transition: Transition.leftToRightWithFade),

  ];
}