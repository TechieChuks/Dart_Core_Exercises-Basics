import 'dart:io';

class BankAccount {
  String accountHolder;
  double balance;

  BankAccount(this.accountHolder, this.balance);

  void deposit(double amount) {
    balance += amount;
    print("\$${amount.toStringAsFixed(2)} deposited.");
  }

  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("\$${amount.toStringAsFixed(2)} withdrawn.");
    } else {
      print("Insufficient balance!");
    }
  }

  void checkBalance() {
    print("$accountHolder's Balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  List<BankAccount> accounts = [];
  bool running = true;

  print("=== Bank Account Manager ===");

  while (running) {
    print("\nCommands: add, deposit, withdraw, balance, list, exit");
    stdout.write("Enter command: ");
    String? command = stdin.readLineSync()?.toLowerCase();

    switch (command) {
      case "add":
        stdout.write("Enter account holder name: ");
        String? name = stdin.readLineSync();
        if (name != null && name.isNotEmpty) {
          accounts.add(BankAccount(name, 0.0));
          print("Bank account for $name created!");
        } else {
          print("Name cannot be empty.");
        }
        break;

      case "deposit":
        if (accounts.isEmpty) {
          print("No accounts available.");
          break;
        }
        stdout.write("Enter account number: ");
        int? accNum = int.tryParse(stdin.readLineSync()!);
        if (accNum == null || accNum <= 0 || accNum > accounts.length) {
          print("Invalid account number.");
          break;
        }
        stdout.write("Enter amount to deposit: ");
        double? amount = double.tryParse(stdin.readLineSync()!);
        if (amount == null || amount <= 0)
          print("Invalid amount.");
        else
          accounts[accNum - 1].deposit(amount);
        break;

      case "withdraw":
        if (accounts.isEmpty) {
          print("No accounts available.");
          break;
        }
        stdout.write("Enter account number: ");
        int? accNumW = int.tryParse(stdin.readLineSync()!);
        if (accNumW == null || accNumW <= 0 || accNumW > accounts.length) {
          print("Invalid account number.");
          break;
        }
        stdout.write("Enter amount to withdraw: ");
        double? amountW = double.tryParse(stdin.readLineSync()!);
        if (amountW == null || amountW <= 0)
          print("Invalid amount.");
        else
          accounts[accNumW - 1].withdraw(amountW);
        break;

      case "balance":
        if (accounts.isEmpty) {
          print("No accounts available.");
          break;
        }
        stdout.write("Enter account number: ");
        int? accNumB = int.tryParse(stdin.readLineSync()!);
        if (accNumB == null || accNumB <= 0 || accNumB > accounts.length) {
          print("Invalid account number.");
          break;
        }
        accounts[accNumB - 1].checkBalance();
        break;

      case "list":
        if (accounts.isEmpty)
          print("No accounts available.");
        else {
          print("Accounts:");
          for (int i = 0; i < accounts.length; i++) {
            print(
              "${i + 1}. ${accounts[i].accountHolder} - \$${accounts[i].balance.toStringAsFixed(2)}",
            );
          }
        }
        break;

      case "exit":
        running = false;
        print("Exiting Bank Account Manager.");
        break;

      default:
        print("Invalid command.");
    }
  }
}
