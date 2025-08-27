void main() {
  var growable = List.empty(growable: true);
  growable.add(10);
  print(growable); // [10]

  var fixed = List.empty();
  fixed.add(20); // ❌ Error (not growable)
}
