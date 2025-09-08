String greet(String name, {String salutation = 'Hello'}) {
  return '$salutation, $name';
}

void main() {
  print(greet('Alice')); // Hello, Alice
  print(greet('Bob', salutation: 'Hi')); // Hi, Bob
}
