import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopping_cart/widgets/app_text.dart';

import '../constant/colors.dart';

class Topup extends StatelessWidget {
  const Topup({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: const EdgeInsets.only(
          top: 80,
          bottom: 20,
          left: 20,
          right: 20,
        ),
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
                  text: 'Top Up',
                  color: AppColors.black,
                  size: 30,
                  weight: FontWeight.bold,
                ),
              ],
            ),
            const Gap(30),
            AppTextBold(
              text: 'Select Retailer you wish to purchase from',
              color: AppColors.black,
              size: 14,
              weight: FontWeight.w300,
            ),
            const Gap(30),
            const TopUpCard(
              title: 'Oando Petrol Station',
              imageLink: 'assets/oando.png',
              color: AppColors.topupCard,
            ),
            const Gap(10),
            const TopUpCard(
              title: 'Total Retail',
              imageLink: 'assets/total.png',
              color: AppColors.mainColor,
            ),
            const Gap(10),
            const TopUpCard(
              title: 'Enyo Retail',
              imageLink: 'assets/enyo.png',
              color: AppColors.topupCard,
            ),
            const Gap(10),
            const TopUpCard(
              title: 'AP Gas station',
              imageLink: 'assets/ardova.png',
              color: AppColors.mainColor,
            ),
          ],
        ),
      ),
    );
  }
}

class TopUpCard extends StatelessWidget {
  const TopUpCard({
    Key? key,
    required this.title,
    required this.imageLink,
    required this.color,
  }) : super(
          key: key,
        );

  final String title;
  final String imageLink;
  final Color color;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.pushNamed(context, '/purchase-order');
      },
      child: Container(
        height: 90,
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: AppColors.white),
                      child: Padding(
                        padding: const EdgeInsets.all(3.0),
                        child: Image(
                          image: AssetImage(imageLink),
                        ),
                      ),
                    ),
                    const Gap(20),
                    AppTextBold(
                      text: title,
                      color: AppColors.white,
                      size: 20,
                      weight: FontWeight.w500,
                    ),
                  ],
                ),
                const Icon(
                  Icons.arrow_forward_ios,
                  color: AppColors.white,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
