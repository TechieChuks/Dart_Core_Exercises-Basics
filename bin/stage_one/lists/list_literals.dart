void main() {
  var list1 = [1, 2, 3];       // inferred as List<int>
  var list2 = <String>['a'];   // explicitly List<String>

  print(list1); // [1, 2, 3]
  print(list2); // [a]
}
