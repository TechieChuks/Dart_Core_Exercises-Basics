import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int numberToGuess = random.nextInt(10) + 1;
  int attempts = 3;

  for (int i = 1; i <= attempts; i++) {
    stdout.write("Attempt $i: Guess a number between 1 and 10: ");
    String? input = stdin.readLineSync();

    try {
      int guess = int.parse(input!);
      if (guess == numberToGuess) {
        print("Congratulations! You guessed it right.");
        break;
      } else {
        print("Wrong guess.");
        if (i == attempts) {
          print("The number was $numberToGuess.");
        }
      }
    } catch (e) {
      print("Invalid input! Enter a valid number.");
    }
  }
}
