import 'dart:io';

class Person {
  String name;
  int age;

  Person(this.name, this.age);

  void greet() {
    print("Hello, my name is $name and I am $age years old.");
  }
}

void main() {
  List<Person> people = [];
  bool running = true;

  print("=== Person Manager ===");

  while (running) {
    print("\nCommands: add, list, greet, exit");
    stdout.write("Enter command: ");
    String? command = stdin.readLineSync()?.toLowerCase();

    switch (command) {
      case "add":
        stdout.write("Enter name: ");
        String? name = stdin.readLineSync();
        stdout.write("Enter age: ");
        String? ageInput = stdin.readLineSync();
        try {
          int age = int.parse(ageInput!);
          if (name != null && name.isNotEmpty) {
            people.add(Person(name, age));
            print("Person added!");
          } else {
            print("Name cannot be empty.");
          }
        } catch (e) {
          print("Invalid age entered.");
        }
        break;

      case "list":
        if (people.isEmpty)
          print("No persons available.");
        else {
          print("Persons:");
          for (int i = 0; i < people.length; i++) {
            print("${i + 1}. ${people[i].name}, ${people[i].age} years old");
          }
        }
        break;

      case "greet":
        if (people.isEmpty)
          print("No persons to greet.");
        else {
          for (var person in people) {
            person.greet();
          }
        }
        break;

      case "exit":
        running = false;
        print("Exiting Person Manager.");
        break;

      default:
        print("Invalid command.");
    }
  }
}
