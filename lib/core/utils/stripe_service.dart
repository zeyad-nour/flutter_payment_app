import 'package:payment_getways_app/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_getways_app/Features/checkout/data/models/payment_intint_model/payment_intint_model.dart';
import 'package:payment_getways_app/core/utils/api_keys.dart';
import 'package:payment_getways_app/core/utils/api_service.dart';

class StripeService {
  final ApiService apiService = ApiService();
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
}
