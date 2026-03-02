import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class PaymentItemInfo extends StatelessWidget {
  final String title;
  final String value;
  const PaymentItemInfo({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, textAlign: TextAlign.center, style: Style.style18),
        Text(value, style: Style.style18),
      ],
    );
  }
}
