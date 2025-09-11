void greet() => print("Hello!");
void farewell() => print("Goodbye!");

void main() {
  List<Function> actions = [greet, farewell];

  for (var action in actions) {
    action(); // Executes each function
  }
}
