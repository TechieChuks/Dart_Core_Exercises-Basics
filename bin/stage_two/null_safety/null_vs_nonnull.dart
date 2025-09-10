void main() {
  String name = "Alice"; // non-nullable, must always have a value
  // name = null;          // ❌ Compile-time error
  print(name);
  String? nickname; // nullable, can hold null
  print(nickname); // prints null
  nickname = "Chuks";
  print(nickname); // prints Chuks
}
