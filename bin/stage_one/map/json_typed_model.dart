import 'dart:convert';

class User {
  final String id;
  final String name;
  User(this.id, this.name);
  factory User.fromMap(Map<String, dynamic> m) => User(m['id'], m['name']);
  Map<String, dynamic> toMap() => {'id': id, 'name': name};
  @override
  String toString() => 'User($id,$name)';
}

void main() {
  var jsonStr = '[{"id":"u1","name":"Alice"},{"id":"u2","name":"Bob"}]';
  List<dynamic> decoded = jsonDecode(jsonStr);
  var users = decoded
      .map((m) => User.fromMap(m as Map<String, dynamic>))
      .toList();
  print(users); // [User(u1,Alice), User(u2,Bob)]
}
