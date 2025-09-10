import 'dart:io';

void main() async {
  var file = File('example.txt');
  await file.writeAsString('Hello Dart!\n');
  print("File written successfully!");
}
