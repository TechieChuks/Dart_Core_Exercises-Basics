import 'dart:convert';

void main() {
  String jsonArray = '[{"name": "Alice"}, {"name": "Bob"}]';
  List<dynamic> users = jsonDecode(jsonArray);

  for (var user in users) {
    print("User: ${user['name']}");
  }
}
