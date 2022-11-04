import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopping_cart/constant/colors.dart';
import 'app_text.dart';

// ignore: must_be_immutable
class AppButtons extends StatelessWidget {
  final Color color;
  String? text;
  IconData? icon;
  Color? iconColor;
  final Color backgroundColor;
  double size;
  double height;
  bool isIcon;
  final Color borderColor;

  AppButtons({
    Key? key,
    required this.text,
    this.icon,
    this.iconColor,
    this.isIcon = false,
    this.height = 50,
    required this.size,
    required this.color,
    required this.backgroundColor,
    this.borderColor = AppColors.primary,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: size,
      height: height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(width: 0.5, color: borderColor),
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
          : Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(
                    icon,
                    color: iconColor,
                    size: 31,
                  ),
                  const Gap(16),
                  AppTextBold(
                    text: text!,
                    color: color,
                    size: 15,
                    weight: FontWeight.w700,
                  ),
                ],
              ),
            ),
    );
  }
}
