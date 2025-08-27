void main() {
  var nums = [1, 2, 3, 0, 4];
  print(nums.takeWhile((n) => n > 0).toList()); // [1, 2, 3]
  print(nums.skipWhile((n) => n < 3).toList()); // [3, 0, 4]
}
