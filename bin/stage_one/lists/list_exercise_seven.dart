void main() {
  var nums = [1, 2, 3, 4];
  var fixedNums = List.unmodifiable(nums);
  print(fixedNums); // [1, 2, 3, 4]

  // fixedNums[0] = 99; // ❌ UnsupportedError
}
