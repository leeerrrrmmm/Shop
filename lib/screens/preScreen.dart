import 'package:flutter/material.dart';
import 'homeScreen.dart';


class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Image.asset('lib/images/logo2.png'),

          const Text('Just Do It',
              style:TextStyle(
                  fontSize:20,
                  fontWeight: FontWeight.bold
              )),
          const SizedBox(height: 10,),
          const Text('Brand new sneakers and custom kicks with premium quality',
            style:TextStyle(
                color:Colors.grey,
                fontSize:16
            ),
            textAlign: TextAlign.center,),

          const SizedBox(height: 60),

          GestureDetector(
            onTap: () => Navigator.of(context).push(
              MaterialPageRoute(builder: (context) => HomeScreen()),
            ),

            child: Container(
              width: MediaQuery.of(context).size.width * 0.8,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.circular(12),
              ),
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 10),
              child: Text('Shop Now',
                  style:TextStyle(
                      color:Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),
                  textAlign: TextAlign.center),
            ),
          )
        ],
      ),
    );
  }
}
