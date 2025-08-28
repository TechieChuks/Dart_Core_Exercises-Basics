void main() {
  var todos = <String>[];

  todos.add('Learn Dart');
  todos.add('Build Flutter App');
  print('Todos: $todos');

  todos.remove('Learn Dart');
  print('After removal: $todos');
}
