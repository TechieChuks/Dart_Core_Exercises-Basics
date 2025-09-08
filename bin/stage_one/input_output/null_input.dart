import 'dart:io';

void main() {
  stdout.write("Enter something: ");
  String? input = stdin.readLineSync();

  if (input != null && input.isNotEmpty) {
    print("You typed: $input");
  } else {
    print("No input provided.");
  }
}
