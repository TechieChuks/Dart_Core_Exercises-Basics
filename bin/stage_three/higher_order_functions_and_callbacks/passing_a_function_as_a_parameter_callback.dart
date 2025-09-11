void greet(String name) {
  print("Hello, $name!");
}

void performAction(String name, Function(String) callback) {
  // callback is called inside another function
  callback(name);
}

void main() {
  performAction("Alice", greet); // Output: Hello, Alice!
}
