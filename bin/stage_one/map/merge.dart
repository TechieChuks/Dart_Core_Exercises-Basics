void main() {
  var a = {'x': 1, 'y': 2};
  var b = {'y': 20, 'z': 30};

  // mutate a
  var aCopy = Map.of(a);
  aCopy.addAll(b);
  print(aCopy); // {x:1, y:20, z:30}

  // create new via spread (non-mutating)
  var merged = {...a, ...b};
  print(merged); // {x:1, y:20, z:30}
}
