// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class PaymentMethodIteam extends StatelessWidget {
  const PaymentMethodIteam({
    super.key,
    this.isActive = false,
    required this.imagePath,
  });

  final bool isActive;
  final String imagePath;
  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 600),
      width: 103,
      height: 62,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(
          side: BorderSide(
            width: isActive ? 2.5 : 1.5,
            color: isActive ? Color(0xff34A963) : Colors.grey,
          ),
          borderRadius: BorderRadius.circular(15),
        ),
        shadows: [
          BoxShadow(
            color: isActive ? Color(0xff34A955) : Colors.white,
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Center(
          child: SvgPicture.asset(imagePath, height: 50, fit: BoxFit.scaleDown),
        ),
      ),
    );
  }
}
