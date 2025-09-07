void main() {
  var empty1 = <int>{}; // typed empty set literal
  var empty2 = Set<int>(); // constructor
  empty1.add(10);
  empty2.addAll([1, 2, 3]);
  print(empty1); // {10}
  print(empty2); // {1, 2, 3}
}
