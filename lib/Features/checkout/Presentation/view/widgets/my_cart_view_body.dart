import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          SizedBox(height: 15),
          Image.asset("assets/images/Basket.png"),
          SizedBox(height: 25),
          OrderInfoIteam(title: "Order Subtotal", value: "\$ 100.00"),
          SizedBox(height: 3),
          OrderInfoIteam(title: "Discount", value: "\$ 0.00"),
          SizedBox(height: 3),
          OrderInfoIteam(title: "Order Subtotal", value: "\$ 100.00"),
        ],
      ),
    );
  }
}

class OrderInfoIteam extends StatelessWidget {
  const OrderInfoIteam({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Style.style18, textAlign: TextAlign.center),
        Spacer(),
        Text(value, style: Style.style18, textAlign: TextAlign.center),
      ],
    );
  }
}
