void main() {
  var nums = [1, 2, 3, 4, 5, 6];
  var evens = nums.where((n) => n % 2 == 0).toList();
  print(evens); // [2, 4, 6]
}
