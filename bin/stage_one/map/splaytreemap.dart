import 'dart:collection';

void main() {
  var sorted = SplayTreeMap<String, int>();
  sorted['b'] = 2;
  sorted['a'] = 1;
  sorted['c'] = 3;
  for (var k in sorted.keys) print(k); // a b c
}
