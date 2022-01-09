import 'package:flutter/material.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Gallery Page')),
        body: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Gallery Page'),
            const Padding(padding: EdgeInsets.all(12)),
            ElevatedButton(
                onPressed: () {
                  // membuat navigation
                  Navigator.pop(context);
                },
                child: const Text('Back To About Page'))
          ],
        )));
  }
}
