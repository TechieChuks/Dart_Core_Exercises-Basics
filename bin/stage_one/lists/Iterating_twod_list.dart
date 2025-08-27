void main() {
  var matrix = [
    [1, 2, 3],
    [4, 5, 6],
  ];

  for (var row in matrix) {
    for (var col in row) {
      print(col);
    }
  }
}
