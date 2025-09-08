import 'dart:io';

void main() {
  stdout.write("Enter score (0-100): ");
  int score = int.parse(stdin.readLineSync()!);

  if (score >= 90) {
    print("Grade: A");
  } else if (score >= 80) {
    print("Grade: B");
  } else if (score >= 70) {
    print("Grade: C");
  } else {
    print("Grade: F");
  }
}
