void main() {
  List<Function> tasks = [];

  // Add tasks as closures
  for (int i = 1; i <= 3; i++) {
    tasks.add(() => print("Task $i executed"));
  }

  // Execute tasks
  for (var task in tasks) {
    task(); // Remembers the correct value of i due to closure
  }
}
