import 'package:flutter/material.dart';
import 'package:getx_api/res/colors/app_color.dart';

class RoundButton extends StatelessWidget {
  final VoidCallback onPress;
  final String title;
  final double height, width;
  final Color buttonColor;
  final Color buttonTextColor;
  RoundButton(
      {super.key,
      required this.title,
      required this.onPress,
      this.width = 50,
      this.height = 60, this.buttonColor=Colors.blue,
        this.buttonTextColor=Colors.black});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          color: buttonColor,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Center(
          child: Text(
            title,
            style: TextStyle(color: AppColor.buttonTextColor),
          ),
        ),
      ),
    );
  }
}
