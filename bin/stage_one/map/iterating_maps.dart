void main() {
  var m = {'a': 1, 'b': 2};

  m.forEach((k, v) => print('$k -> $v'));

  for (var entry in m.entries) {
    print('entry: ${entry.key}:${entry.value}');
  }

  for (var k in m.keys) print('key: $k');
}
