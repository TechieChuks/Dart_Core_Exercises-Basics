// ---------------- Exercise 5 ----------------
void main() {
  List<String> fruits = ["apple", "banana", "cherry"];

  print("\nC-style for loop with index:");
  for (int i = 0; i < fruits.length; i++) {
    print("$i: ${fruits[i]}");
  }

  print("\nFor-in loop (just values):");
  for (var fruit in fruits) {
    print(fruit);
  }
}
