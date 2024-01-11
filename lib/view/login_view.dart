
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getx_api/res/colors/app_color.dart';
import 'package:getx_api/res/components/round_button.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final loginView=Get.put(LoginView());
  @override
  Widget build(BuildContext context) {
    double width=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("login".tr),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          children: [
       TextFormField(

         decoration: InputDecoration(
           hintText:'email_hint'.tr
         ),
       ),
            RoundButton(
              title: 'login'.tr,
              onPress: () {},
              height: 50,
              width: width*0.6,
              buttonColor: AppColor.buttonColor,
            ),
          ],
        ),
      ),
    );
  }
}
