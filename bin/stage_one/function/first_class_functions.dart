int add(int a, int b) => a + b;
int sub(int a, int b) => a - b;
int mult(int a, int b) => a * b;
// function type variable
int Function(int, int) plus = add;
int Function(int, int) minus = sub;
int Function(int, int) times = mult;
int applyOp(int x, int y, int Function(int, int) operation) {
  return operation(x, y);
}

void main() {
  print(applyOp(3, 4, plus));
  print(applyOp(3, 4, minus));
  print(applyOp(3, 4, times)); // 7
  // or inline anonymous function
  print(applyOp(3, 4, (a, b) => a ~/ b));
}
