void main() {
  var matrix = [
    [1, 2],
    [3, 4],
  ];
  var flat = matrix.expand((row) => row).toList();
  print(flat); // [1, 2, 3, 4]
}
