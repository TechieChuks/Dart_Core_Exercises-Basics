import 'dart:io';

void main() {
  Set<int> numbers = {};

  stdout.write("Enter numbers separated by spaces: ");
  String input = stdin.readLineSync()!;
  List<String> parts = input.split(" ");

  for (var part in parts) {
    numbers.add(int.parse(part));
  }

  print("Unique numbers: $numbers");

  stdout.write("Check if a number exists: ");
  int check = int.parse(stdin.readLineSync()!);
  print(numbers.contains(check) ? "Yes, it exists." : "No, not found.");

  Set<int> other = {3, 4, 5};
  print("Union with {3, 4, 5}: ${numbers.union(other)}");
}
