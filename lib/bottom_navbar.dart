import 'package:flutter/material.dart';
import 'package:flutter_navigation/navdrawer.dart';

class BottomNavBar extends StatefulWidget {
  // constructor dalam bentuk konstanta
  const BottomNavBar({Key? key}) : super(key: key);

  @override
  _BottomNavBarState createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  // inisialisasi nilai awal
  int _selectedIndex = 0;

  final List<Widget> _menus = const <Widget>[
    Icon(
      Icons.person,
      size: 150,
    ),
    Icon(
      Icons.chat,
      size: 150,
    ),
    Icon(
      Icons.camera_alt,
      size: 150,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Custom Bottom NavBar'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[_menus.elementAt(_selectedIndex)],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        // type: BottomNavigationBarType.shifting,
        backgroundColor: Colors.deepPurple,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        selectedIconTheme:
            const IconThemeData(color: Colors.amberAccent, size: 40),
        selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Account'),
          BottomNavigationBarItem(icon: Icon(Icons.chat), label: 'Chat'),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera_alt), label: 'Gallery'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onTapItem,
      ),
      drawer: const NavDrawer(),
    );
  }

  void _onTapItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
