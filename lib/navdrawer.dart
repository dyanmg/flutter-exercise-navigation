import 'package:flutter/material.dart';

class NavDrawer extends StatelessWidget {
  const NavDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          drawerHeader(context),
          drawerItem(Icons.folder_shared_outlined, 'File',
              () => print('Menekan Menu Files')),
          drawerItem(
              Icons.share_outlined, 'Share', () => print('Menekan Menu Share')),
          drawerItem(Icons.access_alarm_outlined, 'Recent',
              () => print('Menekan Menu Recent')),
          drawerItem(Icons.delete_outline_outlined, 'Trash',
              () => print('Menekan Menu Trash')),
          const Divider(height: 24, thickness: 6),
          /* const Padding(
              padding: EdgeInsets.only(left: 20, top: 10, bottom: 10)), */
          drawerItem(Icons.bookmark_outlined, 'Bookmark',
              () => print('Menekan Menu Bookmark')),
        ],
      ),
    );
  }

  Widget drawerHeader(BuildContext context) {
    return UserAccountsDrawerHeader(
      accountName: const Text('Dian Muhammad Gufron'),
      accountEmail: const Text('dian.gufron@kemenkeu.go.id'),
      currentAccountPicture: GestureDetector(
          onTap: () {},
          child: const ClipOval(
            child: Image(
              image: AssetImage('assets/images/user_1.jpg'),
              fit: BoxFit.cover,
            ),
          )),
      otherAccountsPictures: [
        GestureDetector(
            onTap: () {},
            child: const ClipOval(
              child: Image(
                image: AssetImage('assets/images/user_2.jpg'),
                fit: BoxFit.cover,
              ),
            )),
        GestureDetector(
            onTap: () {},
            child: const ClipOval(
              child: Image(
                image: AssetImage('assets/images/user_3.jpg'),
                fit: BoxFit.cover,
              ),
            ))
      ],
    );
  }

  drawerItem(IconData icon, String text, GestureTapCallback onTap) {
    return ListTile(
      title: Row(
        children: <Widget>[
          Icon(icon),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: Text(
              text,
              style: const TextStyle(fontWeight: FontWeight.bold),
            ),
          )
        ],
      ),
      onTap: onTap,
    );
  }
}
