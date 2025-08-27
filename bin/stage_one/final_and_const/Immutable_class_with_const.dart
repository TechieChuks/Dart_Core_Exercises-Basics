class Person {
  final String name;
  final int age;
  const Person(this.name, this.age);
}

void main() {
  const p1 = Person('Alice', 30);
  const p2 = Person('Alice', 30);

  print(identical(p1, p2));

  // Try mutating
  // p1.age = 31;   // uncomment this
}

/*

Q: What happens here?

✅ Answer:

Prints true because both p1 and p2 are canonicalized const objects.

Trying to mutate (p1.age = 31) is a compile-time error because the fields are final.

This is how you build truly immutable value objects in Dart.

*/
