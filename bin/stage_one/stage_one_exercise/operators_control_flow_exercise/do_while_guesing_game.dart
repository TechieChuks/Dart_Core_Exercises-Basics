// ---------------- Exercise 6 ----------------
import 'dart:io';

void main() {
  const int secret = 5;
  int guess;

  do {
    stdout.write("Guess the secret number (1-10): ");
    guess = int.parse(stdin.readLineSync()!);

    if (guess != secret) {
      print("❌ Wrong guess, try again.");
    }
  } while (guess != secret);

  print("🎉 Correct! The secret number was $secret.");
}
