import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/my_cart_view.dart';
import 'package:payment_getways_app/core/utils/api_keys.dart';

void main() async{
  Stripe.publishableKey = ApiKeys.publishableKey ;
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyCartView());
  }
}

//paymentIntentObject create payment_intent (amount,currency) (Server Side) [Done] consider Model

// init payment_sheet(paymentIntentClientSecret) (Client Side)  [Done]

// prsent_payment_sheet (Client Side)(UI) [Done]
