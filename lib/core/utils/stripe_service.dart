import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment_getways_app/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_getways_app/Features/checkout/data/models/payment_intint_model/payment_intint_model.dart';
import 'package:payment_getways_app/core/utils/api_keys.dart';
import 'package:payment_getways_app/core/utils/api_service.dart';

class StripeService {
  final ApiService apiService = ApiService();
  // create payment_intent (amount,currency) (Server Side)=>API call
  Future<PaymentIntintModel> createPaymentIntint(
    PaymentIntentInputModel paymentIntentInputModel,
  ) async {
    var response = await apiService.post(
      body: paymentIntentInputModel.toJson(),
      url: "https://api.stripe.com/v1/payment_intents",
      token: ApiKeys.secretkey,
    );
    var paymentIntintModel = PaymentIntintModel.fromJson(response.data);
    return paymentIntintModel;
  }


//setup payment sheet (Client Side)
  Future initPaymentSheet({required String paymentIntentClientSecret}) async {
    Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: paymentIntentClientSecret,
        merchantDisplayName: 'Zeyad Ahmed Nour El-Din',
      ),
    );
  }

//present payment sheet (Client Side)(UI)
  Future displayPaymentSheet() async {
   Stripe.instance.presentPaymentSheet();
  }


//Start payment process  [call all Stripe Methods]
  Future makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
   var paymentIntintModel = await createPaymentIntint(paymentIntentInputModel);
    await initPaymentSheet(
      paymentIntentClientSecret: paymentIntintModel.clientSecret!,
    );
    await displayPaymentSheet();
  }
}
