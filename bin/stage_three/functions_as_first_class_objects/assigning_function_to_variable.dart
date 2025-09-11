void greet(String name) {
  print("Hello, $name!");
}

void main() {
  // Assign function to a variable
  var greeter = greet;

  // Call the function via the variable
  greeter("Alice"); // Output: Hello, Alice!
}
