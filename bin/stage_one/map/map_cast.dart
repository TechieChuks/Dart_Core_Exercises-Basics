void main() {
  Map<Object, Object> dyn = {'name': 'Alice', 'age': 30};
  var typed = dyn.cast<String, Object>(); // view
  print(typed['name']); // Alice
}
