class PaymentIntentInputModel {
  final String amount;
  final String currency;

  PaymentIntentInputModel({required this.amount, required this.currency});
  // shoud be amount converted to integer number and *100
  Map<String, String> toJson() {
    return {"amount": amount, "currency": currency};
  }
}
