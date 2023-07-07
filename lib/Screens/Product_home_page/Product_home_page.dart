import 'package:flutter/material.dart';

import 'Components/BottomNavigationBarScreens/BrowseTapFromBottombar/BrowseTapFromBottombar.dart';
import 'Components/BottomNavigationBarScreens/HomeTapFromBottombar/HomeTapFromBottombar.dart';

class Productpage extends StatefulWidget {
  @override
  State<Productpage> createState() => _ProductpageState();
}

class _ProductpageState extends State<Productpage> {
  int index1 = 0;
  final tabslist = [HomeTapFromBottombar(), BrowseTapFromBottombar()];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        unselectedLabelStyle: TextStyle(color: Color(0xff4F4F4F), fontSize: 12),
        fixedColor: Color(0xff33907C),
        unselectedItemColor: Color(0xffB9B9B9),
        type: BottomNavigationBarType.fixed,
        unselectedFontSize: 13,
        currentIndex: index1,
        iconSize: 30,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Home",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: "Browse",
          ),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: "Product"),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_rounded), label: "Order History"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
        onTap: (value) {
          setState(() {
            index1 = value;
          });
        },
      ),
      body: tabslist[index1],
    );
  }
}
