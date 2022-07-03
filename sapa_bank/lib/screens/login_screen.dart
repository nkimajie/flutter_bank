import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shopping_cart/constant/app_asset.dart';
import 'package:shopping_cart/constant/colors.dart';
import 'package:shopping_cart/widgets/app_buttons.dart';
import 'package:shopping_cart/widgets/app_text.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 81,
          left: 16,
          right: 16,
          bottom: 30,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            GestureDetector(
              onTap: (() => Navigator.pop(context)),
              child: const Icon(
                Icons.clear,
                color: AppColors.font,
              ),
            ),
            const Gap(75),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: 400,
                    height: 88,
                    child: AppTextBold(
                      text: 'Sign into your Account',
                      weight: FontWeight.w700,
                      size: 35,
                      color: AppColors.primary,
                    ),
                  ),
                  const Gap(7),
                  AppTextBold(
                    text: 'Log into your BankMe account',
                    size: 17,
                    weight: FontWeight.w300,
                    color: AppColors.font,
                  ),
                  const Gap(7),
                  AppTextBold(
                    text: 'Have you forgotten your password?,',
                    size: 15,
                    weight: FontWeight.w400,
                    color: AppColors.font,
                  ),
                  const Gap(3),
                  AppTextBold(
                    text: 'click here to recover it',
                    size: 15,
                    weight: FontWeight.w300,
                    color: AppColors.primary,
                  ),
                ],
              ),
            ),
            AppButtons(
              text: 'LOG IN',
              size: double.maxFinite,
              color: AppColors.white,
              backgroundColor: AppColors.primary,
            ),
            const Gap(18),
            Row(
              children: [
                AppTextBold(
                  text: 'Do you already have a BankMe account? ',
                  size: 15,
                  weight: FontWeight.w300,
                  color: AppColors.font,
                ),
                AppTextBold(
                  text: 'Sign in here',
                  size: 15,
                  weight: FontWeight.w400,
                  color: AppColors.primary,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
