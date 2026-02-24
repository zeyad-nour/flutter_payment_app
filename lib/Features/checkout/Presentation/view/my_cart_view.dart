import 'package:flutter/material.dart';
import 'package:payment_getways_app/Features/checkout/Presentation/view/widgets/my_cart_view_body.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back, color: Colors.black, size: 30),
        elevation: 0,
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          "My Cart",
          textAlign: TextAlign.center,
          style: Style.style25,
        ),
      ),
      body: MyCartViewBody(),
    );
  }
}
