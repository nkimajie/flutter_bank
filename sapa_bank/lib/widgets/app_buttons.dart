import 'package:flutter/material.dart';
import 'package:shopping_cart/constant/colors.dart';
import 'app_text.dart';

// ignore: must_be_immutable
class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  final Color backgroundColor;
  double size;
  bool isIcon;
  final Color borderColor;

  AppButtons({
    Key? key,
    required this.text,
    this.icon,
    this.isIcon = false,
    required this.size,
    required this.color,
    required this.backgroundColor,
    this.borderColor = AppColors.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: 50,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: backgroundColor,
      ),
      child: isIcon == false
          ? Center(
              child: AppTextBold(
              text: text!,
              color: color,
              size: 15,
              weight: FontWeight.w700,
            ))
          : Center(
              child: Icon(
              icon,
              color: color,
            )),
    );
  }
}
