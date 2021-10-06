// https://dart.dev/null-safety
import 'dart:math';

void main() {
  
    var i = 42; // Inferred to be an int.
    int? aNullableInt = null;

    var x = 5;
    //x = null        // error: null can not be a value of a non-null type Int

    // Nullable type names have ? at the end.
    int? nullable = null;
    nullable = 1;
    print(nullable);

    var ran = Random().nextInt(2);
    print(ran);
    String? b = ran > 0 ? "3" : null;
    // int l = b.length;    // error: The property 'length' can't be unconditionally accessed because the receiver can be 'null'.
    int l = (b != null) ? b.length : -1;
    print(l);
    int ll = b?.length ?? -1;
    print(ll);
    if (b != null && b.length > 0) {
        print("String of length ${b.length}");
    } else {
        print("Empty string");
    }
    print("");

    
    String a = "Kotlin";
    String? c = null;
    print(c?.length);
    //print(a?.length)        // The receiver can't be null, so the null-aware operator '?.' is unnecessary.

    // https://stackoverflow.com/questions/52148319/what-is-darts-equivalent-to-kotlins-let
    List<String?> listWithNulls = List.from(["Kotlin", null]);
    for (var item in listWithNulls) {
        item?.indexOf(Function.apply(() {
          print(item);
          return "";
        }, [])); // prints Kotlin and ignores null
    }


    List<int?>  nullableList = List.from([1, 2, null, 4]);
    List<int> intList = List.from((nullableList.where((element) => element != null).toList()));
    intList.forEach((element) {print(element);});


    int lll = c!.length;          // Unhandled exception: Null check operator used on a null value
}