import 'dart:collection';

void main() {
  var linked = LinkedHashSet.of([3, 1, 2]);
  print('Linked order: $linked'); // insertion order

  var tree = SplayTreeSet.of([3, 1, 2]);
  print('Tree (sorted): $tree'); // sorted order
}
