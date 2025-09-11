Function makeMultiplier(int factor) {
  return (int x) => x * factor;
}

void main() {
  var triple = makeMultiplier(3);
  var doubleIt = makeMultiplier(2);

  print(triple(5)); // 15
  print(doubleIt(5)); // 10
}
