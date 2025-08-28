void main() {
  var a = {'x': 1, 'y': 2};
  var b = {'y': 20, 'z': 30};

  var mutated = Map.of(a);
  mutated.addAll(b); // mutated becomes {x:1, y:20, z:30}
  var merged = {...a, ...b}; // new map {x:1, y:20, z:30}
  print(mutated);
  print(merged);
}
