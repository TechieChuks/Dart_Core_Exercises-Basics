import 'dart:convert';

void main() {
  String nestedJson =
      '{"name": "Alice", "address": {"city": "NY", "zip": "10001"}}';
  Map<String, dynamic> user = jsonDecode(nestedJson);

  print("${user['name']} lives in ${user['address']['city']}");
}
