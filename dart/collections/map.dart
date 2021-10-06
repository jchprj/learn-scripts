// https://www.tutorialspoint.com/dart_programming/dart_programming_map.htm
// https://www.bezkoder.com/dart-convert-list-map/

void main() {
  var details = new Map();
  details = {};
  details = {'key':'value','abc':'123'}; 
  details['abc'] = '1'; 
  details['abc'] = Null; 
  print(details); 
  
  var keys = details.keys.toList();
  print(keys);
  var list = details.entries.map((e) => (e.key)).toList();
  print(list);

  var map = Map.fromIterable(list, key: (e) => e, value: (e) => e);
  print(map);

  map.entries.forEach((element) => print("${element.key}: ${element.value}"));
}