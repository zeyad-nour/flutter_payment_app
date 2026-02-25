// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/paymentMethodsIteams.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [

      ],
    );
  }
}

class paymentmethodListview extends StatelessWidget {
  paymentmethodListview({super.key});

  final List<String> paymentMethodsItems = [
    'assets/images/visacart.svg',
    'assets/images/paypal.svg',
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return PaymentMethodIteam(
          imagePath: paymentMethodsItems[index],
          isActive: false,
        );
      },
    );
  }
}
