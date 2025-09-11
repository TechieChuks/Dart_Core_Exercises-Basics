void sayHello(String name) => print("Hello, $name!");
void sayGoodbye(String name) => print("Goodbye, $name!");

void performGreeting(String name, Function(String) action) {
  action(name); // Call the passed-in function
}

void main() {
  performGreeting("Bob", sayHello); // Output: Hello, Bob!
  performGreeting("Bob", sayGoodbye); // Output: Goodbye, Bob!
}
