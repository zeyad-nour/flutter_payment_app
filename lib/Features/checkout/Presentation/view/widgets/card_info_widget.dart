import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class CardInfoWidget extends StatelessWidget {
  const CardInfoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 305,
      padding: const EdgeInsets.symmetric(vertical: 16, horizontal: 22),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
      ),
      child: Row(
        children: [
          SvgPicture.asset("assets/images/masterCard.svg"),
          SizedBox(width: 20),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(text: "Credit Card", style: Style.style18),
                TextSpan(text: "Mastercard **78", style: Style.style18),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
