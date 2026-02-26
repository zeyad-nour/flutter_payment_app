// ignore_for_file: camel_case_types, avoid_types_as_parameter_names, non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/customCrditeCard.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/paymentMethodListview.dart';

class PaymentDetailsViewBody extends StatelessWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [paymentmethodListview(), CustomCreditCard()]),
    );
  }
}
