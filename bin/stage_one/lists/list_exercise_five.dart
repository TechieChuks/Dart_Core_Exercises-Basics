void main() {
  var tasks = List.filled(5, 'N/A');
  tasks[2] = 'Done';
  print(tasks); // [N/A, N/A, Done, N/A, N/A]
}
