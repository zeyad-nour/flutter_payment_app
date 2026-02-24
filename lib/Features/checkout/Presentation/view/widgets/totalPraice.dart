// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class TotalPrice extends StatelessWidget {
  const TotalPrice({super.key, required this.title, required this.value});
  final String title, value;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(title, style: Style.style24, textAlign: TextAlign.center),
        Spacer(),
        Text(value, style: Style.style24, textAlign: TextAlign.center),
      ],
    );
  }
}

