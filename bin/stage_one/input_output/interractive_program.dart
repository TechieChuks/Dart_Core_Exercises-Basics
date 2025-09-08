import 'dart:io';

void main() {
  stdout.write("Enter your age: ");
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    int age = int.parse(input);
    if (age >= 18) {
      print("You are an adult.");
    } else {
      print("You are a minor.");
    }
  } else {
    print("No age entered.");
  }
}
