import 'package:flutter/material.dart';
import 'package:payment_getways_app/core/utils/style.dart';

class MyCartView extends StatelessWidget {
  const MyCartView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold( 
      appBar: AppBar( 
        title: Text("My Cart",textAlign: TextAlign.center,style: Style.style25,),
      ),
    );
  }
}
 