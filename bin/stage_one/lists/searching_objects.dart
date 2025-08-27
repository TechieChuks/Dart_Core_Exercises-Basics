class Book {
  String title;
  String author;
  int year;

  Book(this.title, this.author, this.year);

  @override
  String toString() => '"$title" by $author ($year)';
}

void main() {
  var books = [
    Book('Dart Basics', 'Alice', 2021),
    Book('Flutter Deep Dive', 'Bob', 2022),
    Book('OOP in Dart', 'Alice', 2020),
  ];

  var book = books.firstWhere((b) => b.title.contains('Flutter'));
  print(book); // Flutter Deep Dive
}
