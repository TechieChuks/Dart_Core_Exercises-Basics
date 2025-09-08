void main() {
  int a = 7;
  int b = 2;

  print(a + b); // 9
  print(a / b); // 3.5   (double)
  print(a ~/ b); // 3     (int)
  print(a % b); // 1
  int x = 0;
  x += 5; // x == 5
  print(++x); // prefix increment -> 6
}
