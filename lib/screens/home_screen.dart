import 'package:circular_profile_avatar/circular_profile_avatar.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/constant/colors.dart';
import 'package:shopping_cart/core/models/station_model.dart';
import 'package:shopping_cart/core/navigators/navigators.dart';
import 'package:shopping_cart/core/shared/custom_dialog.dart';
import 'package:shopping_cart/providers/deposit_provider.dart';
import 'package:shopping_cart/widgets/app_buttons.dart';
import 'package:shopping_cart/widgets/app_text.dart';
import 'package:shopping_cart/widgets/confirm_booking_popup.dart';
import 'package:shopping_cart/widgets/deposit_popup.dart';
import 'package:shopping_cart/widgets/drop_down_widget.dart';

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
      body: Consumer<DepositProvider>(
        builder: (context, depositProvider, child) {
          return SafeArea(
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
                              text: '${depositProvider.ammount} BTC',
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
                            onTap: () {
                              showDialog(
                                context: context,
                                builder: (context) {
                                  return DepositPopup();
                                },
                              );
                            },
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
                    AppTextBold(
                      text: 'Rockets',
                      color: Colors.black,
                    ),
                    const Gap(5),
                    CustomDropDown(
                      value: depositProvider.rocketValue,
                      items: depositProvider.rockets.map((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(
                            value,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        depositProvider.setRocketValue(value as String);
                      },
                    ),
                    const Gap(25),
                    AppTextBold(
                      text: 'From',
                      color: Colors.black,
                    ),
                    const Gap(5),
                    CustomDropDown(
                      value: depositProvider.fromStationValue,
                      items: depositProvider.stations.map((StationModel value) {
                        return DropdownMenuItem<StationModel>(
                          value: value,
                          child: Text(
                            value.station,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        depositProvider
                            .setFromStationValue(value as StationModel);
                      },
                    ),
                    const Gap(20),
                    AppTextBold(
                      text: 'To',
                      color: Colors.black,
                    ),
                    const Gap(5),
                    CustomDropDown(
                      value: depositProvider.toStationValue,
                      items: depositProvider.stations.map((StationModel value) {
                        return DropdownMenuItem<StationModel>(
                          value: value,
                          child: Text(
                            value.station,
                            style: const TextStyle(
                              fontSize: 16.0,
                            ),
                          ),
                        );
                      }).toList(),
                      onChanged: (value) {
                        depositProvider
                            .setToStationValue(value as StationModel);
                      },
                    ),
                    const Gap(30),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: ElevatedButton(
                        onPressed: (depositProvider.fromStationValue != null &&
                                depositProvider.toStationValue != null)
                            ? () async {
                                await depositProvider.book();
                                depositProvider.ammount >= depositProvider.fare
                                    ? showDialog(
                                        context: context,
                                        builder: (context) {
                                          return ConfirmBooking();
                                        },
                                      )
                                    : showDialog(
                                        context: context,
                                        builder: (context) {
                                          return CustomDialog(
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Text(
                                                  'Insuficient Balance, Deposit to continue',
                                                  style: TextStyle(
                                                    fontSize: 20,
                                                  ),
                                                  textAlign: TextAlign.center,
                                                ),
                                              ],
                                            ),
                                          );
                                        },
                                      );
                              }
                            : null,
                        child: Text(
                          'Book',
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
