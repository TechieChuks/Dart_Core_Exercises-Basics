void main() {
  var words = ['dart', 'is', 'awesome'];
  words.sort((a, b) => a.length.compareTo(b.length));
  print(words); // [is, dart, awesome]
}
