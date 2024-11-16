import 'package:flutter/material.dart';
import 'package:yshop/screens/shop.dart';

import '../components/myBottomBar.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int _selectedIndex = 0;


  void navigateBottomBar(int index){
    setState(() {
      _selectedIndex = index;
    });
  }


  final List<Widget> _pages = [
    Shop(),
    Card(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar:AppBar(
        backgroundColor:Colors.transparent,
        elevation: 0,
        leading: Builder(
          builder: (context) {
            return IconButton(onPressed: () {
              Scaffold.of(context).openDrawer();
            },
                icon: const Icon(Icons.menu, color:Colors.black));
          }
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[50],
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Container(
                  child: Image.asset('lib/images/logo2.png',fit:BoxFit.cover),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ListTile(
                    leading: Icon(Icons.home,color:Colors.black),
                    title: Text('Home',
                    style:TextStyle(
                      fontWeight: FontWeight.bold
                    )),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 20.0),
                  child: ListTile(
                    leading: Icon(Icons.info,color:Colors.black),
                    title: Text('About',
                        style:TextStyle(
                            fontWeight: FontWeight.bold
                        )),
                  ),
                ),
              ],
            ),
            Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 20.0),
              child: ListTile(
                leading: Icon(Icons.login,color:Colors.black),
                title: Text('Logout',
                    style:TextStyle(
                        fontWeight: FontWeight.bold
                    )),
              ),
            ),
            Text('Directed by @Lerm',
            style:TextStyle(
              color:Colors.grey[400]
            ))
          ]
        ),
      ),
      body: _pages[_selectedIndex],
      bottomNavigationBar:MyBottomBar(
          onTabChange: (index) => navigateBottomBar(index) ),
    );
  }
}
