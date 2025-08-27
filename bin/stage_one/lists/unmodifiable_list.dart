void main() {
  var fixed = List.unmodifiable([1, 2, 3]);
  print(fixed); // [1, 2, 3]

  // fixed[0] = 10; // ❌ Error
  // fixed.add(4);  // ❌ Error
}
