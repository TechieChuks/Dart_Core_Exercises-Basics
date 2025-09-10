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

  if (users.isNotEmpty) {
    users[0]['age'] = 26;
  }

  await file.writeAsString(jsonEncode(users));

  print("Updated users:");
  for (var user in users) {
    print("${user['name']} is ${user['age']} years old");
  }
}
