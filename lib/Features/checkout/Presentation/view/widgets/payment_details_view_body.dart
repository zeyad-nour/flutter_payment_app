// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/paymentMethodListview.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/paymentMethodsIteams.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(children: [paymentmethodListview()]);
  }
}


