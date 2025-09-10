import 'dart:io';
import 'dart:convert';

void main() async {
  File file = File('users.json');

  List<Map<String, dynamic>> users = [];

  // Load existing users if file exists
  if (await file.exists()) {
    String contents = await file.readAsString();
    if (contents.isNotEmpty) {
      users = List<Map<String, dynamic>>.from(jsonDecode(contents));
    }
  }

  // Add a new user
  Map<String, dynamic> newUser = {"name": "Alice", "age": 25};
  users.add(newUser);

  // Save back to file
  await file.writeAsString(jsonEncode(users));

  // Read and display users
  String finalContents = await file.readAsString();
  List<Map<String, dynamic>> savedUsers = List<Map<String, dynamic>>.from(
    jsonDecode(finalContents),
  );
  print("Saved Users:");
  for (var user in savedUsers) {
    print("${user['name']} is ${user['age']} years old");
  }
}
