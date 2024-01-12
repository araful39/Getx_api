import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/res/colors/app_color.dart';

import 'package:getx_api/res/components/round_button.dart';
import 'package:getx_api/res/controller/login_controller.dart';
import 'package:getx_api/utills/utills.dart';
import 'package:getx_api/view/home_page.dart';

class LoginScreen extends StatelessWidget {
  LoginScreen({super.key});

  final loginController = Get.put(LoginController());
  final _formkey = GlobalKey<FormState>();

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
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Form(
              key: _formkey,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: hieght * 0.02,
                  ),
                  TextFormField(
                    textInputAction: TextInputAction.next,
                    controller: loginController.emailController.value,
                    focusNode: loginController.emailFocusNode.value,
                    validator: (value) {
                      if (value==null || value.isEmpty) {
                        return "Enter email";
                      }
                    },
                    onFieldSubmitted: (value) {
                      Utils.fieldFocusChange(
                          context,
                          loginController.emailFocusNode.value,
                          loginController.passFocusNode.value);
                    },
                    decoration: InputDecoration(
                        hintText: 'email_hint'.tr,
                        border: OutlineInputBorder(),
                        focusedBorder: OutlineInputBorder()),
                  ),
                  SizedBox(
                    height: hieght * 0.02,
                  ),
                  Obx(() => TextFormField(
                    textInputAction: TextInputAction.next,
                        obscureText: !loginController.isTrue.value,
                        obscuringCharacter: "*",

                        controller: loginController.passwordController.value,
                        focusNode: loginController.passFocusNode.value,
                        validator: (value) {
                          if (value==null || value.isEmpty) {
                           return 'Enter password';
                          }
                        },
                        onFieldSubmitted: (value) {
                          Utils.fieldFocusChange(
                              context,
                              loginController.emailFocusNode.value,
                              loginController.passFocusNode.value);
                        },
                        decoration: InputDecoration(
                            suffixIcon: TextButton(
                              onPressed: () {
                                loginController.getPassword() ;
                              },
                              child: loginController.isTrue.value
                                  ? Text("Hide")
                                  : Text("Show"),
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
                      if (_formkey.currentState!.validate()) {
                        if (loginController.emailController.value.text==
                            "email@gmail.com" ||
                            loginController.passwordController.value.text==
                                "password"
                        ) {
                          Get.to(HomePage());
                          loginController.emailController.value.clear();
                          loginController.passwordController.value.clear();
                        }
                        else {
                          Utils.showSnackber("Please correct information", "Enter correct email and password");
                        }
                      }
                      // Get.to(HomePage());
                    },
                    height: 50,
                    width: width * 1,
                    buttonColor: AppColor.buttonColor,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
