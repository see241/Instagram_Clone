import 'package:flutter/material.dart';

import 'account_Page.dart';
import 'home_Page.dart';
import 'search_Page.dart';

class TapPage extends StatefulWidget {
  @override
  _TapPageState createState() => _TapPageState();
}

class _TapPageState extends State<TapPage> {
  int _selectedIndex = 0;
  List _pages=[
    HomePage(),
    SearchPage(),
    AccountPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Center(child:  _pages[_selectedIndex] ),
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.black,
        onTap: _onItemTapped,
          currentIndex: _selectedIndex,
          items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(icon:Icon( Icons.home),title:Text("Home")),
        BottomNavigationBarItem(icon:Icon( Icons.search),title:Text("Search")),
        BottomNavigationBarItem(icon:Icon( Icons.account_circle),title:Text("Acount")),
      ]),
    );
  }

  void _onItemTapped(int value) {
    setState(() {
      _selectedIndex = value;
    });
  }
}
