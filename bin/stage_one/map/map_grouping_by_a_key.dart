Map<K, List<T>> groupBy<T, K>(Iterable<T> items, K Function(T) keyFor) {
  var out = <K, List<T>>{};
  for (var item in items) {
    var k = keyFor(item);
    out.putIfAbsent(k, () => []).add(item);
  }
  return out;
}

void main() {
  var words = ['apple', 'apricot', 'banana', 'blueberry'];
  var grouped = groupBy(words, (s) => s[0]); // group by first letter
  print(grouped); // {a: [apple, apricot], b: [banana, blueberry]}
}
