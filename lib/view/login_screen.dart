import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/res/colors/app_color.dart';

import 'package:getx_api/res/components/round_button.dart';
import 'package:getx_api/res/controller/login_controller.dart';

import 'home_page.dart';

class LoginScreen extends StatelessWidget {
   LoginScreen({super.key});

  final loginController = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double hieght = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        title: Text("login".tr),
        centerTitle: true,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 80),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextFormField(
                controller: loginController.emailController.value,
                focusNode: loginController.emailFocusNode.value,
                decoration: InputDecoration(
                    hintText: 'email_hint'.tr,
                    border: OutlineInputBorder(),
                    focusedBorder: OutlineInputBorder()),
              ),
              SizedBox(
                height: hieght * 0.02,
              ),
             Obx(() =>  TextFormField(
               obscureText: !loginController.isTrue.value,
               // obscuringCharacter: "*",
               controller: loginController.password.value,
               focusNode: loginController.passFocusNode.value,

               decoration: InputDecoration(
                   suffixIcon: TextButton(
                     onPressed: () {
                       loginController.getPassword();
                     },
                     child: loginController.isTrue.value
                         ?Text("Hide") :Text("Show")
                         ,
                   ),
                   hintText: 'pass_hint'.tr,
                   border: OutlineInputBorder(),
                   focusedBorder: OutlineInputBorder()),
             )),
              SizedBox(
                height: hieght * 0.02,
              ),
              RoundButton(
                title: 'login'.tr,
                onPress: () {
                  Get.to(HomePage);
                },
                height: 50,
                width: width * 1,
                buttonColor: AppColor.buttonColor,
              ),
            ],
          ),
        ),
      ),
    );
  }
}

