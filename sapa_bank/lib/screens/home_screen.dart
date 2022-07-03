import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopping_cart/constant/colors.dart';
import 'package:shopping_cart/core/navigators/navigators.dart';
import 'package:shopping_cart/widgets/app_buttons.dart';
import 'package:shopping_cart/widgets/app_text.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 40,
            left: 16,
            right: 16,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  AppTextBold(
                    text: 'Hello Veegil',
                    size: 25,
                    weight: FontWeight.w700,
                    color: AppColors.font,
                  ),
                  SizedBox(
                    width: 45,
                    height: 45,
                    child: CircularProfileAvatar(
                      '',
                      radius: 30,
                      borderWidth: 3,
                      borderColor: Colors.white,
                      child: const Image(
                        image: AssetImage('assets/user.png'),
                      ),
                    ),
                  ),
                ],
              ),
              const Gap(43),
              Container(
                height: 180,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: AppColors.primary,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Center(
                  child: Column(
                    children: [
                      const Gap(40),
                      AppTextBold(
                        text: 'Total Savings',
                        size: 15,
                        color: AppColors.homeConText,
                        weight: FontWeight.w700,
                      ),
                      const Gap(20),
                      AppTextBold(
                        text: 'N50,000.10',
                        size: 32,
                        color: AppColors.white,
                        weight: FontWeight.w500,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
