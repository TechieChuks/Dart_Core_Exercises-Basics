void main() {
  var map = <String, int>{'a': 1, 'b': 2};

  // read
  print(map['a']); // 1

  // write
  map['c'] = 3;

  // update
  map.update('a', (v) => v + 10);

  // putIfAbsent (won't override)
  map.putIfAbsent('b', () => 20);
  map.putIfAbsent('d', () => 4);

  // remove
  map.remove('c');

  map.forEach((k, v) => print('$k -> $v'));
}
