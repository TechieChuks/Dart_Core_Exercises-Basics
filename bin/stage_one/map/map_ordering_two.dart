import 'dart:collection';

void main() {
  var tree = SplayTreeMap<String, int>();
  tree['b'] = 2;
  tree['a'] = 1;
  print(tree.keys); // (a, b) sorted order
}
