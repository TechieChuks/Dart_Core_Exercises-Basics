import 'dart:collection';

void main() {
  var linked = LinkedHashMap<String, int>();
  linked['b'] = 2;
  linked['a'] = 1;
  print(linked.keys); // (b, a) insertion order

  var tree = SplayTreeMap<String, int>();
  tree['b'] = 2;
  tree['a'] = 1;
  tree['c'] = 3;
  print(tree.keys); // (a, b, c) sorted
}
