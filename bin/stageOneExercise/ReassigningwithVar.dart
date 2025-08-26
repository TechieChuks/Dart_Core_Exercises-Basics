void main() {
  var counter = 0;
  counter = counter + 1;
  counter = 42;
  print(counter);
}
/*Q: What will this print? Why?

✅ Answer:
It prints 42.

var allows reassignment.

Once initialized, Dart fixes the type (int here).

So you can keep changing the number as long as it’s still an int.*/