class Expense {
  String title;
  double amount;

  Expense(this.title, this.amount);

  @override
  String toString() => '$title: \$$amount';
}

void main() {
  var expenses = [Expense('Coffee', 3.5), Expense('Book', 12.0)];

  var total = expenses.fold(0.0, (sum, e) => sum + e.amount);
  print('Expenses: $expenses');
  print('Total: \$$total');
}
