import 'dart:io';

void main() {
  double balance = 100.0;

  stdout.write("Enter amount to withdraw: ");
  String? input = stdin.readLineSync();

  try {
    double withdraw = double.parse(input!);
    if (withdraw <= 0) {
      print("Amount must be positive.");
    } else if (withdraw > balance) {
      print(
        "Insufficient funds! Current balance: \$${balance.toStringAsFixed(2)}",
      );
    } else {
      balance -= withdraw;
      print("Withdrawn: \$${withdraw.toStringAsFixed(2)}");
      print("Current Balance: \$${balance.toStringAsFixed(2)}");
    }
  } catch (e) {
    print("Invalid input. Please enter a valid number.");
  }
}
