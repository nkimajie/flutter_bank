import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopping_cart/constant/colors.dart';
import 'package:shopping_cart/core/navigators/navigators.dart';
import 'package:shopping_cart/widgets/app_buttons.dart';
import 'package:shopping_cart/widgets/app_text.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.only(
              top: 40,
              left: 16,
              right: 16,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                  height: 100,
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    color: AppColors.primary,
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Center(
                    child: Column(
                      children: [
                        const Gap(10),
                        AppTextBold(
                          text: 'Account Balance',
                          size: 15,
                          color: AppColors.homeConText,
                          weight: FontWeight.w700,
                        ),
                        const Gap(20),
                        AppTextBold(
                          text: '5000BTC',
                          size: 32,
                          color: AppColors.white,
                          weight: FontWeight.w500,
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(30),
                Row(
                  children: [
                    Expanded(
                      child: AppButtons(
                        text: 'Deposit',
                        size: double.maxFinite,
                        color: AppColors.font,
                        backgroundColor: AppColors.deposit,
                        borderColor: AppColors.deposit,
                        isIcon: true,
                        icon: Icons.payment_outlined,
                        iconColor: AppColors.secondary,
                      ),
                    ),
                    // const Gap(22),
                    // Expanded(
                    //   child: AppButtons(
                    //     text: 'Transfer',
                    //     size: double.maxFinite,
                    //     color: AppColors.font,
                    //     backgroundColor: AppColors.withdraw,
                    //     borderColor: AppColors.withdraw,
                    //     isIcon: true,
                    //     icon: Icons.send_to_mobile,
                    //     iconColor: AppColors.secondryColor,
                    //   ),
                    // ),
                  ],
                ),
                const Gap(40),
                AppTextBold(
                  text: 'Take A Trip:',
                  size: 17,
                  weight: FontWeight.w700,
                  color: AppColors.font,
                ),
                const Gap(20),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
