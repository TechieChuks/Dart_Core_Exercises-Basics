void main() {
  var m = {'a': 1, 'b': 2};

  m.forEach((k, v) => print('$k -> $v'));

  for (var e in m.entries) {
    print('entry ${e.key}:${e.value}');
  }

  for (var k in m.keys) print('key $k');
}
