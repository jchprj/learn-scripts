// https://stackoverflow.com/questions/64303190/in-flutter-how-to-create-an-empty-two-dimensional-array-of-class
// https://medium.com/flutter-community/working-with-multi-dimensional-list-in-dart-78ff332430a
// https://api.flutter.dev/flutter/dart-core/List/List.generate.html
// https://stackoverflow.com/questions/37798397/dart-create-a-list-from-0-to-n
// https://www.bezkoder.com/dart-list/

void main() {
  var todo_list = <List<int>>[[]];
  todo_list.add(<int>[]);
  todo_list[0].add(5);
  print(todo_list);

  int a = 3;
  int b = 3;
  var tList = List.generate(a, (i) => List.filled(b, 0), growable: false);
  print(tList); 

  var list = List<int>.generate(3, (int index) => index * index);
  print(list);

  list = new List<int>.generate(10, (i) => i + 1);
  print(list);

  // Dart >2.3
  list = [for (var i = 1; i <= 10; i++) i];
  print(list);


  var growableList = List.filled(3, 2, growable: true);
  growableList.add(42);
  print(growableList);

  // by default, growable: true
  var fixedList = List.from([1, 2, 3], growable: false);
  print(fixedList);
  // fixedList.add(42);
  /*
  UnsupportedError (Unsupported operation: Cannot add to a fixed-length list)
  */

  var myList = [0, 2, 4, 6, 8, 2, 7];
  myList.where((item) => item > 5).toList();   // [6, 8, 7]
  myList.firstWhere((item) => item > 5);       // 6
  myList.lastWhere((item) => item > 5);        // 7


  // https://stackoverflow.com/questions/27897932/sorting-ascending-and-descending-in-dart
  print(myList);
  myList.sort();
  print(myList);
  myList.sort((a, b) => b.compareTo(a));
  print(myList);
}

void iterate() {
  var myList = [0, 'one', 'two', 'three', 'four', 'five'];

  // use forEach()
  myList.forEach((item) => print(item));
  // or
  myList.forEach(print);

  // use iterator
  var listIterator = myList.iterator;
  while (listIterator.moveNext()) {
    print(listIterator.current);
  }

  // use every()
  myList.every((item) {
    print(item);
    return true;
  });

  // simple for-each
  for (var item in myList) {
    print(item);
  }

  // for loop with item index
  for (var i = 0; i < myList.length; i++) {
    print(myList[i]);
  }
}

void combine() {
  var list1 = [1, 2, 3];
  var list2 = [4, 5];
  var list3 = [6, 7, 8];

  // from() and addAll() method
  var combinedList1= List.from(list1)..addAll(list2)..addAll(list3);
    print(combinedList1);

  // expand() method
  var combinedList2 = [list1, list2, list3].expand((x) => x).toList();
    print(combinedList2);

  // operator +
  var combinedList3  = list1 + list2 + list3;
    print(combinedList3);

  // spread operator
  var combinedList4 = [...list1, ...list2, ...list3];
    print(combinedList4);
}