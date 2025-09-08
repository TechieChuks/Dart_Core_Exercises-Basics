typedef IntBinOp = int Function(int, int);

int apply(IntBinOp f, int a, int b) => f(a, b);

void main() {
  print(apply((x, y) => x - y, 10, 4)); // 6
}
