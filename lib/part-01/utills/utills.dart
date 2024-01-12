import 'package:flutter/cupertino.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class Utils{

 static showSnackber(String title,String massage){
    Get.snackbar(title,massage);
  }
 static void fieldFocusChange(BuildContext context , FocusNode current , FocusNode  nextFocus ){
   current.unfocus();
   FocusScope.of(context).requestFocus(nextFocus);
 }
}