void main() {
  var s = <int>{};
  s.add(1);
  s.addAll([2, 3, 3]); // duplicates ignored
  print(s); // {1,2,3}
}
