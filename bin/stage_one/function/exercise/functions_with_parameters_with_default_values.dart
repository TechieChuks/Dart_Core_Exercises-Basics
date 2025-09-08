import 'dart:io';

void greet({String firstName = "Guest"}) {
  print("Hello, $firstName!");
}

void main() {
  stdout.write("Enter your first name (or leave blank): ");
  String input = stdin.readLineSync()!;

  if (input.isEmpty) {
    greet();
  } else {
    greet(firstName: input);
  }
}
