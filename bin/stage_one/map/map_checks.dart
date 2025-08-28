void main() {
  var m = {'a': 1, 'b': 2};
  print(m.containsKey('a')); // true
  print(m.containsValue(2)); // true
  print(m.keys); // (a, b)  => Iterable
  print(m.values); // (1, 2)
  print(m.length); // 2
}
