class X {
  final int v;
  X(this.v);
}

void main() {
  var a = X(1), b = X(1);
  var identity = Set.identity();
  identity.add(a);
  identity.add(b);
  print(identity.length); // 2 — because identity compares by object identity
}
