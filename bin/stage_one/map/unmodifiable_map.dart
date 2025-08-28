void main() {
  var mutable = {'a': 1};
  var readOnly = Map.unmodifiable(mutable);
  print(readOnly); // {a:1}
  // readOnly['b'] = 2; // throws UnsupportedError
}
