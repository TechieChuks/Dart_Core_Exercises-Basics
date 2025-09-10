import 'dart:io';

void main() async {
  var file = File('example.txt');
  String contents = await file.readAsString();
  print("File contents: $contents");
}
