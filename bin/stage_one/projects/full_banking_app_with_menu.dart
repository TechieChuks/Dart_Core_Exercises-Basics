import 'dart:io';

void main() {
  double balance = 0.0;
  bool running = true;

  print("=== Welcome to CLI Bank ===");

  while (running) {
    print("\nChoose an option: deposit, withdraw, balance, exit");
    stdout.write("Enter command: ");
    String? command = stdin.readLineSync()?.toLowerCase();

    switch (command) {
      case "deposit":
        stdout.write("Enter amount to deposit: ");
        try {
          double amount = double.parse(stdin.readLineSync()!);
          if (amount <= 0)
            print("Amount must be positive.");
          else {
            balance += amount;
            print("Deposited: \$${amount.toStringAsFixed(2)}");
          }
        } catch (e) {
          print("Invalid input. Please enter a valid number.");
        }
        break;

      case "withdraw":
        stdout.write("Enter amount to withdraw: ");
        try {
          double amount = double.parse(stdin.readLineSync()!);
          if (amount <= 0)
            print("Amount must be positive.");
          else if (amount > balance)
            print("Insufficient funds!");
          else {
            balance -= amount;
            print("Withdrawn: \$${amount.toStringAsFixed(2)}");
          }
        } catch (e) {
          print("Invalid input. Please enter a valid number.");
        }
        break;

      case "balance":
        print("Current Balance: \$${balance.toStringAsFixed(2)}");
        break;

      case "exit":
        running = false;
        print("Thank you for using CLI Bank!");
        break;

      default:
        print("Invalid command. Try again.");
    }
  }
}
