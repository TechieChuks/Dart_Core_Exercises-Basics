void main() {
  var nums = [5, 10, 15, 20, 25];
  print(nums.contains(15)); // true
  print(nums.indexOf(20)); // 3
  print(nums.where((n) => n > 10).toList()); // [15, 20, 25]
}
