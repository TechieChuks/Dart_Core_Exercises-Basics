import 'dart:io';

void main() {
  while (true) {
    print("\n=== Debugging Challenge Pack (Fixed) ===");
    print("1. Arithmetic Division (fixed)");
    print("2. Short-circuit Logic (fixed)");
    print("3. If-Else Grading (fixed)");
    print("4. Switch Command Menu (fixed)");
    print("5. For vs For-in Loop (fixed)");
    print("6. Do-While Guessing Game (fixed)");
    print("0. Exit");
    stdout.write("Choose an exercise: ");

    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        arithmeticFixed();
        break;
      case "2":
        logicFixed();
        break;
      case "3":
        gradingFixed();
        break;
      case "4":
        switchFixed();
        break;
      case "5":
        loopFixed();
        break;
      case "6":
        guessingFixed();
        break;
      case "0":
        print("Goodbye 👋");
        return;
      default:
        print("❌ Invalid choice, try again.");
    }
  }
}

// ------------------- FIXED EXERCISES -------------------

// 1. Arithmetic Division (fixed)
void arithmeticFixed() {
  stdout.write("Enter first number: ");
  int a = int.parse(stdin.readLineSync()!);

  stdout.write("Enter second number: ");
  int b = int.parse(stdin.readLineSync()!);

  print("Sum = ${a + b}"); // ✅ use interpolation
  print("Integer Division = ${a ~/ b}"); // ✅ ~/ for integer division
  print("Normal Division = ${a / b}"); // ✅ / keeps decimals
}

// 2. Short-circuit Logic (fixed)
void logicFixed() {
  stdout.write("Enter age: ");
  int age = int.parse(stdin.readLineSync()!);

  stdout.write("Do you have ID? (yes/no): ");
  bool hasID = stdin.readLineSync()!.toLowerCase() == "yes"; // ✅ handle case

  bool result = isEligibleFixed(age, hasID);
  print("Eligibility: $result"); // ✅ use interpolation
}

bool isEligibleFixed(int age, bool hasID) {
  return age >= 18 && checkIDFixed(hasID); // ✅ pass parameter
}

bool checkIDFixed(bool hasID) {
  print("Checking ID...");
  return hasID;
}

// 3. If-Else Grading (fixed)
void gradingFixed() {
  stdout.write("Enter score (0-100): ");
  int score = int.parse(stdin.readLineSync()!); // ✅ use int.parse

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

// 4. Switch Command Menu (fixed)
void switchFixed() {
  stdout.write("Enter command (start/stop/pause): ");
  String cmd = stdin.readLineSync()!;

  switch (cmd) {
    case "start":
      print("🚀 System starting...");
      break; // ✅ prevent fall-through
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

// 5. For vs For-in Loop (fixed)
void loopFixed() {
  List<String> fruits = ["apple", "banana", "cherry"];

  print("Removing items safely using for loop:");
  for (int i = fruits.length - 1; i >= 0; i--) {
    print("Removing ${fruits[i]}");
    fruits.removeAt(i); // ✅ safe removal using index
  }

  print("Final list: $fruits"); // should be empty
}

// 6. Do-While Guessing Game (fixed)
void guessingFixed() {
  const int secret = 5;
  int guess = 0;

  do {
    stdout.write("Guess the secret number (1-10): ");
    guess = int.parse(stdin.readLineSync()!); // ✅ update guess

    if (guess != secret) {
      print("❌ Wrong guess, try again.");
    }
  } while (guess != secret);

  print("🎉 Correct! The secret number was $secret.");
}
