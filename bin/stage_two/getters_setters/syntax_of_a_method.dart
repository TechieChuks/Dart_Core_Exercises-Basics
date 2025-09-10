class BankAccount {
  String accountHolder;
  double balance;

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

// Calling Methods
void main() {
  var myAccount = BankAccount("Alice", 500.0);

  myAccount.deposit(200); // Call method
  myAccount.withdraw(100); // Call method
  myAccount.checkBalance(); // Call method
}
