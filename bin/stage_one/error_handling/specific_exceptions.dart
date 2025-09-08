void main() {
  try {
    int number = int.parse("abc"); // throws FormatException
    print(number);
  } on FormatException {
    print("Invalid number format!");
  } catch (e) {
    print("Some other error: $e");
  }
  print("Program continues...");
}
