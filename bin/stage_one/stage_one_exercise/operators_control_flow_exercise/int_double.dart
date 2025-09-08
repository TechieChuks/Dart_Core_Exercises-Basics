import 'dart:io';

void main() {
  stdout.write("Enter first number: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int b = int.parse(stdin.readLineSync()!);

  print("Sum = ${a + b}");
  print("Integer Division (~/) = ${a ~/ b}");
  print("Remainder (%) = ${a % b}");
  print("Normal Division (/) = ${a / b} (always double)");
}
