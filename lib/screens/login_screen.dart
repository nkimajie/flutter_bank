import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/constant/app_asset.dart';
import 'package:shopping_cart/constant/colors.dart';
import 'package:shopping_cart/core/navigators/navigators.dart';
import 'package:shopping_cart/widgets/app_buttons.dart';
import 'package:shopping_cart/widgets/app_text.dart';

import '../providers/auth.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _phoneController = TextEditingController();
  final _password = TextEditingController();
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
                  const Gap(63),
                  AppTextBold(
                    text: 'Phone number',
                    weight: FontWeight.w400,
                    size: 15,
                    color: AppColors.font,
                  ),
                  const Gap(10),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: TextFormField(
                      controller: _phoneController,
                      style: const TextStyle(
                        color: AppColors.font,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Required*';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: '081XXXXXXXX',
                        hintStyle: const TextStyle(
                          color: AppColors.secondaryText,
                        ),
                        // hintText: 'Enter your first name',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: AppColors.secondaryText,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.font,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const Gap(21),
                  AppTextBold(
                    text: 'Password',
                    weight: FontWeight.w400,
                    size: 15,
                    color: AppColors.font,
                  ),
                  const Gap(10),
                  SizedBox(
                    width: double.maxFinite,
                    height: 50,
                    child: TextFormField(
                      controller: _phoneController,
                      style: const TextStyle(
                        color: AppColors.font,
                      ),
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Required*';
                        } else {
                          return null;
                        }
                      },
                      decoration: InputDecoration(
                        hintText: '**********',
                        hintStyle: const TextStyle(
                          color: AppColors.secondaryText,
                        ),
                        // hintText: 'Enter your first name',
                        contentPadding: const EdgeInsets.symmetric(
                          vertical: 18,
                          horizontal: 20,
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: const BorderSide(
                            color: AppColors.secondaryText,
                          ),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                            color: AppColors.font,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ),
                  const Gap(16),
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
            GestureDetector(
              onTap: () async {
                final response = await Provider.of<Auth>(context, listen: false)
                    .LoginUser(
                        phoneNumber: _phoneController.text.trim(),
                        password: _password.text.trim());

                if (response == true) {
                  // ignore: use_build_context_synchronously
                  Navigator.pushNamed(context, Routes.mainPage);
                } else {
                  return;
                }
              },
              child: AppButtons(
                text: 'LOG IN',
                size: double.maxFinite,
                color: AppColors.white,
                backgroundColor: AppColors.primary,
              ),
            ),
            const Gap(18),
            Row(
              children: [
                AppTextBold(
                  text: 'Do you not have a BankMe account? ',
                  size: 15,
                  weight: FontWeight.w300,
                  color: AppColors.font,
                ),
                GestureDetector(
                  onTap: () => Navigator.pushNamed(context, Routes.login),
                  child: AppTextBold(
                    text: 'Sign up here',
                    size: 15,
                    weight: FontWeight.w400,
                    color: AppColors.primary,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
