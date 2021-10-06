// https://flutter.dev/docs/cookbook/lists/basic-list

import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const title = 'Basic List';

    return MaterialApp(
      title: title,
      home: Scaffold(
        appBar: AppBar(
          title: const Text(title),
        ),
        body: Column(
          children: [
            ListView(
              // https://stackoverflow.com/questions/62067082/unhandled-exception-cannot-hit-test-a-render-box-with-no-size
              // If wrapped with a Column, need shrinkWrap=true or explicitly set size(height) by wrapping some widgets.
              shrinkWrap: true,
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.map),
                  title: Text('Map'),
                ),
                ListTile(
                  leading: Icon(Icons.photo_album),
                  title: Text('Album'),
                ),
                ListTile(
                  leading: Icon(Icons.phone),
                  title: Text('Phone'),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}