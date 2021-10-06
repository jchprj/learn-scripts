// https://www.freecodecamp.org/news/constructors-in-dart/
// https://stackoverflow.com/questions/49691163/dart-multiple-constructors
// https://stackoverflow.com/questions/51013430/flutter-dart-constructor

class Class {
  Class() {
    print("constructor 1");
  }
  Class.Construct2(String param1) {
    print("constructor 2");
  }
  Class.Construct3({required String param1}) {
    print("constructor 3");
  }
  Class.Construct4([String? param1]) {
    print("constructor 3");
  }
}

// extension name on Class {
extension on Class {
  String to1() => "abc";
  String to2() {
    print("abc");
    return "abc";
  }
}

class Car {
  String make;
  String model;
  int yearMade;
  bool hasABS;

  Car(this.make, this.model, this.yearMade, this.hasABS);

  Car.withoutABS(this.make, this.model, this.yearMade) : hasABS = false;

  factory Car.ford(String model, int yearMade, bool hasABS) {
    return FordCar(model, yearMade, hasABS);
  }
}

class FordCar extends Car {
  FordCar(String model, int yearMade, bool hasABS)
      : super("Ford", model, yearMade, hasABS);
}

class FordFocus {
  static const FordFocus fordFocus = FordFocus("Ford", "Focus", "5", true);

  final String make;
  final String model;
  final String yearMade;
  final bool hasABS;

  const FordFocus(this.make, this.model, this.yearMade, this.hasABS);
}

void main() {
  final clazz = Class();
  clazz.to1();
  clazz.to2();
  final clazz2 = Class.Construct2("a");
  final clazz3 = Class.Construct3(param1: "a");
  final clazz4 = Class.Construct4();
  print([clazz, clazz2, clazz3, clazz4]);
  final a = Car("", "", 1, true);
  final b = Car.withoutABS("", "", 2);
  final c = Car.ford("", 3, true);
  final d = FordFocus("", "", "4", true);
  print(a);
  print(a.yearMade);
  print(b.yearMade);
  print(c.yearMade);
  print(d.yearMade);
  print(FordFocus.fordFocus.yearMade);
}
