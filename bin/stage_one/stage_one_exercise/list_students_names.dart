import 'dart:io';

void main() {
  List<String> students = [];

  stdout.write("How many students to add? ");
  int count = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < count; i++) {
    stdout.write("Enter student name: ");
    String name = stdin.readLineSync()!;
    students.add(name);
  }

  stdout.write("Enter a student to remove: ");
  String removeName = stdin.readLineSync()!;
  students.remove(removeName);

  print("Updated Student List:");
  for (var student in students) {
    print("- $student");
  }
}
