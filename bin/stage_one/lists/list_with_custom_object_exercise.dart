class Student {
  String name;
  int age;
  String grade;

  Student(this.name, this.age, this.grade);

  @override
  String toString() => '$name ($age) - $grade';
}

void main() {
  var students = [
    Student('John', 20, 'A'),
    Student('Mary', 22, 'B'),
    Student('Sam', 19, 'A'),
  ];

  // 3. Filter A grade students
  var aStudents = students.where((s) => s.grade == 'A').toList();
  print(aStudents); // John & Sam

  // 4. Sort by age
  students.sort((a, b) => a.age.compareTo(b.age));
  print(students); // Sorted list

  // 5. Extract names
  var names = students.map((s) => s.name).toList();
  print(names); // [Sam, John, Mary]
}
