import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

class MyBottomBar extends StatelessWidget {
  void Function(int)? onTabChange;
  MyBottomBar({super.key, required this.onTabChange});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: GNav(
          color:Colors.grey[400],
          activeColor: Colors.grey.shade700,
          tabActiveBorder: Border.all(color:Colors.white),
          tabBackgroundColor: Colors.grey.shade100,
          mainAxisAlignment: MainAxisAlignment.center,
          padding: EdgeInsets.symmetric(vertical: 25, horizontal: 20),
          tabBorderRadius: 16,
          onTabChange: (val) => onTabChange!(val),
          tabs: const [
            GButton(
                icon: Icons.home,
                text:'Shop'
            ),
            GButton(
                icon: Icons.shopping_bag_rounded,
                text:'Cart'
            ),

          ]),
    );
  }
}
