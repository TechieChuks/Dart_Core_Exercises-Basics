void main() {
  var original = [1, 2, 3];
  var copy = List.from(original);

  copy[0] = 99;
  print(original); // [1, 2, 3]
  print(copy); // [99, 2, 3]
}
