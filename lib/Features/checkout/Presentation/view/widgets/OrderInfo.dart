import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class OrderInfoIteam extends StatelessWidget {
  const OrderInfoIteam({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Style.style18, textAlign: TextAlign.center),
        Spacer(),
        Text(value, style: Style.style18, textAlign: TextAlign.center),
      ],
    );
  }
}

