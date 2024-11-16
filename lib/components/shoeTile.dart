import 'package:flutter/material.dart';

import '../models/shoe.dart';

class Shoetile extends StatelessWidget {
  Shoe shoe;
  Shoetile({super.key, required this.shoe});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        children: [
          Image.asset(shoe.name),
          Image.asset(shoe.price),
          Image.asset(shoe.description),
          Image.asset(shoe.imagePath),
        ],
      ),
    );
  }
}
