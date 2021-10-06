// https://stackoverflow.com/questions/50794021/flutter-listview-builder-in-scrollable-column-with-other-widgets

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  var count = 0;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter app',
        home: Scaffold(
            body: Column(
          children: [
            Text("Popular Category"),
            Expanded(
              child: ListView.builder(
                  shrinkWrap: false,
                  scrollDirection: Axis.vertical,
                  itemCount: 300,
                  itemBuilder: (context, index) {
                    return Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("${count++}. hello"),
                      ],
                    );
                  }),
            ),
          ],
        )));
  }
}
