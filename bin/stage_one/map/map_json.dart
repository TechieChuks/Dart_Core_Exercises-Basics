import 'dart:convert';

void main() {
  var json = '{"name":"Alice","age":30}';
  Map<String, dynamic> data = jsonDecode(json);
  print(data['name']); // Alice

  var back = jsonEncode(data);
  print(back); // {"name":"Alice","age":30}
}
