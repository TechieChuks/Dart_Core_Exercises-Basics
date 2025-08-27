void main() {
  var original = [1, 2, 3];
  var copy1 = List.from(original);
  var copy2 = List.of(original);
  var copy3 = List.generate(3, (i) => i + 1);
  print(copy1); // [1, 2, 3]
  print(copy2); // [1, 2, 3]
  print(copy3); // [1, 2, 3]
}
