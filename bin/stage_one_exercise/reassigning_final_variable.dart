void main() {
  final name = 'Alice';
  // name = 'Bob';  // Uncomment this line
  print(name);
}
/* 
Q: What happens if you uncomment name = 'Bob';?

✅ Answer:
It’s a compile-time error.

A final variable can only be set once.

This is different from Exercise 3, where we weren’t reassigning — we were mutating the object itself.
*/