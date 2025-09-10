import 'dart:convert';

void main() {
  Map<String, dynamic> user = {
    "name": "Bob",
    "age": 30,
    "isAdmin": false
  };

  // Convert Dart Map to JSON string
  String jsonString = jsonEncode(user);
  print("JSON string: $jsonString");
}
