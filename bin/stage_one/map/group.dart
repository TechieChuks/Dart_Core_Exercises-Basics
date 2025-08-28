Map<String, List<String>> groupByFirstLetter(List<String> items) {
  var out = <String, List<String>>{};
  for (var s in items) {
    var k = s[0];
    out.putIfAbsent(k, () => []).add(s);
  }
  return out;
}

void main() {
  var words = ['apple', 'apricot', 'banana', 'blueberry'];
  print(
    groupByFirstLetter(words),
  ); // {a:[apple, apricot], b:[banana, blueberry]}
}
