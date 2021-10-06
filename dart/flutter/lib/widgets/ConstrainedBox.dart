// https://stackoverflow.com/questions/64605198/flutter-listtile-width
// https://www.woolha.com/tutorials/flutter-using-constrainedbox-widget-examples

import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter app',
      home: NeedThisClassToUseMediaQuery(),
    );
  }
}

class NeedThisClassToUseMediaQuery extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var totalWidth = MediaQuery.of(context).size.width ~/ 1;
    var percentageWidth = totalWidth ~/ 10;
    const fixedWidth = 200;
    var remainingWidth = totalWidth - percentageWidth - fixedWidth;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter app'),
      ),
      body: Row(
        children: <Widget>[
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: totalWidth / 10,
            ),
            child: SizedBox(
              /// Enter your fixed width here, 300.0 ist just an example
              width: 300.0,
              child: Text('I occupy 1/10 width(${percentageWidth}px)'),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxWidth: 200,
            ),
            child: SizedBox(
              /// Enter your fixed width here, 300.0 ist just an example
              width: 300.0,
              child: const Text('I occupy 200px width'),
            ),
          ),
          Expanded(
            child: Text('I occupy all remaining width($totalWidth - $fixedWidth - $percentageWidth = ${remainingWidth}px)'),
          ),
        ],
      ),
    );
  }
}
