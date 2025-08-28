void main() {
  var m = {'a': 1, 'b': 2};
  var keys = m.keys.toList(); // ['a','b']
  var values = m.values.toList(); // [1,2]
  var entries = m.entries.toList(); // [MapEntry('a',1), ...]
  print(keys);
  print(values);
  print(entries);
}
