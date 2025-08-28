void main() {
  var words = ['a', 'b', 'a', 'c', 'b', 'a'];
  var freq = <String, int>{};
  for (var w in words) {
    freq.update(w, (v) => v + 1, ifAbsent: () => 1);
  }
  print(freq); // {a:3, b:2, c:1}
}
