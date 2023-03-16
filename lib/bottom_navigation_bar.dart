import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_page/screens/home_page.dart';



class BottomNaviagtionBar extends StatefulWidget {
  const BottomNaviagtionBar({Key? key}) : super(key: key);

  @override
  State<BottomNaviagtionBar> createState() => _BottomNaviagtionBarState();
}

class _BottomNaviagtionBarState extends State<BottomNaviagtionBar> {
  int _selectedIndex = 0;
  static const TextStyle optionStyle = TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  static const _pages = <Widget>[
    HomePage(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
    body:Center(
        child: _pages.elementAt(_selectedIndex),
    ),
      bottomNavigationBar:BottomNavigationBar(
        backgroundColor: Colors.white,
                type: BottomNavigationBarType.fixed,
                items: const <BottomNavigationBarItem>[
                  BottomNavigationBarItem(
                      label:'Home',
                      icon: Icon(Icons.home)),
                  BottomNavigationBarItem(
                      label:'My Network',
                      icon: Icon(Icons.people)),
                  BottomNavigationBarItem(
                      label:'Post',
                      icon:Icon(Icons.post_add)),
                  BottomNavigationBarItem(
                      label:'Notifications',
                      icon: Icon(Icons.notifications)),
                  BottomNavigationBarItem(
                      label:'Jobs',
                      icon: Icon(Icons.work))
                ],
                currentIndex: _selectedIndex,
                selectedItemColor: Colors.black,
                onTap: _onItemTapped,
              ),
    );
  }
}
