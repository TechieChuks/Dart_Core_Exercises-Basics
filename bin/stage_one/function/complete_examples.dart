typedef IntOp = int Function(int, int);

int multiply(int a, int b) => a * b;
int add(int a, int b) => a + b;

void operate({
  required IntOp op,
  required int x,
  required int y,
  String desc = 'operation',
}) {
  print('$desc result: ${op(x, y)}');
}

Function makeMultiplier(int factor) =>
    (int x) => x * factor;

void main() {
  operate(op: add, x: 3, y: 4, desc: 'addition'); // addition result: 7
  operate(op: multiply, x: 3, y: 4); // operation result: 12

  var times3 = makeMultiplier(3);
  print(times3(5)); // 15 (closure)
}
