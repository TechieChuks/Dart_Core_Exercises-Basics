import 'dart:io';

void main() {
  stdout.write("Enter a number: ");
  int num = int.parse(stdin.readLineSync()!); // ! asserts non-null
  print("Double the number: ${num * 2}");
}
