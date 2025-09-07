void main() {
  var original = [1, 2, 3];
  var readOnly = Set.unmodifiable(original);
  print(readOnly); // {1, 2, 3}
  // readOnly.add(4); // throws UnsupportedError at runtime
}
