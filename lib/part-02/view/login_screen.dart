import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/get_instance.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:getx_api/part-02/controller/controller.dart';

class LoginPage02 extends StatefulWidget {
  const LoginPage02({super.key});

  @override
  State<LoginPage02> createState() => _LoginPage02State();
}

class _LoginPage02State extends State<LoginPage02> {
  final _controller = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login"),
        centerTitle: true,
      ),
      body: Center(
        child: Form(
          key: _formKey,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: _controller.emailController.value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      Get.snackbar("Hi", "Enter email");
                      return "Enter email";
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Email", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  controller: _controller.passwordController.value,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return "Enter password";
                    }
                  },
                  decoration: InputDecoration(
                      hintText: "Password", border: OutlineInputBorder()),
                ),
                SizedBox(
                  height: 10,
                ),
               Obx(() {
                 return _controller.loading.value ? CircularProgressIndicator(): ElevatedButton(
                     onPressed: () {



                       if (_formKey.currentState!.validate()) {
                         _controller.loginApi();
                         // if (controller.emailController.value.text.toString().isNotEmpty &&
                         //     controller
                         //         .passwordController.value.text.toString().isNotEmpty) {
                         //   // Get.to(HomePage02());
                         //   Get.snackbar("Thanks", "Successfully login");
                         // }else{
                         //   Get.snackbar("Please", "Submited");
                         // }
                       }
                     },
                     child: Text("Login"));
               })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
