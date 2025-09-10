import 'dart:io';
import 'dart:convert';

void main() async {
  File file = File('users.json');

  List<Map<String, dynamic>> users = [];

  if (await file.exists()) {
    String contents = await file.readAsString();
    if (contents.isNotEmpty) {
      users = List<Map<String, dynamic>>.from(jsonDecode(contents));
    }
  }

  Map<String, dynamic> newUser = {"name": "Alice", "age": 25};
  users.add(newUser);

  await file.writeAsString(jsonEncode(users));

  print("Users saved:");
  for (var user in users) {
    print("${user['name']} is ${user['age']} years old");
  }
}
