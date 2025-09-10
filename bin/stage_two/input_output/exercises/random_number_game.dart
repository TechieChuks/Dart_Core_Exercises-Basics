import 'dart:math';
import 'dart:io';

void main() {
  var random = Random();
  int number = random.nextInt(10) + 1; // 1-10

  stdout.write("Guess a number between 1 and 10: ");
  try {
    int guess = int.parse(stdin.readLineSync()!);

    if (guess == number) {
      print("Correct!");
    } else {
      print("Wrong, the number was $number");
    }
  } catch (e) {
    print("Please enter a valid integer.");
  }
}
