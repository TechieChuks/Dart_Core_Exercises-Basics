void greet({String? firstName, String? lastName}) {
  print("Hello, ${firstName ?? ''} ${lastName ?? ''}");
}

void main() {
  greet(firstName: "Alice"); // Hello, Alice
  greet(lastName: "Smith"); // Hello,  Smith
  greet(firstName: "Bob", lastName: "Jones"); // Hello, Bob Jones
}
