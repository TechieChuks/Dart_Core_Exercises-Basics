import 'dart:io';

void greet([String? name]) {
  if (name != null) {
    print("Hello, $name!");
  } else {
    print("Hello!");
  }
}

void main() {
  stdout.write("Enter your name (or leave blank): ");
  String? name = stdin.readLineSync();

  if (name == "") {
    greet();
  } else {
    greet(name);
  }
}
