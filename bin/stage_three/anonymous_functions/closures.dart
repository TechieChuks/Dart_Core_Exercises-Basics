Function makeCounter() {
  int count = 0;

  return () {
    count++;
    return count;
  };
}

void main() {
  var counter = makeCounter();

  print(counter()); // 1
  print(counter()); // 2
  print(counter()); // 3
}
