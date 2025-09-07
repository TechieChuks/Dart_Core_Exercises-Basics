import 'dart:io';
import 'dart:convert';

class Student {
  int id;
  String name;
  double gpa;
  bool enrolled;
  List<String> courses;

  Student(this.id, this.name, this.gpa, this.enrolled, this.courses);

  Map<String, dynamic> toMap() {
    return {
      "id": id,
      "name": name,
      "gpa": gpa,
      "enrolled": enrolled,
      "courses": courses,
    };
  }

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

  Future<List<Student>> loadStudents() async {
    final file = File(filePath);
    if (!await file.exists()) return [];
    String contents = await file.readAsString();
    if (contents.trim().isEmpty) return [];
    List<dynamic> jsonList = jsonDecode(contents);
    return jsonList.map((data) => Student.fromMap(data)).toList();
  }

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

  // Load existing data
  students = await db.loadStudents();
  for (var s in students) {
    allCourses.addAll(s.courses);
  }

  while (true) {
    print("\n--- Student Management CRUD ---");
    print("1. Add Student");
    print("2. View All Students");
    print("3. Check Enrollment");
    print("4. Show Unique Courses");
    print("5. Update Student");
    print("6. Delete Student");
    print("7. Search & Filter Students 🔍");
    print("8. Save & Exit");
    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        // CREATE
        stdout.write("Enter student ID (int): ");
        int id = int.parse(stdin.readLineSync()!);

        if (students.any((s) => s.id == id)) {
          print("❌ Student with ID $id already exists.");
          break;
        }

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
        // READ
        if (students.isEmpty) {
          print("No students found.");
        } else {
          for (var s in students) {
            print(s.toMap());
          }
        }
        break;

      case "3":
        // CHECK ENROLLMENT
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
        // SHOW UNIQUE COURSES
        print("All Unique Courses: $allCourses");
        break;

      case "5":
        // UPDATE
        stdout.write("Enter student ID to update: ");
        int updateId = int.parse(stdin.readLineSync()!);
        var found = students.where((s) => s.id == updateId).toList();
        if (found.isEmpty) {
          print("❌ No student found with ID $updateId.");
          break;
        }

        var student = found.first;
        print("Editing ${student.name}: ${student.toMap()}");

        stdout.write(
          "Enter new name (or press Enter to keep '${student.name}'): ",
        );
        String newName = stdin.readLineSync()!;
        if (newName.isNotEmpty) student.name = newName;

        stdout.write(
          "Enter new GPA (or press Enter to keep '${student.gpa}'): ",
        );
        String newGpa = stdin.readLineSync()!;
        if (newGpa.isNotEmpty) student.gpa = double.parse(newGpa);

        stdout.write(
          "Is enrolled? (yes/no or Enter to keep '${student.enrolled}'): ",
        );
        String newEnroll = stdin.readLineSync()!;
        if (newEnroll.isNotEmpty) {
          student.enrolled = newEnroll.toLowerCase() == "yes";
        }

        stdout.write(
          "Enter new courses (comma-separated, or Enter to keep current): ",
        );
        String newCourses = stdin.readLineSync()!;
        if (newCourses.isNotEmpty) {
          student.courses = newCourses
              .split(",")
              .map((c) => c.trim())
              .where((c) => c.isNotEmpty)
              .toList();
          allCourses.addAll(student.courses);
        }

        print("✅ Student updated successfully.");
        break;

      case "6":
        // DELETE
        stdout.write("Enter student ID to delete: ");
        int deleteId = int.parse(stdin.readLineSync()!);
        students.removeWhere((s) => s.id == deleteId);
        print("🗑 Student with ID $deleteId removed.");
        break;

      case "7":
        // SEARCH & FILTER
        print("\n--- Search & Filter ---");
        print("a. Search by Name");
        print("b. Filter by GPA Range");
        print("c. Filter by Course");
        print("d. Filter by Enrollment Status");
        stdout.write("Choose option: ");
        String? filterChoice = stdin.readLineSync();

        switch (filterChoice) {
          case "a":
            stdout.write("Enter name to search: ");
            String keyword = stdin.readLineSync()!.toLowerCase();
            var results = students
                .where((s) => s.name.toLowerCase().contains(keyword))
                .toList();
            results.isEmpty
                ? print("No students found.")
                : results.forEach((s) => print(s.toMap()));
            break;

          case "b":
            stdout.write("Enter min GPA: ");
            double minGpa = double.parse(stdin.readLineSync()!);
            stdout.write("Enter max GPA: ");
            double maxGpa = double.parse(stdin.readLineSync()!);
            var results = students
                .where((s) => s.gpa >= minGpa && s.gpa <= maxGpa)
                .toList();
            results.isEmpty
                ? print("No students in this GPA range.")
                : results.forEach((s) => print(s.toMap()));
            break;

          case "c":
            stdout.write("Enter course to filter by: ");
            String course = stdin.readLineSync()!.toLowerCase();
            var results = students
                .where((s) => s.courses.any((c) => c.toLowerCase() == course))
                .toList();
            results.isEmpty
                ? print("No students found in this course.")
                : results.forEach((s) => print(s.toMap()));
            break;

          case "d":
            stdout.write("Filter enrolled? (yes/no): ");
            bool filterEnrolled = stdin.readLineSync()!.toLowerCase() == "yes";
            var results = students
                .where((s) => s.enrolled == filterEnrolled)
                .toList();
            results.isEmpty
                ? print("No students match this enrollment filter.")
                : results.forEach((s) => print(s.toMap()));
            break;

          default:
            print("❌ Invalid filter choice.");
        }
        break;

      case "8":
        // SAVE & EXIT
        await db.saveStudents(students);
        print("💾 Data saved. Goodbye!");
        return;

      default:
        print("❌ Invalid choice. Try again.");
    }
  }
}
