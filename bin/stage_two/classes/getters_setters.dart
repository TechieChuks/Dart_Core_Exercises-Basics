class BankAccount {
  String accountHolder;
  double _balance; // private

  BankAccount(this.accountHolder, this._balance);

  double get balance => _balance; // getter
  set balance(double amount) {
    if (amount >= 0) {
      _balance = amount;
    } else {
      print("Balance cannot be negative");
    }
  }
}

void main() {
  var account = BankAccount("Alice", 500);
  print(account.balance); // getter
  account.balance = -50; // setter validation
}
