import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  String? input = stdin.readLineSync();

  try {
    int number = int.parse(input!);
    print("You entered: $number");
  } on FormatException {
    print("Invalid input! Please enter a number.");
  } catch (e) {
    print("Unexpected error: $e");
  } finally {
    print("Execution complete.");
  }
}
