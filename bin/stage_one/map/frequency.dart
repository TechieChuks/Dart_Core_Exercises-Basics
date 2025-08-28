void main() {
  var list = [1, 2, 2, 3, 3, 3];
  var freq = <int, int>{};
  for (var n in list) freq.update(n, (v) => v + 1, ifAbsent: () => 1);
  print(freq); // {1:1, 2:2, 3:3}
}
