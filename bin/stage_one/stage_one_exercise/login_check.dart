import 'dart:io';

void main() {
  stdout.write("Are you logged in? (yes/no): ");
  String loginInput = stdin.readLineSync()!.toLowerCase();
  bool isLoggedIn = loginInput == "yes";

  stdout.write("Do you have a profile? (yes/no): ");
  String profileInput = stdin.readLineSync()!.toLowerCase();
  bool hasProfile = profileInput == "yes";

  if (isLoggedIn && hasProfile) {
    print("Welcome!");
  } else if (isLoggedIn && !hasProfile) {
    print("Please complete your profile.");
  } else {
    print("You must log in.");
  }
}
