import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/core/shared/custom_dialog.dart';
import 'package:shopping_cart/providers/deposit_provider.dart';

class ConfirmBooking extends StatefulWidget {
  const ConfirmBooking({super.key});

  @override
  State<ConfirmBooking> createState() => _ConfirmBookingState();
}

class _ConfirmBookingState extends State<ConfirmBooking> {
  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      child: Consumer<DepositProvider>(
        builder: (context, depositProvider, child) {
          return Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Confirm Booking',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
              const Gap(20),
              Text(
                'Using ${depositProvider.rocketValue}',
              ),
              const Gap(10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'From ',
                  ),
                  Text(
                    '${depositProvider.fromStationValue?.station} ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'To ',
                  ),
                  Text(
                    '${depositProvider.toStationValue?.station} ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const Gap(20),
              Row(
                children: [
                  Text(
                    'Fare: ',
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                    ),
                  ),
                  Text(
                    '${depositProvider.fare} BTC',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
              const Gap(20),
              ElevatedButton(
                onPressed: () {
                  depositProvider.confirmPayment();
                  Navigator.pop(context);
                },
                child: Text(
                  'Confirm',
                ),
              ),
            ],
          );
        },
      ),
    );
  }
}
