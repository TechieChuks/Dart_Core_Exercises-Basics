void main() {
  var words = ['banana', 'apple', 'cherry'];
  words.sort((a, b) => a.length.compareTo(b.length));
  print(words); // [apple, banana, cherry]
}
