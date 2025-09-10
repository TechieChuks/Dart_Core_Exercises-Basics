class Person {
  String name;
  Person(this.name);
  void greet() => print("Hello, I'm $name");
}

void main() {
  Person? p = Person("Alice");

  p?..greet(); // ✅ Prints: Hello, I'm Alice

  p = null;

  p?..greet(); // ✅ Does nothing, no error
}
