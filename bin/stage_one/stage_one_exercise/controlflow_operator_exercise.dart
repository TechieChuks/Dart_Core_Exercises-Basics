import 'dart:io';

void main() {
  while (true) {
    print("\n=== Debugging Challenge Pack ===");
    print("1. Arithmetic Division (buggy)");
    print("2. Short-circuit Logic (buggy)");
    print("3. If-Else Grading (buggy)");
    print("4. Switch Command Menu (buggy)");
    print("5. For vs For-in Loop (buggy)");
    print("6. Do-While Guessing Game (buggy)");
    print("0. Exit");
    stdout.write("Choose an exercise: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        arithmeticBuggy();
        break;
      case "2":
        logicBuggy();
        break;
      case "3":
        gradingBuggy();
        break;
      case "4":
        switchBuggy();
        break;
      case "5":
        loopBuggy();
        break;
      case "6":
        guessingBuggy();
        break;
      case "0":
        print("Goodbye 👋");
        return;
      default:
        print("❌ Invalid choice, try again.");
    }
  }
}

// ------------------- BUGGY EXERCISES -------------------

// 1. Arithmetic Division (buggy)
void arithmeticBuggy() {
  stdout.write("Enter first number: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int b = int.parse(stdin.readLineSync()!);

  print("Sum = " + (a + b)); // ❌ Error: cannot add String + int
  print("Integer Division = ${a / b}"); // ❌ Should be ~/ if you want int
}

// 2. Short-circuit Logic (buggy)
void logicBuggy() {
  stdout.write("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Do you have ID? (yes/no): ");
  bool hasID = stdin.readLineSync() == "yes"; // ❌ Case-sensitive

  bool result = isEligible(age, hasID);
  print("Eligibility: " + result); // ❌ String + bool not allowed
}

bool isEligible(int age, bool hasID) {
  return age >= 18 && checkID; // ❌ Forgot to pass hasID
}

bool checkID(bool hasID) {
  print("Checking ID...");
  return hasID;
}

// 3. If-Else Grading (buggy)
void gradingBuggy() {
  stdout.write("Enter score (0-100): ");
  int score = stdin.readLineSync() as int; // ❌ Wrong casting

  if (score > 90) {
    // ❌ misses exactly 90
    print("Grade: A");
  } else if (score > 80) {
    print("Grade: B");
  } else if (score > 70) {
    print("Grade: C");
  } else {
    print("Grade: F");
  }
}

// 4. Switch Command Menu (buggy)
void switchBuggy() {
  stdout.write("Enter command (start/stop/pause): ");
  String cmd = stdin.readLineSync()!;

  switch (cmd) {
    case "start":
      print("🚀 System starting...");
    case "stop":
      print("🛑 System stopped.");
    case "pause":
      print("⏸ System paused.");
    default:
      print("❌ Unknown command.");
  }
}

// 5. For vs For-in Loop (buggy)
void loopBuggy() {
  List<String> fruits = ["apple", "banana", "cherry"];

  print("Removing items inside for-in loop:");
  for (var fruit in fruits) {
    print(fruit);
    fruits.remove(fruit); // ❌ Runtime error
  }
}

// 6. Do-While Guessing Game (buggy)
void guessingBuggy() {
  const int secret = 5;
  int guess = 0;

  do {
    stdout.write("Guess the secret number (1-10): ");
    // ❌ forgot to update guess → infinite loop
    if (guess != secret) {
      print("❌ Wrong guess, try again.");
    }
  } while (guess != secret);

  print("🎉 Correct! The secret number was $secret.");
}
