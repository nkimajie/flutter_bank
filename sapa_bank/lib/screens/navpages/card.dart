import 'package:flutter/material.dart';
import 'package:shopping_cart/widgets/app_text.dart';

class Card extends StatelessWidget {
  const Card({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: AppTextBold(
        text: "Card",
        color: Colors.black26,
        size: 20,
      ),
    );
  }
}
