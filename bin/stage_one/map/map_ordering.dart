import 'dart:collection';

void main() {
  var linked = LinkedHashMap<String, int>();
  linked['b'] = 2;
  linked['a'] = 1;
  print(linked.keys); // b, a (insertion order)

  var sorted = SplayTreeMap<String, int>();
  sorted['b'] = 2;
  sorted['a'] = 1;
  print(sorted.keys); // a, b (sorted)
}
