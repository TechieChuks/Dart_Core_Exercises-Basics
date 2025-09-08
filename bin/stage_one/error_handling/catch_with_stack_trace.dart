void main() {
  try {
    int result = 10 ~/ 0;
  } catch (e, s) {
    // e = exception, s = stack trace
    print("Error: $e");
    print("Stack trace: $s");
  }
}
