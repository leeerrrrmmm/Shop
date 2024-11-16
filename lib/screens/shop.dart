import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../components/shoeTile.dart';
import '../models/cart.dart';
import '../models/shoe.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {

  //add Shoe to cart
  void addShoeToCart(Shoe shoe) {
  Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

  //alert user, shoe success added
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text('Successfuly added to Cart'),
        content: Text('Check your cart')
      )
    );
  }
  @override
  Widget build(BuildContext context) {
    return Consumer<Cart>(builder: (context, value, child) => Column(
      children: [
        Container(
          padding: EdgeInsets.all(12),
          margin: EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Icon(Icons.search),
              Text(
                'Search',
                style: TextStyle(color: Colors.grey),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        Text(
          'Everyone flies... some fly longer than others',
          style: TextStyle(
            color: Colors.grey[600],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Hot Picks 🔥',
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              Text(
                'See all',
                style: TextStyle(
                  color: Colors.blue,
                  fontSize: 17,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(height: 10),
        //List of shoes for sale
        Expanded(
          child: ListView.builder(
            itemCount:4,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              // get a Shoe from shop list
              Shoe shoe = value.getShoeList()[index];
              return Shoetile(
                  shoe: shoe,
                  onTap: () => addShoeToCart(shoe));
            },
          ),
        ),
        Padding(padding: EdgeInsets.only(top:25),)
      ],
    ));
  }
}
