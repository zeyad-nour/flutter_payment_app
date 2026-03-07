import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/thank_you_view_body.dart';

class ThankYouView extends StatelessWidget {
  const ThankYouView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(appBar: AppBar(), body: ThankYouViewBody());
  }
}
