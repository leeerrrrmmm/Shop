import 'package:flutter/material.dart';

import '../models/shoe.dart';

class Shoetile extends StatelessWidget {
  Shoe shoe;
  void Function()? onTap;
  Shoetile({
    super.key,
    required this.shoe,
    required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 10),
      width: 280,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: Image.asset(shoe.imagePath),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 25.0),
            child: Text(shoe.description
                ,
                style:TextStyle(
                    fontSize: 17,
                    fontWeight:FontWeight.bold
                )),
          ),
         Row(
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
           children: [
             Padding(
               padding: const EdgeInsets.all(8.0),
               child: Column(
                 crossAxisAlignment: CrossAxisAlignment.start,
                 children: [
                   Text(shoe.name,
                   style:TextStyle(
                     fontSize: 20,
                     fontWeight:FontWeight.bold
                   )),
                   const SizedBox(height: 5,),
                   Text( '\$' + shoe.price,
                       style:TextStyle(
                           fontSize: 17,

                       )),
                 ],
               ),
             ),
             GestureDetector(
              onTap: onTap ,
               child: Container(
                 padding: EdgeInsets.all(20),
                 decoration: BoxDecoration(
                   color: Colors.black,
                   borderRadius: BorderRadius.only(
                       topLeft:Radius.circular(12),
                     bottomRight: Radius.circular(12),
                   )
                 ),
                 child: Icon(Icons.add, color:Colors.white),
               ),
             )
           ],
         )

        ],
      ),
    );
  }
}
