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
      body: Container(
        width: double.maxFinite,
        height: double.maxFinite,
        color: Colors.white,
        child: Stack(
          children: [
            Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 70, left: 20, right: 20),
                  color: AppColors.mainColor,
                  height: 300,
                  width: double.infinity,
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              CircularProfileAvatar(
                                '',
                                radius: 30,
                                borderWidth: 3,
                                borderColor: Colors.white,
                                child: const Image(
                                  image: AssetImage('assets/user.png'),
                                ),
                              ),
                              const Gap(10),
                              const Text(
                                'Paul N',
                                style: TextStyle(
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Icon(
                              Icons.notifications_none_outlined,
                              color: AppColors.mainColor,
                              size: 30,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Gap(70),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: AppColors.mainColor,
                      ),
                    ),
                    const Gap(5),
                    Container(
                      margin: const EdgeInsets.only(bottom: 3),
                      width: 13,
                      height: 13,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(8),
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
                const Gap(10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                context,
                                Routes.topup,
                              ),
                              child: AppButtons(
                                text: 'Add Cylinder',
                                size: double.infinity,
                                color: AppColors.white,
                                backgroundColor: AppColors.mainColor,
                                borderColor: AppColors.mainColor,
                              ),
                            ),
                          ),
                          const Gap(10),
                          Expanded(
                            child: GestureDetector(
                              onTap: () => Navigator.pushNamed(
                                context,
                                Routes.topup,
                              ),
                              child: AppButtons(
                                text: 'Top Up',
                                size: double.infinity,
                                color: AppColors.white,
                                backgroundColor: AppColors.mainColor,
                                borderColor: AppColors.mainColor,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const Gap(20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          AppText(
                            text: 'Activity',
                            color: AppColors.secondaryText,
                            size: 20,
                          ),
                          Row(
                            children: [
                              AppText(
                                text: 'view all',
                                color: AppColors.mainColor,
                                size: 20,
                              ),
                              const Icon(
                                Icons.arrow_forward_ios,
                                color: AppColors.mainColor,
                                size: 20,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: SingleChildScrollView(
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                    child: Image(
                                      image: AssetImage('assets/oando.png'),
                                    ),
                                  ),
                                  const Gap(20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppTextBold(
                                        text: 'Swap Order',
                                        color: AppColors.black,
                                        size: 20,
                                        weight: FontWeight.bold,
                                      ),
                                      const Gap(10),
                                      AppText(
                                        text: '17 Agustus 2021',
                                        color: AppColors.secondaryText,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              AppTextBold(
                                text: '-₦ 4,500',
                                color: AppColors.black,
                                size: 20,
                                weight: FontWeight.bold,
                              )
                            ],
                          ),
                          const Gap(10),
                          const Divider(
                            color: AppColors.secondaryText,
                            thickness: 0.2,
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                    child: Image(
                                      image: AssetImage('assets/oando.png'),
                                    ),
                                  ),
                                  const Gap(20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppTextBold(
                                        text: 'Swap Order',
                                        color: AppColors.black,
                                        size: 20,
                                        weight: FontWeight.bold,
                                      ),
                                      const Gap(10),
                                      AppText(
                                        text: '17 Agustus 2021',
                                        color: AppColors.secondaryText,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              AppTextBold(
                                text: '-₦ 4,500',
                                color: AppColors.black,
                                size: 20,
                                weight: FontWeight.bold,
                              )
                            ],
                          ),
                          const Gap(10),
                          const Divider(
                            color: AppColors.secondaryText,
                            thickness: 0.2,
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                    child: Image(
                                      image: AssetImage('assets/oando.png'),
                                    ),
                                  ),
                                  const Gap(20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppTextBold(
                                        text: 'Swap Order',
                                        color: AppColors.black,
                                        size: 20,
                                        weight: FontWeight.bold,
                                      ),
                                      const Gap(10),
                                      AppText(
                                        text: '17 Agustus 2021',
                                        color: AppColors.secondaryText,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              AppTextBold(
                                text: '-₦ 4,500',
                                color: AppColors.black,
                                size: 20,
                                weight: FontWeight.bold,
                              )
                            ],
                          ),
                          const Gap(10),
                          const Divider(
                            color: AppColors.secondaryText,
                            thickness: 0.2,
                          ),
                          const Gap(20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  const SizedBox(
                                    width: 50,
                                    child: Image(
                                      image: AssetImage('assets/oando.png'),
                                    ),
                                  ),
                                  const Gap(20),
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AppTextBold(
                                        text: 'Swap Order',
                                        color: AppColors.black,
                                        size: 20,
                                        weight: FontWeight.bold,
                                      ),
                                      const Gap(10),
                                      AppText(
                                        text: '17 Agustus 2021',
                                        color: AppColors.secondaryText,
                                        size: 18,
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              AppTextBold(
                                text: '-₦ 4,500',
                                color: AppColors.black,
                                size: 20,
                                weight: FontWeight.bold,
                              )
                            ],
                          ),
                          const Gap(10),
                          const Divider(
                            color: AppColors.secondaryText,
                            thickness: 0.2,
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Positioned(
              top: 150,
              left: 0,
              right: 0,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Container(
                  width: double.infinity,
                  height: 200,
                  decoration: BoxDecoration(
                    color: AppColors.secondryColor,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              width: 120,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xffFEE498),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Cylinder ID: #942',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ),
                            const Gap(10),
                            Row(
                              children: const [
                                Text(
                                  '25',
                                  style: TextStyle(
                                    fontSize: 70,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Gap(10),
                                Text(
                                  'kg',
                                  style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            Container(
                              width: 200,
                              height: 30,
                              decoration: BoxDecoration(
                                color: const Color(0xffFEE498),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: const Center(
                                child: Text(
                                  'Last purchase was 2 hours ago',
                                  style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.mainColor,
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const Gap(10),
                        const Expanded(
                          child: Icon(
                            Icons.gas_meter,
                            color: Colors.white,
                            size: 110,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
