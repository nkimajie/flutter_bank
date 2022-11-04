import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopping_cart/widgets/app_buttons.dart';
import 'package:shopping_cart/widgets/app_text.dart';

import '../constant/colors.dart';
import '../core/navigators/navigators.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          left: 20,
          right: 20,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 200,
              height: 200,
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(100),
              ),
              child: const Padding(
                padding: EdgeInsets.all(20),
                child: Icon(
                  Icons.check_circle_outline,
                  color: AppColors.white,
                  size: 100,
                ),
              ),
            ),
            const Gap(20),
            SizedBox(
              width: 200,
              child: AppTextBold(
                text: 'Order booked succesfully',
                size: 25,
                color: AppColors.black,
                weight: FontWeight.w700,
                textAlign: TextAlign.center,
              ),
            ),
            const Gap(20),
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                Routes.homePage,
              ),
              child: AppButtons(
                text: 'Home',
                size: double.infinity,
                color: AppColors.white,
                backgroundColor: AppColors.mainColor,
                borderColor: AppColors.mainColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
