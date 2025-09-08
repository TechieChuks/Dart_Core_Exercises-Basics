int square(int x) => x * x; // same as { return x*x; }

void main() {
  print(square(4)); // 16

  // Common use: short callback in map
  var nums = [1, 2, 3];
  var doubled = nums.map((n) => n * 2).toList();
  print(doubled); // [2,4,6]
}
