// b and c are optional positional (nullable). c has default value 1.
int compute(int a, [int? b, int c = 1]) {
  // b might be null, so handle it
  final bVal = b ?? 0;
  return a + bVal + c;
}

void main() {
  print(compute(5)); // a only => 5 + 0 + 1 = 6
  print(compute(5, 2)); // 5 + 2 + 1 = 8
  print(compute(5, 2, 3)); // 5 + 2 + 3 = 10
}
