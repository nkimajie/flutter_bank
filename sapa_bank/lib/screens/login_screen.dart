import 'package:flutter/material.dart';
import 'package:shopping_cart/constant/app_asset.dart';
import 'package:shopping_cart/constant/colors.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 47, right: 47),
              child: Column(
                children: const [
                  Center(
                    child: Image(image: AssetImage(AppAsset.login)),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
