import 'dart:io';
import 'dart:convert';

class BookNotFoundException implements Exception {
  String message;
  BookNotFoundException(this.message);
}

class MemberNotFoundException implements Exception {
  String message;
  MemberNotFoundException(this.message);
}

class BookAlreadyBorrowedException implements Exception {
  String message;
  BookAlreadyBorrowedException(this.message);
}

class Book {
  int id;
  String title;
  String author;
  bool isBorrowed;

  Book(this.id, this.title, this.author, {this.isBorrowed = false});

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'title': title,
      'author': author,
      'isBorrowed': isBorrowed,
    };
  }

  factory Book.fromJson(Map<String, dynamic> json) {
    return Book(
      json['id'],
      json['title'],
      json['author'],
      isBorrowed: json['isBorrowed'],
    );
  }
}

class Member {
  int id;
  String name;
  List<int> borrowedBooks;

  Member(this.id, this.name, {List<int>? borrowedBooks})
    : borrowedBooks = borrowedBooks ?? [];

  Map<String, dynamic> toJson() {
    return {'id': id, 'name': name, 'borrowedBooks': borrowedBooks};
  }

  factory Member.fromJson(Map<String, dynamic> json) {
    return Member(
      json['id'],
      json['name'],
      borrowedBooks: List<int>.from(json['borrowedBooks']),
    );
  }
}

Future<List<Book>> loadBooks() async {
  File file = File('books.json');
  if (!await file.exists()) return [];
  String contents = await file.readAsString();
  if (contents.isEmpty) return [];
  List<dynamic> data = jsonDecode(contents);
  return data.map((e) => Book.fromJson(e)).toList();
}

Future<void> saveBooks(List<Book> books) async {
  File file = File('books.json');
  await file.writeAsString(jsonEncode(books.map((b) => b.toJson()).toList()));
}

Future<List<Member>> loadMembers() async {
  File file = File('members.json');
  if (!await file.exists()) return [];
  String contents = await file.readAsString();
  if (contents.isEmpty) return [];
  List<dynamic> data = jsonDecode(contents);
  return data.map((e) => Member.fromJson(e)).toList();
}

Future<void> saveMembers(List<Member> members) async {
  File file = File('members.json');
  await file.writeAsString(jsonEncode(members.map((m) => m.toJson()).toList()));
}

Future<void> borrowBook(
  List<Book> books,
  List<Member> members,
  int memberId,
  int bookId,
) async {
  try {
    Book book = books.firstWhere((b) => b.id == bookId);
    Member member = members.firstWhere((m) => m.id == memberId);

    if (book.isBorrowed)
      throw BookAlreadyBorrowedException("Book already borrowed");

    book.isBorrowed = true;
    member.borrowedBooks.add(book.id);

    await saveBooks(books);
    await saveMembers(members);

    print("${member.name} borrowed '${book.title}'");
  } on StateError {
    print("Book or member not found.");
  } on BookAlreadyBorrowedException catch (e) {
    print(e.message);
  }
}

Future<void> returnBook(
  List<Book> books,
  List<Member> members,
  int memberId,
  int bookId,
) async {
  try {
    Book book = books.firstWhere((b) => b.id == bookId);
    Member member = members.firstWhere((m) => m.id == memberId);

    if (!member.borrowedBooks.contains(bookId)) {
      print("${member.name} did not borrow this book.");
      return;
    }

    book.isBorrowed = false;
    member.borrowedBooks.remove(bookId);

    await saveBooks(books);
    await saveMembers(members);

    print("${member.name} returned '${book.title}'");
  } on StateError {
    print("Book or member not found.");
  }
}

void main() async {
  List<Book> books = await loadBooks();
  List<Member> members = await loadMembers();

  while (true) {
    print("\n=== Library Menu ===");
    print("1. List Books");
    print("2. List Members");
    print("3. Add Book");
    print("4. Add Member");
    print("5. Borrow Book");
    print("6. Return Book");
    print("7. Exit");

    stdout.write("Choose an option: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        print("Books:");
        for (var book in books) {
          print(
            "${book.id}: ${book.title} by ${book.author} - ${book.isBorrowed ? 'Borrowed' : 'Available'}",
          );
        }
        break;
      case "2":
        print("Members:");
        for (var m in members) {
          print("${m.id}: ${m.name} - Borrowed: ${m.borrowedBooks}");
        }
        break;
      case "3":
        stdout.write("Book ID: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Title: ");
        String title = stdin.readLineSync()!;
        stdout.write("Author: ");
        String author = stdin.readLineSync()!;
        books.add(Book(id, title, author));
        await saveBooks(books);
        print("Book added.");
        break;
      case "4":
        stdout.write("Member ID: ");
        int id = int.parse(stdin.readLineSync()!);
        stdout.write("Name: ");
        String name = stdin.readLineSync()!;
        members.add(Member(id, name));
        await saveMembers(members);
        print("Member added.");
        break;
      case "5":
        stdout.write("Member ID: ");
        int memberId = int.parse(stdin.readLineSync()!);
        stdout.write("Book ID: ");
        int bookId = int.parse(stdin.readLineSync()!);
        await borrowBook(books, members, memberId, bookId);
        break;
      case "6":
        stdout.write("Member ID: ");
        int memberId = int.parse(stdin.readLineSync()!);
        stdout.write("Book ID: ");
        int bookId = int.parse(stdin.readLineSync()!);
        await returnBook(books, members, memberId, bookId);
        break;
      case "7":
        print("Exiting...");
        exit(0);
      default:
        print("Invalid option.");
    }
  }
}
