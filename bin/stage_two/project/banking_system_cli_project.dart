import 'dart:io';
import 'dart:convert';

class Account {
  int id;
  double balance;

  Account(this.id, {this.balance = 0});

  Map<String, dynamic> toJson() => {'id': id, 'balance': balance};

  factory Account.fromJson(Map<String, dynamic> json) =>
      Account(json['id'], balance: json['balance']);
}

class Customer {
  int id;
  String name;
  List<int> accounts; // account IDs

  Customer(this.id, this.name, {List<int>? accounts})
    : accounts = accounts ?? [];

  Map<String, dynamic> toJson() => {
    'id': id,
    'name': name,
    'accounts': accounts,
  };

  factory Customer.fromJson(Map<String, dynamic> json) => Customer(
    json['id'],
    json['name'],
    accounts: List<int>.from(json['accounts']),
  );
}

class InsufficientFundsException implements Exception {
  String message;
  InsufficientFundsException(this.message);
}

class CustomerNotFoundException implements Exception {
  String message;
  CustomerNotFoundException(this.message);
}

Future<List<Map<String, dynamic>>> readJsonFile(String path) async {
  File file = File(path);
  if (!await file.exists()) return [];
  String contents = await file.readAsString();
  if (contents.isEmpty) return [];
  return List<Map<String, dynamic>>.from(jsonDecode(contents));
}

Future<void> writeJsonFile(String path, List<Map<String, dynamic>> data) async {
  File file = File(path);
  await file.writeAsString(jsonEncode(data));
}

const accountsFile = 'data/accounts.json';
const customersFile = 'data/customers.json';

Future<List<Account>> loadAccounts() async {
  List<Map<String, dynamic>> data = await readJsonFile(accountsFile);
  return data.map((e) => Account.fromJson(e)).toList();
}

Future<void> saveAccounts(List<Account> accounts) async {
  await writeJsonFile(accountsFile, accounts.map((a) => a.toJson()).toList());
}

Future<List<Customer>> loadCustomers() async {
  List<Map<String, dynamic>> data = await readJsonFile(customersFile);
  return data.map((e) => Customer.fromJson(e)).toList();
}

Future<void> saveCustomers(List<Customer> customers) async {
  await writeJsonFile(customersFile, customers.map((c) => c.toJson()).toList());
}

// Deposit
Future<void> deposit(
  List<Account> accounts,
  int accountId,
  double amount,
) async {
  try {
    Account acc = accounts.firstWhere((a) => a.id == accountId);
    acc.balance += amount;
    await saveAccounts(accounts);
    print(
      "Deposited \$${amount} into account ${acc.id}. New balance: \$${acc.balance}",
    );
  } catch (e) {
    print("Account not found.");
  }
}

// Withdraw
Future<void> withdraw(
  List<Account> accounts,
  int accountId,
  double amount,
) async {
  try {
    Account acc = accounts.firstWhere((a) => a.id == accountId);
    if (acc.balance < amount)
      throw InsufficientFundsException("Not enough funds.");
    acc.balance -= amount;
    await saveAccounts(accounts);
    print(
      "Withdrew \$${amount} from account ${acc.id}. New balance: \$${acc.balance}",
    );
  } catch (e) {
    if (e is InsufficientFundsException)
      print(e.message);
    else
      print("Account not found.");
  }
}

// Transfer
Future<void> transfer(
  List<Account> accounts,
  int fromId,
  int toId,
  double amount,
) async {
  try {
    Account fromAcc = accounts.firstWhere((a) => a.id == fromId);
    Account toAcc = accounts.firstWhere((a) => a.id == toId);

    if (fromAcc.balance < amount)
      throw InsufficientFundsException("Not enough funds.");

    fromAcc.balance -= amount;
    toAcc.balance += amount;

    await saveAccounts(accounts);
    print("Transferred \$${amount} from account $fromId to $toId");
  } catch (e) {
    if (e is InsufficientFundsException)
      print(e.message);
    else
      print("One of the accounts not found.");
  }
}

void main() async {
  List<Account> accounts = await loadAccounts();
  List<Customer> customers = await loadCustomers();

  while (true) {
    print("\n=== Banking Menu ===");
    print("1. List Accounts");
    print("2. List Customers");
    print("3. Add Account");
    print("4. Add Customer");
    print("5. Deposit");
    print("6. Withdraw");
    print("7. Transfer");
    print("8. Exit");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        for (var a in accounts) {
          print("Account ${a.id} - Balance: \$${a.balance}");
        }
        break;
      case "2":
        for (var c in customers) {
          print("Customer ${c.id}: ${c.name} - Accounts: ${c.accounts}");
        }
        break;
      case "3":
        stdout.write("Account ID: ");
        int id = int.parse(stdin.readLineSync()!);
        accounts.add(Account(id));
        await saveAccounts(accounts);
        print("Account added.");
        break;
      case "4":
        stdout.write("Customer ID: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Name: ");
        String name = stdin.readLineSync()!;
        customers.add(Customer(id, name));
        await saveCustomers(customers);
        print("Customer added.");
        break;
      case "5":
        stdout.write("Account ID: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Amount: ");
        double amount = double.parse(stdin.readLineSync()!);
        await deposit(accounts, id, amount);
        break;
      case "6":
        stdout.write("Account ID: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Amount: ");
        double amount = double.parse(stdin.readLineSync()!);
        await withdraw(accounts, id, amount);
        break;
      case "7":
        stdout.write("From Account ID: ");
        int fromId = int.parse(stdin.readLineSync()!);
        stdout.write("To Account ID: ");
        int toId = int.parse(stdin.readLineSync()!);
        stdout.write("Amount: ");
        double amount = double.parse(stdin.readLineSync()!);
        await transfer(accounts, fromId, toId, amount);
        break;
      case "8":
        print("Exiting...");
        exit(0);
      default:
        print("Invalid option.");
    }
  }
}
