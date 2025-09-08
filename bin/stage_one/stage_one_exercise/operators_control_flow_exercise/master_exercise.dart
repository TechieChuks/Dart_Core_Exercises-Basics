import 'dart:io';

void main() {
  while (true) {
    print("\n--- Operators & Control Flow Practice ---");
    print("1. Integer vs Double Division");
    print("2. Short-circuit Logic");
    print("3. If-Else Grading");
    print("4. Switch Command Menu");
    print("5. For vs For-in Loop");
    print("6. Do-While Guessing Game");
    print("7. Exit");
    stdout.write("Choose an exercise: ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        divisionExercise();
        break;
      case "2":
        logicExercise();
        break;
      case "3":
        gradingExercise();
        break;
      case "4":
        switchExercise();
        break;
      case "5":
        loopExercise();
        break;
      case "6":
        guessingExercise();
        break;
      case "7":
        print("Goodbye 👋");
        return;
      default:
        print("❌ Invalid choice, try again.");
    }
  }
}

// ---------------- Exercise 1 ----------------
void divisionExercise() {
  stdout.write("Enter first number: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int b = int.parse(stdin.readLineSync()!);

  print("Sum = ${a + b}");
  print("Integer Division (~/) = ${a ~/ b}");
  print("Remainder (%) = ${a % b}");
  print("Normal Division (/) = ${a / b} (always double)");
}

// ---------------- Exercise 2 ----------------
void logicExercise() {
  stdout.write("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Do you have ID? (yes/no): ");
  bool hasID = stdin.readLineSync()!.toLowerCase() == "yes";

  bool result = isEligible(age, hasID);
  print("Eligibility: $result");
}

bool isEligible(int age, bool hasID) {
  // Short-circuiting in action
  return age >= 18 && checkID(hasID);
}

bool checkID(bool hasID) {
  print("Checking ID...");
  return hasID;
}

// ---------------- Exercise 3 ----------------
void gradingExercise() {
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

// ---------------- Exercise 4 ----------------
void switchExercise() {
  stdout.write("Enter command (start/stop/pause): ");
  String cmd = stdin.readLineSync()!;

  switch (cmd) {
    case "start":
      print("🚀 System starting...");
      break;
    case "stop":
      print("🛑 System stopped.");
      break;
    case "pause":
      print("⏸ System paused.");
      break;
    default:
      print("❌ Unknown command.");
  }
}

// ---------------- Exercise 5 ----------------
void loopExercise() {
  List<String> fruits = ["apple", "banana", "cherry"];

  print("\nC-style for loop with index:");
  for (int i = 0; i < fruits.length; i++) {
    print("$i: ${fruits[i]}");
  }

  print("\nFor-in loop (just values):");
  for (var fruit in fruits) {
    print(fruit);
  }
}

// ---------------- Exercise 6 ----------------
void guessingExercise() {
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
