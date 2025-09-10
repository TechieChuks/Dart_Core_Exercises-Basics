class BankAccount {
  String accountHolder;
  double _balance; // private

  BankAccount(this.accountHolder, this._balance);

  // Getter
  double get balance => _balance;

  // Setter with validation
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Balance cannot be negative!");
    }
  }
}

//Method Implementation
void main() {
  var account = BankAccount("Bob", 500);

  // Using getter
  print("Current Balance: \$${account.balance}");

  // Using setter
  account.balance = 1000; // valid
  account.balance = -50; // invalid, prints warning
}
