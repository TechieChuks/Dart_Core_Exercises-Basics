import 'dart:convert';

void main() {
  var jsonString = '{"name":"Alice","age":30}';
  Map<String, dynamic> data = jsonDecode(jsonString);
  print(data['name']); // Alice

  data['city'] = 'Lagos';
  print(jsonEncode(data)); // {"name":"Alice","age":30,"city":"Lagos"}
}
