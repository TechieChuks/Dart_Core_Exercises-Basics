void main() {
  var words = ['apple', 'banana', 'apple', 'orange', 'banana', 'apple'];
  var freq = <String, int>{};
  for (var w in words) {
    freq.update(w, (v) => v + 1, ifAbsent: () => 1);
  }
  print(freq); // {apple: 3, banana: 2, orange: 1}
}
