void main() {
  var a = {1, 2, 3};
  var b = {3, 4, 5};

  var u = a.union(b); // {1,2,3,4,5}
  var inter = a.intersection(b); // {3}
  var diff = a.difference(b); // {1,2}

  print('union: $u');
  print('intersection: $inter');
  print('difference: $diff');
}
