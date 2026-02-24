// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class CustomButtom extends StatelessWidget {
  const CustomButtom({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        print("  Complete Payment");
      },
      child: Container(
        height: 75,
        width: 350,
        decoration: ShapeDecoration(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          color: Colors.green[700],
        ),
        child: Center(
          child: Text(
            "Complete Payment",
            style: Style.style18.copyWith(
              color: Colors.black,
              fontWeight: FontWeight.bold,
              fontSize: 22,
            ),
          ),
        ),
      ),
    );
  }
}
