void main() {
  var counts = <String, int>{'a': 1};
  counts.update('a', (v) => v + 1); // a -> 2
  counts.update('b', (_) => 1, ifAbsent: () => 1); // adds b:1
  print(counts); // {a:2, b:1}
}
