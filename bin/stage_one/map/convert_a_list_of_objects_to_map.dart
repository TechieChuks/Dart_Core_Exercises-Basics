class User {
  final String id;
  final String name;
  User(this.id, this.name);
  @override
  String toString() => 'User($id,$name)';
}

void main() {
  var users = [User('u1', 'Alice'), User('u2', 'Bob')];
  var byId = {for (var u in users) u.id: u}; // collection-for in map literal
  print(byId['u1']); // User(u1,Alice)
}
