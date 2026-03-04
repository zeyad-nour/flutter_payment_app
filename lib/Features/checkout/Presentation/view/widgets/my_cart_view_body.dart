import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/OrderInfo.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/customButton.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/paymentMethodListview.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/totalPraice.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Expanded(child: Image.asset("assets/images/Basket.png")),

          OrderInfoIteam(title: "Order Subtotal", value: "\$ 100.00"),
          SizedBox(height: 3),
          OrderInfoIteam(title: "Discount", value: "\$ 0.00"),
          SizedBox(height: 3),
          OrderInfoIteam(title: "Order Subtotal", value: "\$ 100.00"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Divider(height: 30),
          ),
          TotalPrice(title: "Total", value: "\$ 100.00"),
          SizedBox(height: 16),
          CustomButtom(
            text: "Complete Payment",
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return PaymentMethodsBottmsheet();
                },
              );
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}

class PaymentMethodsBottmsheet extends StatelessWidget {
  const PaymentMethodsBottmsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Center(child: paymentmethodListview()),
          SizedBox(height: 30),

          CustomButtom(onPressed: () {}, text: "Continue"),
        ],
      ),
    );
  }
}
