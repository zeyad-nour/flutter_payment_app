import 'package:dartz/dartz.dart';
import 'package:payment_getways_app/Features/checkout/data/models/payment_intent_input_model.dart';
import 'package:payment_getways_app/Features/checkout/data/repos/checkout_repo.dart';
import 'package:payment_getways_app/core/utils/errors/failures.dart';
import 'package:payment_getways_app/core/utils/stripe_service.dart';

class CheckoutRepoImpl extends CheckoutRepo {
  final StripeService stripeService = StripeService();
  @override
  Future<Either<Failure, void>> makePayment({
    required PaymentIntentInputModel paymentIntentInputModel,
  }) async {
    try {
      await stripeService.makePayment(
        paymentIntentInputModel: paymentIntentInputModel,
      );
      return right(null); // Payment successful, return void
    } catch (e) {
      return left(
        ServerFailure(errMessage: "Payment failed: ${e.toString()}"),
      ); // Return failure with error message
    }
  }
}
