import 'dart:io';
import 'dart:convert';

class Transaction {
  String description;
  double amount;
  String type; // "income" or "expense"
  DateTime date;

  Transaction(this.description, this.amount, this.type, {DateTime? date})
    : date = date ?? DateTime.now();

  Map<String, dynamic> toJson() => {
    'description': description,
    'amount': amount,
    'type': type,
    'date': date.toIso8601String(),
  };

  factory Transaction.fromJson(Map<String, dynamic> json) => Transaction(
    json['description'],
    json['amount'],
    json['type'],
    date: DateTime.parse(json['date']),
  );
}

// ✅ Hardcoded JSON data — empty to start
const String transactionsJson = '[]';

List<Transaction> loadTransactions() {
  final data = jsonDecode(transactionsJson);
  return (data as List).map((t) => Transaction.fromJson(t)).toList();
}

void addTransaction(List<Transaction> transactions, Transaction t) {
  transactions.add(t);
  print("${t.type} of \$${t.amount} added: ${t.description}");
}

void listTransactions(List<Transaction> transactions) {
  if (transactions.isEmpty) {
    print("No transactions found.");
    return;
  }

  double totalIncome = 0;
  double totalExpense = 0;

  print("\nTransactions:");
  for (var t in transactions) {
    print(
      "${t.date.toLocal()} - ${t.type.toUpperCase()}: \$${t.amount} - ${t.description}",
    );
    if (t.type == "income") {
      totalIncome += t.amount;
    } else {
      totalExpense += t.amount;
    }
  }

  print("\nSummary:");
  print("Total Income: \$${totalIncome}");
  print("Total Expense: \$${totalExpense}");
  print("Balance: \$${totalIncome - totalExpense}");
}

void main() {
  List<Transaction> transactions = loadTransactions();

  while (true) {
    print("\n=== Expense Tracker ===");
    print("1. Add Income");
    print("2. Add Expense");
    print("3. List Transactions");
    print("4. Exit");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        stdout.write("Description: ");
        String desc = stdin.readLineSync()!;
        stdout.write("Amount: ");
        double amount = double.parse(stdin.readLineSync()!);
        addTransaction(transactions, Transaction(desc, amount, "income"));
        break;
      case "2":
        stdout.write("Description: ");
        String desc = stdin.readLineSync()!;
        stdout.write("Amount: ");
        double amount = double.parse(stdin.readLineSync()!);
        addTransaction(transactions, Transaction(desc, amount, "expense"));
        break;
      case "3":
        listTransactions(transactions);
        break;
      case "4":
        print("Exiting...");
        exit(0);
      default:
        print("Invalid option.");
    }
  }
}
