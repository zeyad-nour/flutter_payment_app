// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/paymentMethodListview.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [paymentmethodListview()]);
  }
}


class CustomCreditCard extends StatelessWidget {
  const CustomCreditCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
      
      ],
    );
  }
}