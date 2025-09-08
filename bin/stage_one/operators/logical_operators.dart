bool expensiveCheck() {
  print('expensive check run');
  return true;
}

void main() {
  bool a = false;
  bool b = true;

  print(
    a && expensiveCheck(),
  ); // prints false, 'expensive check run' NOT executed
  print(
    b || expensiveCheck(),
  ); // prints true, 'expensive check run' NOT executed
  print(!a); // true
}
