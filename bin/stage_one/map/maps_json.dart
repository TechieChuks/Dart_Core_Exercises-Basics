import 'dart:convert';

void main() {
  var jsonString = '{"name":"Alice","age":30}';
  Map<String, dynamic> data = jsonDecode(jsonString);
  print(data['name']); // Alice

  var back = jsonEncode(data);
  print(back); // {"name":"Alice","age":30}
}
