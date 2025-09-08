import 'dart:io';
import 'dart:math';

void main() {
  final random = Random();
  int numberToGuess = random.nextInt(10) + 1;
  int attempts = 5;

  for (int i = 1; i <= attempts; i++) {
    stdout.write("Attempt $i: Guess a number between 1 and 10: ");
    String? input = stdin.readLineSync();

    try {
      int guess = int.parse(input!);

      if (guess == numberToGuess) {
        print("🎉 Congratulations! You guessed it right.");
        break;
      } else if (guess < numberToGuess) {
        print("Too low!");
      } else {
        print("Too high!");
      }

      if (i == attempts) {
        print("Game over! The number was $numberToGuess.");
      }
    } catch (e) {
      print("Invalid input! Please enter a number.");
    }
  }
}
