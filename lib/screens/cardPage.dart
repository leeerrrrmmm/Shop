import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../components/cartItem.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('My Cart',
          style:TextStyle(
            fontSize:20,
            fontWeight: FontWeight.bold
          )),
          const SizedBox(height: 15,),

          Expanded(child: ListView.builder(
            itemCount: value.getUserCart().length,
              itemBuilder: (context, index) {
              // get indiviaual shoe
                Shoe individualShoe = value.getUserCart()[index];

                //return the cart item
                return CartItem(shoe: individualShoe);
          }))

        ]
      ),
    ));
  }
}
