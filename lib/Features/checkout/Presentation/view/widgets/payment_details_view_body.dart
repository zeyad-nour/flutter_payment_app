// ignore_for_file: camel_case_types, avoid_types_as_parameter_names, non_constant_identifier_names

import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/thank_you_view.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/customButton.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/customCrditCard.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/paymentMethodListview.dart';

class PaymentDetailsViewBody extends StatefulWidget {
  const PaymentDetailsViewBody({super.key});

  @override
  State<PaymentDetailsViewBody> createState() => _PaymentDetailsViewBodyState();
}

class _PaymentDetailsViewBodyState extends State<PaymentDetailsViewBody> {
  final GlobalKey<FormState> formKey = GlobalKey();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverToBoxAdapter(child: paymentmethodListview()),
        SliverToBoxAdapter(
          child: CustomCreditCard(
            formKey: formKey,
            autovalidateMode: autovalidateMode,
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: AlignmentGeometry.bottomCenter,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 12.0),
              child: CustomButtom(
                onPressed: () {
                  if (formKey.currentState!.validate()) {
                    formKey.currentState!.save();
                    log('payment');
                  } else {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (context) => const ThankYouView(),
                      ),
                    );
                    autovalidateMode = AutovalidateMode.always;
                    setState(() {});
                  }
                },
                text: "Pay",
              ),
            ),
          ),
        ),
      ],
    );
  }
}
