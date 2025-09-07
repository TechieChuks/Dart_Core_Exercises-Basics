import 'dart:collection';

void main() {
  // HashSet -- hash-based (fast membership)
  var hash = HashSet<int>()..addAll([3, 1, 2]);
  print('HashSet: $hash');

  // LinkedHashSet -- preserves insertion order
  var linked = LinkedHashSet<int>()..addAll([3, 1, 2]);
  print('LinkedHashSet: $linked');

  // SplayTreeSet -- sorted order (requires comparable keys or comparator)
  var tree = SplayTreeSet<int>()..addAll([3, 1, 2]);
  print('SplayTreeSet (sorted): $tree');
}
