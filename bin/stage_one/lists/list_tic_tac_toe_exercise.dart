class School {
  String name;
  List<String> students;

  School(this.name, this.students);

  @override
  String toString() => '$name: $students';
}

void main() {
  // 1. Tic-tac-toe
  var board = [
    ['X', 'O', 'X'],
    ['O', 'X', 'O'],
    ['X', 'O', 'X'],
  ];

  print(board[1][1]); // 2. Middle element => X

  // 3. Schools
  var schools = [
    School('High School', ['Alice', 'Bob', 'Charlie']),
    School('College', ['David', 'Eve', 'Frank']),
  ];

  // 5. Flatten students
  var allStudents = schools.expand((s) => s.students).toList();
  print(allStudents); // [Alice, Bob, Charlie, David, Eve, Frank]
}
