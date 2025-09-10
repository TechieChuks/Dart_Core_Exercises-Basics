import 'dart:io';

void main() async {
  File file = File('todo.txt');

  stdout.write("Enter a task to add: ");
  String? task = stdin.readLineSync();
  if (task != null && task.isNotEmpty) {
    await file.writeAsString(
      'Task: $task\n',
      mode: FileMode.append,
    ); // append instead of overwrite
  }

  print("Current tasks:");
  if (await file.exists()) {
    String contents = await file.readAsString();
    print(contents);
  } else {
    print("No tasks yet.");
  }
}
