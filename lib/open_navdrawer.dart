import 'package:flutter/material.dart';

import 'navdrawer.dart';

class OpenNavDrawer extends StatelessWidget {
  const OpenNavDrawer({Key? key}) : super(key: key);

  // final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Custom Nav Drawer'),
          // leading: Builder(builder: (context) {
          //   return IconButton(
          //     onPressed: () {
          //       // print('Menekan Tombol Menu');
          //       var scaffold = Scaffold.of(context);
          //       scaffold.openDrawer();
          //     },
          //     icon: const Icon(Icons.menu),
          //     color: Colors.white,
          //   );
          // }),
        ),
        drawer: const NavDrawer(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [Text('Belajar Custom Nav Drawer')],
          ),
        ));
  }
}
