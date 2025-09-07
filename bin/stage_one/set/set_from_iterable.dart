void main() {
  var list = [1, 2, 2, 3];
  var s1 = Set.from(list);
  var s2 = Set.of(list);
  print(s1); // {1, 2, 3}
  print(s2); // {1, 2, 3}
}
