void main() {
  String? input;

  print(input ?? "Default User"); // ✅ Prints: Default User

  input = null;
  print(input ?? "Default User"); // ✅ Prints: Default User

  input = "Emeka";
  print(input ?? "Default User"); // ✅ Prints: Emeka
}
