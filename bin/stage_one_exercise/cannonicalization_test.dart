// class Point {
//   final int x, y;
//   const Point(this.x, this.y);
// }
// const a = Point(1,2);
// const b = Point(1,2);
// print(identical(a, b)); // true

void main() {
  const a = [1, 2];
  const b = [1, 2];
  print(identical(a, b));
}
