import 'dart:convert';

void main() {
  String jsonString = '{"name": "Alice", "age": 25, "isAdmin": true}';

  // Decode JSON string to Dart Map
  Map<String, dynamic> user = jsonDecode(jsonString);

  print("Name: ${user['name']}");
  print("Age: ${user['age']}");
  print("Admin: ${user['isAdmin']}");
}
