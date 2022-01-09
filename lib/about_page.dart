import 'package:flutter/material.dart';

import 'gallery.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('About Page')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('About Page'),
            const Padding(padding: EdgeInsets.all(12)),
            ElevatedButton(
                onPressed: () {
                  // membuat navigation
                  Route myRoute = MaterialPageRoute(
                      builder: (context) => const GalleryPage());
                  Navigator.push(context, myRoute);
                },
                child: const Text('Tap To Go to Gallery Page'))
          ],
        )));
  }
}
