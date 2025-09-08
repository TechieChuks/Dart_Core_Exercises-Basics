import 'dart:io';

void main() {
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
