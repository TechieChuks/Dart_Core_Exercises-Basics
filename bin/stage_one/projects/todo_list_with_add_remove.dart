import 'dart:io';

void main() {
  List<String> tasks = [];
  bool running = true;

  while (running) {
    print("\nChoose an option: [add, remove, list, exit]");
    stdout.write("Enter command: ");
    String? command = stdin.readLineSync()?.toLowerCase();

    switch (command) {
      case "add":
        stdout.write("Enter task to add: ");
        String? task = stdin.readLineSync();
        if (task != null && task.isNotEmpty) {
          tasks.add(task);
          print("Task added!");
        } else {
          print("No task entered.");
        }
        break;

      case "remove":
        stdout.write("Enter task number to remove: ");
        String? input = stdin.readLineSync();
        try {
          int index = int.parse(input!) - 1;
          String removed = tasks.removeAt(index);
          print("Removed task: $removed");
        } catch (e) {
          print("Invalid input or task number out of range.");
        }
        break;

      case "list":
        if (tasks.isEmpty) {
          print("No tasks found.");
        } else {
          print("Your Tasks:");
          for (int i = 0; i < tasks.length; i++) {
            print("${i + 1}. ${tasks[i]}");
          }
        }
        break;

      case "exit":
        running = false;
        print("Exiting Todo List. Goodbye!");
        break;

      default:
        print("Invalid command. Try again.");
    }
  }
}
