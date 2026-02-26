// ignore_for_file: file_names, avoid_print

import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class CustomButtom extends StatelessWidget {
  final void Function() onPressed;
  final String text;
  const CustomButtom({super.key, required this.onPressed, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 75,
      width: 350,
      decoration: ShapeDecoration(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        color: Colors.green[700],
      ),
      child: MaterialButton(
        onPressed: onPressed,
        child: Center(
          child: Text(
           text,
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
