import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

class LoginController extends GetxController{
var isTrue=false.obs;
  final emailController = TextEditingController().obs ;
  final password = TextEditingController().obs ;

  final emailFocusNode=FocusNode().obs;
  final passFocusNode=FocusNode().obs;


void getPassword(){
  isTrue.value=!isTrue.value;
}
}




