class Point {
  final int x, y;
  const Point(this.x, this.y);
}

void main() {
  const p1 = Point(1, 2);
  const p2 = Point(1, 2);
  print(identical(p1, p2));
}

/*
Q: What will this print? Why?

✅ Answer:
It prints true.

const constructors allow objects to be created at compile time.

Identical const objects are canonicalized (they share memory).

Without const, two new Point(1, 2) objects would be different instances.
*/
