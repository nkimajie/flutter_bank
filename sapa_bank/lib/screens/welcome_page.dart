import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:shopping_cart/constant/colors.dart';
import 'package:shopping_cart/core/navigators/navigators.dart';
// import 'package:shopping_cart/widgets/app_buttons.dart';
import 'package:shopping_cart/widgets/app_text.dart';

import '../constant/app_asset.dart';

class WeicomePage extends StatefulWidget {
  const WeicomePage({Key? key}) : super(key: key);

  @override
  State<WeicomePage> createState() => _WeicomePageState();
}

class _WeicomePageState extends State<WeicomePage> {
  List images = [
    AppAsset.start1,
    AppAsset.start2,
    AppAsset.start3,
  ];
  List title = [
    'Save money',
    'Withdraw your money',
    'Invest your money',
  ];
  List content = [
    'We help you meet your savings target monthly and our emergency plans enable you save for multiple purposes',
    'With just your phone number, you can withdraw your funds at any point in time from any BankMe agent close to you.',
    'Get access to risk free investments that will multiply your income and pay high returns in few months',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: images.length,
        itemBuilder: (_, index) {
          return Container(
            width: double.maxFinite,
            height: double.maxFinite,
            color: AppColors.white,
            child: Padding(
              padding: const EdgeInsets.only(
                top: 82,
                bottom: 44,
                left: 16,
                right: 16,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      GestureDetector(
                        onTap: (() => Navigator.pushNamed(
                              context,
                              Routes.mainPage,
                            )),
                        child: AppText(
                          text: 'SKIP',
                          color: AppColors.font,
                          size: 12,
                        ),
                      ),
                    ],
                  ),
                  const Gap(20),
                  SizedBox(
                    width: 381,
                    height: 381,
                    child: Image(
                      image: AssetImage(images[index]),
                      width: double.maxFinite,
                      height: double.maxFinite,
                    ),
                  ),
                  const Gap(2),
                  AppTextBold(
                    text: title[index],
                    size: 30,
                    weight: FontWeight.w700,
                    color: AppColors.font,
                  ),
                  const Gap(12),
                  Expanded(
                    child: AppTextBold(
                      text: content[index],
                      size: 17,
                      weight: FontWeight.w300,
                      color: AppColors.font,
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: List.generate(3, (indexDot) {
                          return Container(
                            margin: const EdgeInsets.only(right: 10),
                            height: 8,
                            width: index == indexDot ? 25 : 8,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                color: index == indexDot
                                    ? AppColors.primary
                                    : AppColors.font.withOpacity(0.5)),
                          );
                        }),
                      ),
                      // AppButtons(
                      //   text: 'NEXT',
                      //   size: 138,
                      //   color: AppColors.white,
                      //   backgroundColor: AppColors.primary,
                      //   borderColor: AppColors.primary,
                      // ),
                    ],
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
