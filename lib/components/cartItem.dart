import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/cart.dart';
import '../models/shoe.dart';

class CartItem extends StatefulWidget {
  Shoe shoe;
  CartItem({super.key, required this.shoe});

  @override
  State<CartItem> createState() => _CartItemState();
}

class _CartItemState extends State<CartItem> {

  //remove item from cart
  void RemoveItemFromCart() {
    Provider.of<Cart>(context, listen: false).removeItemFromCart(widget.shoe);

    // //allert user about success remove item from cart
    // showDialog(
    //     context: context,
    //     builder: (context) => AlertDialog(
    //       title: Text('Removed'),
    //       content: Text('Success removed item from your cart'),));
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius:BorderRadius.circular(10)
      ),
      child: ListTile(

        leading: Image.asset(widget.shoe.imagePath),
        title: Text(widget.shoe.name),
        subtitle: Text('\$' + widget.shoe.price),
        trailing: IconButton(onPressed: RemoveItemFromCart, icon: const Icon(Icons.delete)),
      ),
    );
  }
}
