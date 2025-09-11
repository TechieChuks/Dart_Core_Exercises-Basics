T getFirst<T>(List<T> items) {
  return items[0];
}

void main() {
  print(getFirst<int>([1, 2, 3])); // Output: 1
  print(getFirst<String>(["a", "b"])); // Output: a
  print(getFirst<dynamic>([true, 9, "b", 1, 2, 3])); // Output: 9, "b", 1, 2, 3
}
