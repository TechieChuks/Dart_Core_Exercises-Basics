void main() {
  // 1
  var list1 = [1, 2];
  var list2 = [3, 4];
  var combined = [...list1, ...list2];
  print(combined); // [1, 2, 3, 4]

  // 2
  List<int>? nums;
  var safe = [0, ...?nums];
  print(safe); // [0]

  // 3
  var filled = List.filled(5, 'X');
  print(filled); // [X, X, X, X, X]

  // 4
  var nums2 = [10, 20, 30];
  var copy = List.from(nums2);
  print(copy); // [10, 20, 30]

  // 5
  const letters = ['A', 'B', 'C'];
  print(letters); // [A, B, C]
}
