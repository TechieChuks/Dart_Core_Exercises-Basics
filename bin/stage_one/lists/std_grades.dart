class Student {
  String name;
  List<int> grades;

  Student(this.name, this.grades);

  double get average => grades.reduce((a, b) => a + b) / grades.length;

  @override
  String toString() => '$name avg: $average';
}

void main() {
  var students = [
    Student('Alice', [90, 85, 88]),
    Student('Bob', [70, 75, 80]),
  ];

  for (var s in students) {
    print(s);
  }
}
