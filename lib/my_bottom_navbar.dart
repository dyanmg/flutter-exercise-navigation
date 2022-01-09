import 'package:flutter/material.dart';

class MyBottomNavBar extends StatelessWidget {
  const MyBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
        BottomNavigationBarItem(icon: Icon(Icons.camera_alt), label: 'Gallery'),
      ],
      // currentIndex: _selectedIndex,
      onTap: _onTapItem,
    );
  }

  void _onTapItem(int index) {
    // setState(() {
    //   _selectedIndex = index;
    // });
  }
}
