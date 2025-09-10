void main() {
  String? name = "Emeka";

  // Using null check operator
  print(name!); // ✅ Prints: Emeka

  name = null;

  // Runtime error if uncommented
  //print(name!); // ❌ Error: Null check operator used on a null value
}
