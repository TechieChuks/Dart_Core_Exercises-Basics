import 'dart:io';

void main() {
  List<String> tasks = [];

  print("=== CLI Todo List ===");
  stdout.write("Enter a task to add: ");
  String? task = stdin.readLineSync();

  if (task != null && task.isNotEmpty) {
    tasks.add(task);
    print("Task added!");
  } else {
    print("No task entered.");
  }

  print("\nYour Tasks:");
  for (int i = 0; i < tasks.length; i++) {
    print("${i + 1}. ${tasks[i]}");
  }
}
