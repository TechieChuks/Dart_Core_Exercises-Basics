import 'dart:convert';

void main() {
  String jsonArray = '''
  [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30}
  ]
  ''';

  // Parse JSON array to List
  List<dynamic> users = jsonDecode(jsonArray);

  for (var user in users) {
    print("${user['name']} is ${user['age']} years old");
  }
}
