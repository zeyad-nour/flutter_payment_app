import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class ThankYouCard extends StatelessWidget {
  const ThankYouCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: MediaQuery.of(context).size.height * 0.8,
      decoration: ShapeDecoration(
        color: Color(0xffd9d9d9),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
      child: Padding(
        padding: const EdgeInsets.only(top: 50 + 16, left: 22, right: 22),
        child: Column(
          children: [
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Text(
              'Thank You!',
              style: Style.style25,
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 20),
            Text(
              'Your payment was successful.',
              style: Style.style20,
              textAlign: TextAlign.center,
            ),
            PaymentItemInfo(title: "Date", value: "1/24/2023"),
            SizedBox(height: 20),
            PaymentItemInfo(title: "Time", value: "10:30 AM"),
            SizedBox(height: 20),
            PaymentItemInfo(title: "To", value: "Sam Louis"),
          ],
        ),
      ),
    );
  }
}

class PaymentItemInfo extends StatelessWidget {
  final String title;
  final String value;
  const PaymentItemInfo({super.key, required this.title, required this.value});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, textAlign: TextAlign.center, style: Style.style18),
        Text(value, style: Style.style18),
      ],
    );
  }
}
