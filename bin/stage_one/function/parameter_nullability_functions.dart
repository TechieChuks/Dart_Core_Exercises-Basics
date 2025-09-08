void printLength(String? maybe) {
  print(maybe?.length ?? 'no string');
}

void main() {
  printLength(null); // no string
  printLength('hello'); // 5
}
