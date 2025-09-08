import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int numberToGuess = random.nextInt(10) + 1; // 1–10

  stdout.write("Guess a number between 1 and 10: ");
  String? input = stdin.readLineSync();

  try {
    int guess = int.parse(input!);
    if (guess == numberToGuess) {
      print("Congratulations! You guessed it right.");
    } else {
      print("Sorry! The number was $numberToGuess.");
    }
  } catch (e) {
    print("Invalid input! Please enter a number.");
  }
}
