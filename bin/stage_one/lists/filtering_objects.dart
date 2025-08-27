void main() {
  var books = [
    Book('Dart Basics', 'Alice', 2021),
    Book('Flutter Deep Dive', 'Bob', 2022),
    Book('OOP in Dart', 'Alice', 2020),
  ];

  var aliceBooks = books.where((b) => b.author == 'Alice').toList();
  print(aliceBooks); // Only Alice’s books
}
