void main() {
  List<int> numbers = [1, 2, 3, 4, 5];

  // map transforms each element
  var squared = numbers.map((n) => n * n).toList();
  print("Squared: $squared");

  // filter elements with where
  var even = numbers.where((n) => n % 2 == 0).toList();
  print("Even numbers: $even");

  // reduce combines elements
  var sum = numbers.reduce((a, b) => a + b);
  print("Sum: $sum");
}
