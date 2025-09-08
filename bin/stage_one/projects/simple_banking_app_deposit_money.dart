import 'dart:io';

void main() {
  double balance = 0.0;

  stdout.write("Enter amount to deposit: ");
  String? input = stdin.readLineSync();

  try {
    double deposit = double.parse(input!);
    if (deposit <= 0) {
      print("Amount must be positive.");
    } else {
      balance += deposit;
      print("Deposited: \$${deposit.toStringAsFixed(2)}");
      print("Current Balance: \$${balance.toStringAsFixed(2)}");
    }
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
  }
}
