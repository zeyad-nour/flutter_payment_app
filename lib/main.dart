import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/my_cart_view.dart';

void main() {
  runApp(const CheckoutApp());
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(debugShowCheckedModeBanner: false, home: MyCartView());
  }
}

//paymentIntentObject create payment_intent (amount,currency) (Server Side)

// init payment_sheet(paymentIntentClientSecret) (Client Side)

// prsent_payment_sheet (Client Side)(UI)
