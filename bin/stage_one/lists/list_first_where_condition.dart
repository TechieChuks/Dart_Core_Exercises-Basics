void main() {
  var nums = [5, 12, 18, 7];
  print(nums.firstWhere((n) => n > 10)); // 12
  print(nums.lastWhere((n) => n > 10)); // 18
}
