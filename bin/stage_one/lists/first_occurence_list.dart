import 'dart:collection';

void main() {
  var list = [9, 7, 4, 7, 1, 2, 2, 3, 1];
  var uniqOrdered = LinkedHashSet<int>.from(list).toList();
  print(uniqOrdered); // [1,2,3]
}
