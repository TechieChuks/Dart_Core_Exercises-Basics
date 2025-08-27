void main() {
  var nums = [1, 2, 3, 4, 5];
  var evens = nums.where((n) => n % 2 == 0);
  print(evens.toList()); // [2, 4]
}
