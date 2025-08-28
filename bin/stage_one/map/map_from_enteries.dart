void main() {
  var entries = [MapEntry('a', 1), MapEntry('b', 2)];
  var m = Map.fromEntries(entries);
  print(m); // {a:1, b:2}
}
