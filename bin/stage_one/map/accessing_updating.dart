void main() {
  var m = <String, int>{};

  // set / update
  m['a'] = 1;

  // read (may be null if key missing)
  print(m['a']); // 1
  print(m['missing']); // null

  // addAll
  m.addAll({'b': 2, 'c': 3});

  // putIfAbsent (compute value only if key missing)
  m.putIfAbsent('d', () => 4);

  // update (and optionally provide ifAbsent)
  m.update('a', (v) => v + 10); // a: 11
  m.update('x', (_) => 100, ifAbsent: () => 100); // adds 'x'

  // remove
  m.remove('b');

  print(m); // final map
}
