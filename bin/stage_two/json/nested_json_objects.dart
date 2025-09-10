import 'dart:convert';

void main() {
  String nestedJson = '''
  {
    "name": "Alice",
    "age": 25,
    "address": {
      "city": "New York",
      "zip": "10001"
    }
  }
  ''';

  Map<String, dynamic> user = jsonDecode(nestedJson);
  print("${user['name']} lives in ${user['address']['city']}");
}
