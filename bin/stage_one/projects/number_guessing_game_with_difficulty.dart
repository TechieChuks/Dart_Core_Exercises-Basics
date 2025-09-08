int maxNumber;
int attempts;

stdout.write("Choose difficulty (easy/medium/hard): ");
String difficulty = stdin.readLineSync()!.toLowerCase();

switch (difficulty) {
  case 'easy':
    maxNumber = 10;
    attempts = 5;
    break;
  case 'medium':
    maxNumber = 50;
    attempts = 7;
    break;
  case 'hard':
    maxNumber = 100;
    attempts = 10;
    break;
  default:
    print("Invalid difficulty. Defaulting to easy.");
    maxNumber = 10;
    attempts = 5;
}
