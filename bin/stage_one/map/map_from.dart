void main() {
  var original = {'a': 1, 'b': 2};
  var copy1 = Map.from(original);
  var copy2 = Map.of(original);

  copy1['a'] = 99;
  copy2['b'] = 99;
  print(original); // {a: 1, b: 2}
  print(copy1); // {a: 99, b: 2}
  print(copy2);
}
