class BankAccount {
  final String accountHolder;
  double balance;

  // Constructor
  BankAccount(this.accountHolder, this.balance);

  // Method to deposit money
  void deposit(double amount) {
    balance += amount;
    print("\$${amount.toStringAsFixed(2)} deposited.");
  }

  // Method to withdraw money
  void withdraw(double amount) {
    if (amount <= balance) {
      balance -= amount;
      print("\$${amount.toStringAsFixed(2)} withdrawn.");
    } else {
      print("Insufficient balance!");
    }
  }

  // Method to check balance
  void checkBalance() {
    print("Balance: \$${balance.toStringAsFixed(2)}");
  }
}

void main() {
  // Creating an object
  BankAccount myAccount = BankAccount("Alice", 500.0);

  // Accessing methods
  myAccount.deposit(100);
  myAccount.withdraw(200);
  myAccount.checkBalance();
}
