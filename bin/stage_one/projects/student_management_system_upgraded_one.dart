import 'dart:io';
import 'dart:convert';

class Student {
  int id; // int
  String name; // String
  double gpa; // double
  bool enrolled; // bool
  List<String> courses; // List<String>

  Student(this.id, this.name, this.gpa, this.enrolled, this.courses);

  // Convert to Map for JSON
  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "gpa": gpa,
      "enrolled": enrolled,
      "courses": courses,
    };
  }

  // Create Student from Map
  factory Student.fromMap(Map<String, dynamic> map) {
    return Student(
      map["id"],
      map["name"],
      map["gpa"].toDouble(),
      map["enrolled"],
      List<String>.from(map["courses"]),
    );
  }
}

class StudentDatabase {
  final String filePath = "students.json";

  // Load students from file
  Future<List<Student>> loadStudents() async {
    final file = File(filePath);
    if (!await file.exists()) {
      return [];
    }
    String contents = await file.readAsString();
    if (contents.trim().isEmpty) {
      return [];
    }
    List<dynamic> jsonList = jsonDecode(contents);
    return jsonList.map((data) => Student.fromMap(data)).toList();
  }

  // Save students to file
  Future<void> saveStudents(List<Student> students) async {
    final file = File(filePath);
    List<Map<String, dynamic>> jsonList = students
        .map((s) => s.toMap())
        .toList();
    await file.writeAsString(jsonEncode(jsonList), flush: true);
  }
}

void main() async {
  List<Student> students = [];
  Set<String> allCourses = {};
  var db = StudentDatabase();

  // Load existing students
  students = await db.loadStudents();
  for (var s in students) {
    allCourses.addAll(s.courses);
  }

  while (true) {
    print("\n--- Student Management ---");
    print("1. Add Student");
    print("2. View All Students");
    print("3. Check Enrollment");
    print("4. Show Unique Courses");
    print("5. Save & Exit");
    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        stdout.write("Enter student ID (int): ");
        int id = int.parse(stdin.readLineSync()!);

        stdout.write("Enter student name (String): ");
        String name = stdin.readLineSync()!;

        stdout.write("Enter GPA (double): ");
        double gpa = double.parse(stdin.readLineSync()!);

        stdout.write("Is the student enrolled? (yes/no): ");
        bool enrolled = stdin.readLineSync()!.toLowerCase() == "yes";

        stdout.write("Enter courses separated by commas: ");
        List<String> courses = stdin
            .readLineSync()!
            .split(",")
            .map((c) => c.trim())
            .where((c) => c.isNotEmpty)
            .toList();

        students.add(Student(id, name, gpa, enrolled, courses));
        allCourses.addAll(courses);

        print("✅ Student added successfully.");
        break;

      case "2":
        if (students.isEmpty) {
          print("No students found.");
        } else {
          for (var s in students) {
            print(s.toMap());
          }
        }
        break;

      case "3":
        stdout.write("Enter student ID to check: ");
        int checkId = int.parse(stdin.readLineSync()!);
        var found = students.where((s) => s.id == checkId).toList();
        if (found.isNotEmpty) {
          print(
            found.first.enrolled
                ? "${found.first.name} is enrolled."
                : "${found.first.name} is NOT enrolled.",
          );
        } else {
          print("No student found with ID $checkId.");
        }
        break;

      case "4":
        print("All Unique Courses: $allCourses");
        break;

      case "5":
        await db.saveStudents(students);
        print("💾 Data saved. Goodbye!");
        return;

      default:
        print("❌ Invalid choice. Try again.");
    }
  }
}
