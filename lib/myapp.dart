import 'package:flutter/material.dart';

import 'bottom_navbar.dart';
import 'open_navdrawer.dart';

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Simple Navigation',
      home: const BottomNavBar(),
      theme: ThemeData(primarySwatch: Colors.deepPurple),
      debugShowCheckedModeBanner: false,
    );
  }
}
