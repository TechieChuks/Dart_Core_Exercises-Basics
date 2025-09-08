import 'dart:io';

void main() {
  print("=== Basic Calculator ===");

  try {
    stdout.write("Enter first number: ");
    double num1 = double.parse(stdin.readLineSync()!);

    stdout.write("Enter second number: ");
    double num2 = double.parse(stdin.readLineSync()!);

    stdout.write("Choose operation (+, -, *, /): ");
    String op = stdin.readLineSync()!;

    double result;

    switch (op) {
      case '+':
        result = num1 + num2;
        break;
      case '-':
        result = num1 - num2;
        break;
      case '*':
        result = num1 * num2;
        break;
      case '/':
        if (num2 == 0) {
          throw Exception("Division by zero is not allowed.");
        }
        result = num1 / num2;
        break;
      default:
        throw Exception("Invalid operation.");
    }

    print("Result: $num1 $op $num2 = $result");
  } catch (e) {
    print("Error: $e");
  }
}
