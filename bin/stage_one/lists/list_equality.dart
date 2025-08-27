void main() {
  var a = [1, 2, 3];
  var b = [1, 2, 3];
  print(a == b); // true (content equal)
  print(identical(a, b)); // false (different objects)
}
