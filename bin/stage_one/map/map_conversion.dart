void main() {
  var m = {'a': 1, 'b': 2};
  var doubled = m.map((k, v) => MapEntry(k, v * 2));
  print(doubled); // {a:2, b:4}
}
