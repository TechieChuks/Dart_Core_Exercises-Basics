void main() {
  var s = {'apple', 'banana'};
  for (var item in s) print(item);

  s.forEach((i) => print('x: $i'));

  var list = s.toList(); // convert to List if you need indices or ordering
  print(list);
}
