import 'dart:io';

void main() {
  stdout.write("Enter your name: "); // prints prompt without newline
  String? name = stdin.readLineSync();
  print("Hello, $name!");
}
