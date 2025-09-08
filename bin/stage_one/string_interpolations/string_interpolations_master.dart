void main() {
  String firstName = "Alice";
  String lastName = "Smith";
  int age = 25;

  String message =
      """
Hello $firstName $lastName,

Welcome to Dart programming!
Next year, you will be ${age + 1} years old.

Thank you!
""";

  print(message);
}
