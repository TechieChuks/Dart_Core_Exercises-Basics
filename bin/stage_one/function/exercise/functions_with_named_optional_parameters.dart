import 'dart:io';

void greet({String? firstName, String? lastName}) {
  print("Hello, ${firstName ?? ''} ${lastName ?? ''}");
}

void main() {
  stdout.write("Enter first name (or leave blank): ");
  String firstName = stdin.readLineSync()!;

  stdout.write("Enter last name (or leave blank): ");
  String lastName = stdin.readLineSync()!;

  greet(
    firstName: firstName.isEmpty ? null : firstName,
    lastName: lastName.isEmpty ? null : lastName,
  );
}
