void main() {
  var a = [1];
  final b = [1];
  const c = [1];

  a.add(2);
  b.add(2);
  // c.add(2);   // uncomment this
  print(a);
  print(b);
  print(c);
}
