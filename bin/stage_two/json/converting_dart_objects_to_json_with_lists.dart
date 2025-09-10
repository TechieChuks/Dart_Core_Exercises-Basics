import 'dart:convert';

void main() {
  List<Map<String, dynamic>> users = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
  ];

  String jsonString = jsonEncode(users);
  print("JSON array: $jsonString");
}
