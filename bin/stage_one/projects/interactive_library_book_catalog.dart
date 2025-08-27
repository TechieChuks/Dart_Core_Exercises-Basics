import 'dart:io';

// Immutable Book class
class Book {
  final String title;
  final String author;
  final int year;

  const Book(this.title, this.author, this.year);

  // Override equality so two Books with same data are considered equal
  @override
  bool operator ==(Object other) {
    return other is Book &&
        other.title == title &&
        other.author == author &&
        other.year == year;
  }

  @override
  int get hashCode => Object.hash(title, author, year);

  @override
  String toString() => '"$title" by $author ($year)';
}

// Library Config
class LibraryConfig {
  static const String appName = 'My Interactive Library Catalog';
  static const int maxBooks = 100;
}

// Library Catalog
class Library {
  final List<Book> books = []; // mutable catalog

  void addBook(Book book) {
    if (books.length >= LibraryConfig.maxBooks) {
      print('❌ Cannot add more books. Limit reached.');
      return;
    }
    if (books.contains(book)) {
      print('⚠️ Book already exists in the catalog.');
      return;
    }
    books.add(book);
    print('✅ Added: $book');
  }

  void removeBook(String title) {
    books.removeWhere((b) => b.title.toLowerCase() == title.toLowerCase());
    print('🗑️ Removed any book with title: $title');
  }

  void listBooks() {
    if (books.isEmpty) {
      print('📭 No books in the catalog.');
      return;
    }
    print('📚 Library Catalog:');
    for (var book in books) {
      print('- $book');
    }
  }
}

// Main Program
void main() {
  print('Welcome to ${LibraryConfig.appName}');
  final library = Library();

  while (true) {
    print('\nChoose an option:');
    print('1. Add a book');
    print('2. Remove a book');
    print('3. List all books');
    print('4. Exit');
    stdout.write('Enter choice: ');
    var choice = stdin.readLineSync();

    switch (choice) {
      case '1':
        stdout.write('Enter book title: ');
        var title = stdin.readLineSync() ?? '';

        stdout.write('Enter author: ');
        var author = stdin.readLineSync() ?? '';

        stdout.write('Enter year: ');
        var yearInput = stdin.readLineSync();
        var year = int.tryParse(yearInput ?? '') ?? 0;

        final book = Book(title, author, year);
        library.addBook(book);
        break;

      case '2':
        stdout.write('Enter title of book to remove: ');
        var title = stdin.readLineSync() ?? '';
        library.removeBook(title);
        break;

      case '3':
        library.listBooks();
        break;

      case '4':
        print('👋 Exiting. Goodbye!');
        return;

      default:
        print('❌ Invalid choice, please try again.');
    }
  }
}
