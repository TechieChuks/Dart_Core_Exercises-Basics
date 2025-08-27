class Box {
  final List<int> items;

  Box(this.items);
}

void main() {
  final b = Box([1, 2]);
  b.items.add(3);
  print(b.items);
}

/* Q: Will this work? What prints?

✅ Answer:
It prints [1, 2, 3].

items is declared final, so the items reference cannot be changed.

But the list itself is still mutable.

To make it truly immutable, you’d use const or List.unmodifiable.
*/
