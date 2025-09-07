class User {
  final String id;
  final String name;
  User(this.id, this.name);

  @override
  bool operator ==(Object other) => other is User && other.id == id;

  @override
  int get hashCode => id.hashCode;

  @override
  String toString() => 'User($id, $name)';
}

void main() {
  var u1 = User('1', 'Alice');
  var u2 = User('1', 'Alice-copied');

  var s = <User>{u1, u2}; // uses == and hashCode to deduplicate
  print(s); // only one User (the set treats them as equal)
}
