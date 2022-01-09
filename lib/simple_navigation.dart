import 'package:flutter/material.dart';

import 'about_page.dart';

class SimpleNavigation extends StatelessWidget {
  const SimpleNavigation({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Simple Navigation')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Simple Navigation',
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold)),
            const Padding(padding: EdgeInsets.all(12)),
            ElevatedButton(
                onPressed: () {
                  // membuat navigation
                  Route myRoute = MaterialPageRoute(
                      builder: (context) => const AboutPage());
                  Navigator.push(context, myRoute);
                },
                child: const Text('Tap To Go to About Page'))
          ],
        )));
  }
}
