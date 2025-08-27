class Course {
  String name;
  List<String> topics;

  Course(this.name, this.topics);

  @override
  String toString() => '$name: $topics';
}

void main() {
  var courses = [
    Course('Dart', ['Variables', 'Loops', 'OOP']),
    Course('Flutter', ['Widgets', 'State', 'Animations']),
  ];

  print(courses[0].topics[1]); // Loops
}
