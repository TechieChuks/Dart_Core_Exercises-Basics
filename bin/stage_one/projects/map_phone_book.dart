import 'dart:io';

void main() {
  Map<String, String> phoneBook = {};

  stdout.write("How many contacts to add? ");
  int count = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < count; i++) {
    stdout.write("Enter name: ");
    String name = stdin.readLineSync()!;
    stdout.write("Enter phone number: ");
    String phone = stdin.readLineSync()!;
    phoneBook[name] = phone;
  }

  stdout.write("Lookup number for which name? ");
  String lookup = stdin.readLineSync()!;
  if (phoneBook.containsKey(lookup)) {
    print("$lookup's number: ${phoneBook[lookup]}");
  } else {
    print("No entry found for $lookup");
  }

  print("All Phone Book Entries:");
  phoneBook.forEach((name, number) {
    print("$name → $number");
  });
}
