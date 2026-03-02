import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/custom_check_icon.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/custom_dashed_line.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/thank_you_card.dart';

class ThankYouViewBody extends StatelessWidget {
  const ThankYouViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          ThankYouCard(),
          Positioned(
            bottom: MediaQuery.of(context).size.height * 0.2 + 20,
            left: 20 + 16,
            right: 20 + 16,
            child: Custom_Dashed_Line(),
          ),
          Positioned(
            bottom: -20,
            left: MediaQuery.of(context).size.width * 0.2,
            child: CircleAvatar(radius: 50, backgroundColor: Colors.white),
          ),
          Positioned(
            right: -20,
            left: MediaQuery.of(context).size.width * 0.2,
            child: CircleAvatar(radius: 50, backgroundColor: Colors.white),
          ),

          Positioned(
            left: 0,
            height: 0,
            top: -50,
            child: CustomCheckIcon(),
          ),
        ],
      ),
    );
  }
}
