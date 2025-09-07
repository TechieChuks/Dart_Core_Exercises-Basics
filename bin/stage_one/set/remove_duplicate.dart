void main() {
  var list = [4, 7, 9, 9, 4, 1, 2, 2, 3, 1, 7];
  var unique = list.toSet().toList();
  print(
    unique,
  ); // unique elements (order may not match original for some set implementations)
}
