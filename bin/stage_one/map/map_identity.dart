class X {
  final int val;
  X(this.val);
  @override
  String toString() => 'X($val)';
}

void main() {
  var a = X(1);
  var b = X(1); // equal contents, different instances

  var regular = <X, String>{};
  regular[a] = 'first';
  regular[b] = 'second';
  print(regular.length); // 2 (two distinct keys)

  var identity = Map.identity();
  identity[a] = 'first';
  identity[b] = 'second';
  print(identity.length); // 2 (still 2, but important when equals/hash differs)
}
