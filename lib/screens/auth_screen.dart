import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';
import 'package:shopping_cart/constant/app_asset.dart';
import 'package:shopping_cart/constant/colors.dart';
import 'package:shopping_cart/core/navigators/navigators.dart';
import 'package:shopping_cart/widgets/app_buttons.dart';
import 'package:shopping_cart/widgets/app_text.dart';

class AuthScreen extends StatefulWidget {
  AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() => _AuthScreenState();
}

class _AuthScreenState extends State<AuthScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 141,
                left: 47,
                right: 47,
              ),
              child: Center(
                child: Column(
                  children: [
                    SizedBox(
                      width: 320,
                      height: 320,
                      child: SvgPicture.asset(
                        AppAsset.login,
                        width: double.maxFinite,
                        height: double.maxFinite,
                      ),
                    ),
                    const Gap(45),
                    AppTextBold(
                      text: 'Welcome to SpaceX',
                      weight: FontWeight.w700,
                      size: 30,
                      color: AppColors.font,
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              bottom: 30,
              left: 16,
              right: 16,
            ),
            child: Column(
              children: [
                // GestureDetector(
                //   onTap: (() => Navigator.pushNamed(
                //         context,
                //         Routes.register,
                //       )),
                //   child: AppButtons(
                //     text: 'CREATE YOUR FREE ACCOUNT',
                //     size: double.maxFinite,
                //     color: AppColors.white,
                //     backgroundColor: AppColors.primary,
                //   ),
                // ),
                // const Gap(20),
                GestureDetector(
                  onTap: (() => Navigator.pushNamed(
                        context,
                        Routes.login,
                      )),
                  child: AppButtons(
                    text: 'LOG INTO YOUR ACCOUNT',
                    size: double.maxFinite,
                    color: AppColors.font,
                    backgroundColor: AppColors.white,
                    borderColor: AppColors.font,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
