void main() {
  var message = 'Hello';
  // message = 10;  // Uncomment this line
  print(message);
}
/*
Q: What happens if you uncomment the message = 10; line?

✅ Answer:
It will throw a compile-time error.

Dart infers message as String from the first assignment.

You can’t later assign an int.

This is a common beginner trap: var does not mean “dynamic”.
*/