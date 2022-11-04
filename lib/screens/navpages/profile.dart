import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/app_text.dart';

class Profile extends StatelessWidget {
  const Profile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppTextBold(
        text: "Profile",
        color: Colors.black26,
        size: 20,
      ),
    );
  }
}
