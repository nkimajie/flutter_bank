import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

import '../../constant/colors.dart';
import '../../widgets/app_text.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColors.white,
          title: AppTextBold(
            text: 'Transaction',
            size: 24,
            color: AppColors.font,
            weight: FontWeight.w700,
          ),
          elevation: 1,
        ),
        backgroundColor: AppColors.white,
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 20,
            ),
            child: Column(
              children: [
                Container(
                  width: double.maxFinite,
                  height: 66,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.font,
                      width: 0.2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: AppColors.deposit,
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Icon(
                                Icons.arrow_downward,
                                color: AppColors.secondary,
                              ),
                            ),
                            const Gap(24),
                            AppTextBold(
                              text: 'N4000',
                              size: 25,
                              color: AppColors.font,
                              weight: FontWeight.w300,
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          color: AppColors.font,
                        ),
                      ],
                    ),
                  ),
                ),
                const Gap(15),
                Container(
                  width: double.maxFinite,
                  height: 66,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: AppColors.font,
                      width: 0.2,
                    ),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 50,
                              height: 50,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 235, 198, 198),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: const Icon(
                                Icons.arrow_upward,
                                color: Colors.red,
                              ),
                            ),
                            const Gap(24),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                AppTextBold(
                                  text: 'N4000',
                                  size: 25,
                                  color: AppColors.font,
                                  weight: FontWeight.w300,
                                ),
                                AppTextBold(
                                  text: 'To: 08165678165',
                                  size: 14,
                                  color: AppColors.secondaryText,
                                  weight: FontWeight.w300,
                                ),
                              ],
                            ),
                          ],
                        ),
                        const Icon(
                          Icons.keyboard_arrow_right,
                          color: AppColors.font,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
