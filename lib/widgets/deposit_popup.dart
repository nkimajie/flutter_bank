import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:provider/provider.dart';
import 'package:shopping_cart/core/shared/custom_dialog.dart';
import 'package:shopping_cart/providers/deposit_provider.dart';
import 'package:shopping_cart/widgets/app_buttons.dart';
import 'package:shopping_cart/widgets/app_text.dart';

class DepositPopup extends StatefulWidget {
  const DepositPopup({super.key});

  @override
  State<DepositPopup> createState() => _DepositPopupState();
}

class _DepositPopupState extends State<DepositPopup> {
  final _depositController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return CustomDialog(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          AppTextBold(
            text: 'Deposit here',
            size: 20,
            color: Colors.black,
          ),
          const Gap(30),
          TextField(
            keyboardType: TextInputType.number,
            controller: _depositController,
            style: TextStyle(
              color: Colors.black,
            ),
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
              hintStyle: TextStyle(
                color: Colors.black,
              ),
              hintText: 'Input number here',
              enabledBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.black,
                ),
              ),
            ),
          ),
          const Gap(20),
          ElevatedButton(
            onPressed: () {
              Provider.of<DepositProvider>(
                context,
                listen: false,
              ).deposit(
                double.parse(_depositController.text.trim()),
              );

              Navigator.pop(context);
            },
            child: Text(
              'Deposit',
            ),
          ),
        ],
      ),
    );
  }
}
