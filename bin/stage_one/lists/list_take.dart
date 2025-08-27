void main() {
  var nums = [10, 20, 30, 40, 50];
  print(nums.take(3).toList()); // [10, 20, 30]
  print(nums.skip(2).toList()); // [30, 40, 50]
}
