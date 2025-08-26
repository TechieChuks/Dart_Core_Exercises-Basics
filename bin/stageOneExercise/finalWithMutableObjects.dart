void main() {
  final numbers = [1, 2, 3];
  numbers.add(4);
  print(numbers);
}
/*Q: Will this work? What gets printed?

✅ Answer:
It prints [1, 2, 3, 4].

final means you can’t reassign the variable itself (numbers = ... is forbidden).

But the list object is still mutable, so you can add items to it.
*/