// ignore_for_file: camel_case_types, file_names

import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/paymentMethodsIteams.dart';

class paymentmethodListview extends StatefulWidget {
  const paymentmethodListview({super.key});

  @override
  State<paymentmethodListview> createState() => _paymentmethodListviewState();
}

class _paymentmethodListviewState extends State<paymentmethodListview> {
  final List<String> paymentMethodsItems = [
    'assets/images/visacart.svg',
    'assets/images/paypal.svg',
  ];
  int activeIndex = 0;
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
            child: GestureDetector(
              onTap: () {
                activeIndex = index;
                setState(() {});
              },
              child: PaymentMethodIteam(
                imagePath: paymentMethodsItems[index],
                isActive: activeIndex == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
