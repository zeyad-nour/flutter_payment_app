import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/manger/cubit/payment_cubit.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/checkout_rep_impl.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/OrderInfo.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/customButton.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/payment_method_buttom_sheet.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/totalPraice.dart';

class MyCartViewBody extends StatelessWidget {
  const MyCartViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        children: [
          Expanded(child: Image.asset("assets/images/Basket.png")),

          OrderInfoIteam(title: "Order Subtotal", value: "\$ 100.00"),
          SizedBox(height: 3),
          OrderInfoIteam(title: "Discount", value: "\$ 0.00"),
          SizedBox(height: 3),
          OrderInfoIteam(title: "Order Subtotal", value: "\$ 100.00"),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Divider(height: 30),
          ),
          TotalPrice(title: "Total", value: "\$ 100.00"),
          SizedBox(height: 16),
          CustomButtom(
            text: "Complete Payment",
            onPressed: () {
              showModalBottomSheet(
                context: context,
                builder: (context) {
                  return BlocProvider(
                    create: (context) => PaymentCubit(CheckoutRepoImpl()),
                    child: PaymentMethodsBottmsheet(),
                  );
                },
              );
            },
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
