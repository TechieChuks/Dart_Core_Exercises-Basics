class Expense {
  String title;
  double amount;
  Expense(this.title, this.amount);
  @override
  String toString() => '$title: \$$amount';
}

class Student {
  String name;
  List<int> grades;
  Student(this.name, this.grades);
  double get average => grades.reduce((a, b) => a + b) / grades.length;
  @override
  String toString() => '$name avg: $average';
}

void main() {
  // 1. Todo app
  var todos = ['Read book', 'Write code', 'Go jogging'];
  todos.remove('Write code');
  print('Todos: $todos');

  // 2. Expense tracker
  var expenses = [
    Expense('Coffee', 3.5),
    Expense('Lunch', 8.0),
    Expense('Book', 12.0),
  ];
  var total = expenses.fold(0.0, (sum, e) => sum + e.amount);
  print('Total: \$$total');

  // 3. Student grades
  var students = [
    Student('Alice', [90, 80, 85]),
    Student('Bob', [70, 75, 80]),
  ];
  students.forEach(print);
}
