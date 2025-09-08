import 'dart:io';

void greetPerson(String name) {
  print("Hello, $name!");
}

void main() {
  stdout.write("Enter your name: ");
  String name = stdin.readLineSync()!;
  greetPerson(name);
}
