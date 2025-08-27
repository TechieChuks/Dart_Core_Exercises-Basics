class Student {
  String name;
  int age;
  static String schName = "Ubong Memorial";
  Student(this.name, this.age);
}

void main() {
  var p1 = Student("Musa", 9);
  var p2 = Student("Yaro", 12);
  print(p1.name);
  print(p1.age);
  print(Student.schName);
  print(p2.name);
  print(p2.age);
  Student.schName = "Chisex";
  print(Student.schName);
}
