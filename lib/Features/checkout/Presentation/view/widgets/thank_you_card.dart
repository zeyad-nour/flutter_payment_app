import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/payment_iteam_info.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/totalPraice.dart';
import 'package:payment_getways_app/core/utils/style.dart';

import 'card_info_widget.dart';

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
            Divider(height: 60, thickness: 2),
            TotalPrice(title: "Total", value: r"$50.97"),
            SizedBox(height: 20),
            CardInfoWidget(),
          ],
        ),
      ),
    );
  }
}

