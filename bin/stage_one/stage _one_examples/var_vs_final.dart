void main() {
  var counter = 0; // we will reassign
  final name = 'Ada'; // assigned once
  counter += 16;
  print(counter); // 1
  // name = 'Eve'; // ❌ error
}
