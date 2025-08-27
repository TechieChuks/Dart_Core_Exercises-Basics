void main() {
  var fixed = List.unmodifiable([1, 2, 3]);
  // fixed.add(4); ❌ runtime error
  print(fixed); // [1, 2, 3]
}
