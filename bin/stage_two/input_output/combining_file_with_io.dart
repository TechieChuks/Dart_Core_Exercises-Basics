import 'dart:io';
import 'dart:convert';

void main() async {
  var file = File('users.json');

  // Writing a list of users to file as JSON
  List<Map<String, dynamic>> users = [
    {"name": "Alice", "age": 25},
    {"name": "Bob", "age": 30},
  ];
  await file.writeAsString(jsonEncode(users));

  // Reading users back
  String contents = await file.readAsString();
  List<dynamic> decoded = jsonDecode(contents);
  decoded.forEach(
    (user) => print("${user['name']} is ${user['age']} years old"),
  );
}
