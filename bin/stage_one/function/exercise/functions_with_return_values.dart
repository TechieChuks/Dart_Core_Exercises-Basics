import 'dart:io';

int add(int a, int b) {
  return a + b;
}

void main() {
  stdout.write("Enter first number: ");
  int num1 = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int num2 = int.parse(stdin.readLineSync()!);

  int result = add(num1, num2);
  print("Sum: $result");
}
