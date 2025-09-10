import 'dart:convert';

void main() {
  Map<String, dynamic> user = {"name": "Bob", "age": 30};
  String jsonString = jsonEncode(user);
  print("JSON: $jsonString");
}
