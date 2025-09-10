import 'dart:convert';

void main() {
  String jsonString = '{"name": "Alice", "age": 25}';
  Map<String, dynamic> user = jsonDecode(jsonString);

  print("Name: ${user['name']}");
  print("Age: ${user['age']}");
}
