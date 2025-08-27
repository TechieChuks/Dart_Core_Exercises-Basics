void main() {
  // 1
  var nums = [2, 4, 6, 8];
  print(nums.map((n) => n * n).toList()); // [4, 16, 36, 64]

  // 2
  var nested = [
    [1, 2],
    [3, 4],
    [5],
  ];
  print(nested.expand((e) => e).toList()); // [1, 2, 3, 4, 5]

  // 3
  var odds = [1, 3, 5, 7];
  print(odds.any((n) => n.isEven)); // false

  // 4
  var nums2 = [10, 20, 30];
  print(nums2.reduce((a, b) => a + b)); // 60

  // 5
  var list = [1, 2, 3, 4, 5];
  print(list.take(3).toList()); // [1, 2, 3]
}
