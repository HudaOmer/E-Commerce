import 'package:flutter/material.dart';
import 'package:untitled/view/widgets/custom_text.dart';
import '../constants/constants.dart';

class CartView extends StatelessWidget {
  const CartView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomText(text: 'Your Cart is Empty',color: Colors.grey,fontSize: 15,alignment: Alignment.center,),
          const SizedBox(height: 18),
          const Icon(Icons.shopping_cart_outlined, color: Colors.grey,),
        ],
      )),
      floatingActionButton: FloatingActionButton(onPressed: () {  },
        child: const Icon(Icons.add_shopping_cart_rounded),
        hoverColor: Colors.green,
        backgroundColor: primaryColor,
      ),
    );
  }
}
