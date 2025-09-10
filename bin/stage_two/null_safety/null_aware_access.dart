void main() {
  String? text = "I am Techie Chuks";

  print(text?.length); // ✅ Prints: 5

  text = null;

  print(text?.length); // ✅ Prints: null, no error
}
