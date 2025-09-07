class Key {
  final String id;
  Key(this.id);
  @override
  bool operator ==(o) => o is Key && o.id == id;
  @override
  int get hashCode => id.hashCode;
}

void main() {
  var stored = Key('k1');
  var set = <Key>{stored};
  var query = Key('k1');
  var canonical = set.lookup(query); // returns stored
  print(identical(canonical, stored)); // true
}
