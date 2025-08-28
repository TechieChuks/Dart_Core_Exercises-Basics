void main() {
  var names = ['alice', 'bob', 'carol'];

  // key: the name, value: length of the name
  var nameToLen = Map.fromIterable(
    names,
    key: (v) => v,
    value: (v) => v.length,
  );
  print(nameToLen); // {alice: 5, bob: 3, carol: 5}

  // common pattern: map index -> element
  var indexMap = Map.fromIterable(
    names,
    key: (v) => names.indexOf(v),
    value: (v) => v,
  );
  print(indexMap); // {0: alice, 1: bob, 2: carol}
}
