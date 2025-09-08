import 'dart:io';

class Task {
  String title;
  bool completed;

  Task(this.title) : completed = false;

  void markDone() {
    completed = true;
  }

  void show() {
    print("$title - ${completed ? "Done" : "Pending"}");
  }
}

void main() {
  List<Task> tasks = [];
  bool running = true;

  print("=== Todo Task Manager ===");

  while (running) {
    print("\nCommands: add, list, complete, exit");
    stdout.write("Enter command: ");
    String? command = stdin.readLineSync()?.toLowerCase();

    switch (command) {
      case "add":
        stdout.write("Enter task title: ");
        String? title = stdin.readLineSync();
        if (title != null && title.isNotEmpty) {
          tasks.add(Task(title));
          print("Task added!");
        } else {
          print("Title cannot be empty.");
        }
        break;

      case "list":
        if (tasks.isEmpty)
          print("No tasks.");
        else {
          for (int i = 0; i < tasks.length; i++) {
            print(
              "${i + 1}. ${tasks[i].title} - ${tasks[i].completed ? "Done" : "Pending"}",
            );
          }
        }
        break;

      case "complete":
        if (tasks.isEmpty) {
          print("No tasks to complete.");
          break;
        }
        stdout.write("Enter task number to mark done: ");
        int? num = int.tryParse(stdin.readLineSync()!);
        if (num == null || num <= 0 || num > tasks.length)
          print("Invalid task number.");
        else {
          tasks[num - 1].markDone();
          print("Task marked done!");
        }
        break;

      case "exit":
        running = false;
        print("Exiting Todo Task Manager.");
        break;

      default:
        print("Invalid command.");
    }
  }
}
