import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/payment_details_view_body.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class PaymentDetails extends StatelessWidget {
  const PaymentDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back, color: Colors.black, size: 30),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "Payment Details",
          textAlign: TextAlign.center,
          style: Style.style25,
        ),
      ),
      body: const PaymentDetailsViewBody(),
    );
  }
}
