void main() {
  try {
    int result = 10 ~/ 2;
    print(result);
  } catch (e) {
    print("Error: $e");
  } finally {
    print("This always runs!");
  }
}
