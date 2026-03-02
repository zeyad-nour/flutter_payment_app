// ignore_for_file: camel_case_types

import 'package:flutter/material.dart';

class Custom_Dashed_Line extends StatelessWidget {
  const Custom_Dashed_Line({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: List.generate(
        30,
        (index) => Expanded(
          child: Padding(
            padding: const EdgeInsets.all(5),
            child: Container(color: Color(0xffb8b8b8), height: 2),
          ),
        ),
      ),
    );
  }
}

