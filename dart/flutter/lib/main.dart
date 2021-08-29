import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Flutter app'),
        ),
        body: const Center(
          child: Text('Hello World'),
        ),
      ),
    );
  }
}