// https://stackoverflow.com/questions/50632217/dart-flutter-converting-timestamp
// https://stackoverflow.com/questions/52713115/flutter-find-the-number-of-days-between-two-dates

import 'package:intl/intl.dart';
void main() {
  var timeStamp = DateTime.now().millisecondsSinceEpoch;
  print(timeStamp);

  var datetime = DateTime.fromMillisecondsSinceEpoch(timeStamp - 10000000);
  print(DateFormat('yyyy-MM-dd HH:mm').format(datetime));

  DateTime newDate = DateTime(datetime.year, datetime.month, datetime.day - 365);
  print(newDate);

  Duration d = DateTime.now().difference(datetime);
  print(d);
}
