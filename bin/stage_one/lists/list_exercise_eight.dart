void main() {
  var original = ['Alice', 'Bob', 'Charlie'];
  var copy = List.from(original);

  copy[1] = 'David';
  print(original); // [Alice, Bob, Charlie]
  print(copy); // [Alice, David, Charlie]
}
