// https://flutter.dev/docs/codelabs/layout-basics#putting-it-all-together

import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        home: Scaffold(
          body: SizedBox(width: 250, child: MyWidget()),
        ));
  }
}

class MyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.account_circle, size: 50),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Flutter McFlutter',
                  style: Theme.of(context).textTheme.headline5,
                ),
                Text('Experienced App Developer'),
              ],
            ),
          ],
        ),
        SizedBox(height: 8),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('123 Main Street'),
            Text('415-555-0198'),
          ],
        ),
        SizedBox(height: 16),
        Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          textBaseline: TextBaseline.alphabetic,
          children: [
            Icon(
              Icons.accessibility,
              size: 50,
            ),
            Icon(
              Icons.timer,
              size: 50,
            ),
            Icon(
              Icons.phone_android,
              size: 50,
            ),
            Icon(
              Icons.phone_iphone,
              size: 50,
            ),
          ],
        ),
      ],
    );
  }
}
