import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/app_text.dart';

class Activity extends StatelessWidget {
  const Activity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppTextBold(
        text: "Activity",
        color: Colors.black26,
        size: 20,
      ),
    );
  }
}
