void greet({String firstName = "Guest"}) {
  print("Hello, $firstName!");
}

void main() {
  greet(); // Hello, Guest!
  greet(firstName: "Alice"); // Hello, Alice!
}
