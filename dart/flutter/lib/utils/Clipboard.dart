// https://stackoverflow.com/questions/55885433/flutter-dart-how-to-add-copy-to-clipboard-on-tap-to-a-app
// https://stackoverflow.com/questions/66833689/flutter-no-scaffoldmessenger-widget-found

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: MyScaffold());
  }
}
class MyScaffold extends StatefulWidget {
  const MyScaffold({Key? key}) : super(key: key);

  @override
  _MyScaffoldState createState() => _MyScaffoldState();
}

class _MyScaffoldState extends State<MyScaffold> {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Flutter app'),
        ),
        body: Center(
          child:
              IconButton(onPressed: () {onPressed(context);}, icon: Icon(Icons.copy)),
        ),
    );
  }

  void onPressed(BuildContext context) {
    final textToCopy = "Your text $count";
    count++;
    Clipboard.setData(new ClipboardData(text: textToCopy)).then((_) {
      ScaffoldMessenger.of(context).hideCurrentSnackBar();
      ScaffoldMessenger.of(context)
          .showSnackBar(SnackBar(content: Text(textToCopy)));
    });
  }
}
