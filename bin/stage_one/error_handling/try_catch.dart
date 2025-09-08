void main() {
  try {
    int result = 10 ~/ 0; // integer division by zero
    print(result);
  } catch (e) {
    print("An error occurred: $e");
  }
  print("Program continues...");
}
