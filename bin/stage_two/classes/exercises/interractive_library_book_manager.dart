import 'dart:io';

class Book {
  String title;
  bool isAvailable;

  Book(this.title) : isAvailable = true;

  void borrow() {
    if (isAvailable) {
      isAvailable = false;
      print("You borrowed $title");
    } else {
      print("$title is not available");
    }
  }

  void returnBook() {
    if (!isAvailable) {
      isAvailable = true;
      print("You returned $title");
    } else {
      print("$title was not borrowed");
    }
  }

  void show() {
    print("$title - ${isAvailable ? "Available" : "Borrowed"}");
  }
}

void main() {
  List<Book> books = [];
  bool running = true;

  print("=== Library Book Manager ===");

  while (running) {
    print("\nCommands: add, list, borrow, return, exit");
    stdout.write("Enter command: ");
    String? command = stdin.readLineSync()?.toLowerCase();

    switch (command) {
      case "add":
        stdout.write("Enter book title: ");
        String? title = stdin.readLineSync();
        if (title != null && title.isNotEmpty) {
          books.add(Book(title));
          print("Book added!");
        } else {
          print("Title cannot be empty.");
        }
        break;

      case "list":
        if (books.isEmpty)
          print("No books available.");
        else {
          for (int i = 0; i < books.length; i++) {
            print(
              "${i + 1}. ${books[i].title} - ${books[i].isAvailable ? "Available" : "Borrowed"}",
            );
          }
        }
        break;

      case "borrow":
        if (books.isEmpty) {
          print("No books to borrow.");
          break;
        }
        stdout.write("Enter book number to borrow: ");
        int? num = int.tryParse(stdin.readLineSync()!);
        if (num == null || num <= 0 || num > books.length)
          print("Invalid book number.");
        else
          books[num - 1].borrow();
        break;

      case "return":
        if (books.isEmpty) {
          print("No books to return.");
          break;
        }
        stdout.write("Enter book number to return: ");
        int? numR = int.tryParse(stdin.readLineSync()!);
        if (numR == null || numR <= 0 || numR > books.length)
          print("Invalid book number.");
        else
          books[numR - 1].returnBook();
        break;

      case "exit":
        running = false;
        print("Exiting Library Book Manager.");
        break;

      default:
        print("Invalid command.");
    }
  }
}
