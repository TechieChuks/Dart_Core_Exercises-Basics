import 'dart:io';

class Student {
  String name;
  int score;

  Student(this.name, this.score);

  void showResult() {
    print("$name scored $score marks");
  }
}

void main() {
  List<Student> students = [];
  bool running = true;

  print("=== Student Manager ===");

  while (running) {
    print("\nCommands: add, list, show, exit");
    stdout.write("Enter command: ");
    String? command = stdin.readLineSync()?.toLowerCase();

    switch (command) {
      case "add":
        stdout.write("Enter student name: ");
        String? name = stdin.readLineSync();
        stdout.write("Enter score: ");
        int? score = int.tryParse(stdin.readLineSync()!);
        if (name != null && name.isNotEmpty && score != null) {
          students.add(Student(name, score));
          print("Student added!");
        } else {
          print("Invalid input.");
        }
        break;

      case "list":
        if (students.isEmpty)
          print("No students available.");
        else {
          for (int i = 0; i < students.length; i++) {
            print("${i + 1}. ${students[i].name}");
          }
        }
        break;

      case "show":
        if (students.isEmpty)
          print("No students available.");
        else {
          stdout.write("Enter student number: ");
          int? num = int.tryParse(stdin.readLineSync()!);
          if (num == null || num <= 0 || num > students.length)
            print("Invalid number.");
          else
            students[num - 1].showResult();
        }
        break;

      case "exit":
        running = false;
        print("Exiting Student Manager.");
        break;

      default:
        print("Invalid command.");
    }
  }
}
