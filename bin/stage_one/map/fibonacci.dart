int fib(int n, Map<int, int> cache) {
  if (n < 2) return n;
  return cache.putIfAbsent(n, () => fib(n - 1, cache) + fib(n - 2, cache));
}

void main() {
  var cache = <int, int>{0: 0, 1: 1};
  print(fib(20, cache)); // fast due to caching
}
