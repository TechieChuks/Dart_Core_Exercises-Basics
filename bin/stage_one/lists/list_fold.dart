void main() {
  var nums = [1, 2, 3, 4];
  var sum = nums.fold(0, (prev, n) => prev + n);
  print(sum); // 10
}
