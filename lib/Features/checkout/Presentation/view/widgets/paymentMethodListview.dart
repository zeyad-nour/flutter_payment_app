// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/paymentMethodsIteams.dart';

class paymentmethodListview extends StatelessWidget {
  paymentmethodListview({super.key});

  final List<String> paymentMethodsItems = [
    'assets/images/visacart.svg',
    'assets/images/paypal.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 62,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: paymentMethodsItems.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: PaymentMethodIteam(
              imagePath: paymentMethodsItems[index],
              isActive: false,
            ),
          );
        },
      ),
    );
  }
}
