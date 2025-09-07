class Person {
  final String id;
  Person(this.id);
  @override
  bool operator ==(o) => o is Person && o.id == id;
  @override
  int get hashCode => id.hashCode;
  @override
  String toString() => 'Person($id)';
}

void main() {
  var s = <int>{1, 2, 3};
  print(s.contains(2)); // true
  print(s.containsAll([1, 3])); // true

  // lookup example (returns the element equal to provided)
  var p1 = Person('u1');
  var p2 = Person('u1'); // different instance but equal by id
  var set = <Person>{p1};
  var found = set.lookup(p2); // finds and returns the stored instance (p1)
  print(found); // Person(u1)
}
