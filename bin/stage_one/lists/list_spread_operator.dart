void main() {
  var list1 = [1, 2];
  var list2 = [0, ...list1, 3];
  print(list2); // [0, 1, 2, 3]
}
