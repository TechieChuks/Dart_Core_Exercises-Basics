Function makeAdder(int addBy) {
  return (int value) => value + addBy; // closure captures addBy
}

void main() {
  var add5 = makeAdder(5);
  print(add5(10)); // 15

  var add10 = makeAdder(10);
  print(add10(10)); // 20
}
