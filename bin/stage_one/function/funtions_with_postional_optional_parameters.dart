void greet([String? name]) {
  if (name != null) {
    print("Hello, $name!");
  } else {
    print("Hello!");
  }
}

void main() {
  greet(); // Hello!
  greet("Alice"); // Hello, Alice!
}
