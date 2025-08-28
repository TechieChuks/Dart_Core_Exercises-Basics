void main() {
  var m = <String, int>{};

  // set
  m['apples'] = 5; // insert
  m['apples'] = 6; // update

  // get
  print(m['apples']); // 6
  print(m['bananas'] ?? 0); // 0 as fallback when key missing
}
