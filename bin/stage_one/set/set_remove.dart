void main() {
  var s = {1, 2, 3, 4, 5};

  s.remove(3); // remove single element
  print(s); // {1,2,4,5}

  s.removeAll([1, 5]); // remove a group
  print(s); // {2,4}

  s.removeWhere((x) => x % 2 == 0); // remove elements matching predicate
  print(s); // {}
}
