import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopping_cart/core/navigators/navigators.dart';
import 'package:shopping_cart/widgets/app_buttons.dart';
import 'package:shopping_cart/widgets/app_text.dart';

import '../constant/colors.dart';

class PurchaseOrder extends StatefulWidget {
  const PurchaseOrder({Key? key}) : super(key: key);

  @override
  State<PurchaseOrder> createState() => _PurchaseOrderState();
}

class _PurchaseOrderState extends State<PurchaseOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          bottom: 40,
          left: 20,
          right: 20,
        ),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: Container(
                          height: 50,
                          width: 50,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(25),
                            border: Border.all(
                              width: 1,
                              color: AppColors.black,
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              Icons.arrow_back_ios_new,
                              color: AppColors.black,
                            ),
                          ),
                        ),
                      ),
                      const Gap(20),
                      AppTextBold(
                        text: 'Purchase Order',
                        color: AppColors.black,
                        size: 30,
                        weight: FontWeight.bold,
                      ),
                    ],
                  ),
                  const Gap(30),
                  AppTextBold(
                    text: 'Select your order preference',
                    color: AppColors.black,
                    size: 14,
                    weight: FontWeight.w300,
                  ),
                  const Gap(30),
                  Container(
                    height: 350,
                    width: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30),
                      color: AppColors.purchaseCard,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        children: [
                          Container(
                            height: 75,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.white,
                              border: Border.all(
                                width: 0.5,
                                color: AppColors.secondaryText,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Image(
                                        image: AssetImage('assets/gas.png'),
                                      ),
                                      AppTextBold(
                                        text: 'Swap Cylinder',
                                        weight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        width: 0.5,
                                        color: AppColors.secondaryText,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(20),
                          Container(
                            height: 75,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: AppColors.white,
                              border: Border.all(
                                width: 0.5,
                                color: AppColors.secondaryText,
                              ),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Row(
                                    children: [
                                      const Image(
                                        image: AssetImage('assets/gas2.png'),
                                      ),
                                      AppTextBold(
                                        text: 'New Cylinder',
                                        weight: FontWeight.w600,
                                      ),
                                    ],
                                  ),
                                  Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(25),
                                      border: Border.all(
                                        width: 0.5,
                                        color: AppColors.secondaryText,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          const Gap(30),
                          Row(
                            children: [
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppTextBold(
                                      text: 'Cylinder Weight',
                                    ),
                                    const Gap(10),
                                    Container(
                                      height: 60,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColors.white,
                                        border: Border.all(
                                          width: 0.5,
                                          color: AppColors.secondaryText,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppTextBold(
                                              text: '0.0',
                                            ),
                                            const Icon(
                                              Icons.keyboard_arrow_down,
                                              color: AppColors.secondaryText,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              const Gap(20),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AppTextBold(
                                      text: 'Number',
                                    ),
                                    const Gap(10),
                                    Container(
                                      height: 60,
                                      width: double.infinity,
                                      decoration: BoxDecoration(
                                        borderRadius: BorderRadius.circular(20),
                                        color: AppColors.white,
                                        border: Border.all(
                                          width: 0.5,
                                          color: AppColors.secondaryText,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(15.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            AppTextBold(
                                              text: '0.0',
                                            ),
                                            const Icon(
                                              Icons.keyboard_arrow_down,
                                              color: AppColors.secondaryText,
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ),
                  const Gap(30),
                  Row(
                    children: [
                      const Icon(
                        Icons.add,
                        color: AppColors.mainColor,
                      ),
                      AppTextBold(
                        text: 'Add order',
                        color: AppColors.mainColor,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            GestureDetector(
              onTap: () => Navigator.pushNamed(
                context,
                Routes.successPage,
              ),
              child: AppButtons(
                text: 'Continue',
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
