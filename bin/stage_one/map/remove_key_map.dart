void main() {
  var m = {'a': 1, 'b': 2, 'c': 3};
  m.remove('b'); // removes key 'b'
  m.removeWhere((k, v) => v % 2 == 1); // remove odd values
  print(m); // {}
}
