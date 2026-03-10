import 'package:flutter/cupertino.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/custom_button_bloc_consumer.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/paymentMethodListview.dart';

class PaymentMethodsBottmsheet extends StatelessWidget {
  const PaymentMethodsBottmsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 10),
          Center(child: paymentmethodListview()),
          SizedBox(height: 30),

          CustomButtonBlocConsumer(),
        ],
      ),
    );
  }
}


