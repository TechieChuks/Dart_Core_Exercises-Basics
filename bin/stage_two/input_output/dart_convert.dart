import 'dart:convert';

void main() {
  // Convert Dart object to JSON string
  Map<String, dynamic> user = {"name": "Alice", "age": 25};
  String jsonString = jsonEncode(user);
  print("JSON: $jsonString");

  // Convert JSON string back to Dart object
  Map<String, dynamic> decodedUser = jsonDecode(jsonString);
  print("Decoded: ${decodedUser['name']} is ${decodedUser['age']} years old");
}
