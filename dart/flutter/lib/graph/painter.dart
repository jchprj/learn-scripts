// https://medium.com/flutter-community/playing-with-paths-in-flutter-97198ba046c8
// https://github.com/divyanshub024/flutter_path_animation/blob/master/lib/lines.dart
// https://www.raywenderlich.com/25237210-building-a-drawing-app-in-flutter
// https://www.woolha.com/tutorials/flutter-using-gesturedetector-examples

import 'dart:ui';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Lines(),
    );
  }
}

class Lines extends StatefulWidget {
  @override
  _LinesState createState() => _LinesState();
}
class _LinesState extends State<Lines> with SingleTickerProviderStateMixin {
  late AnimationController _controller;
  Offset start = Offset(0, 0);
  Offset end = Offset(0, 0);
  bool isFirst = true;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      vsync: this,
      duration: Duration(seconds: 2),
    );
    _controller.value = 1.0;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Draw a line from first tap point to second tap point'),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.max,
          children: <Widget>[
            buildCurrentPath(context),
          ],
        ),
      ),
    );
  }
  GestureDetector buildCurrentPath(BuildContext context) {
    return GestureDetector(
      onTapDown: (TapDownDetails tapDownDetails)  {
        print(tapDownDetails.localPosition);
        if(isFirst) {
          start = tapDownDetails.localPosition;
          end = Offset(start.dx, start.dy + 4);
        } else {
          start = end;
          end = tapDownDetails.localPosition;
        }
        isFirst = !isFirst;
        setState(() {
          
        });
      },
      child: RepaintBoundary(
        child: Container(
          color: Colors.transparent,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height - 60,
          // CustomPaint widget will go here
          child: CustomPaint(
            painter: LinePainter(start: start, end: end),
            size: Size(double.maxFinite, 100),
          ),
        ),
      ),
    );
  }

}

class LinePainter extends CustomPainter {
  final Offset start;
  final Offset end;

  LinePainter({required this.start, required this.end});

  Paint _paint = Paint()
    ..color = Colors.black
    ..strokeWidth = 4.0
    ..style = PaintingStyle.stroke
    ..strokeJoin = StrokeJoin.round;

  @override
  void paint(Canvas canvas, Size size) {
    var path = Path();
      path.moveTo(this.start.dx, this.start.dy);
      path.lineTo(this.end.dx, this.end.dy);
    canvas.drawPath(path, _paint);
  }

  @override
  bool shouldRepaint(LinePainter oldDelegate) {
    return start.dx != end.dx || start.dy != end.dy;
  }
}
