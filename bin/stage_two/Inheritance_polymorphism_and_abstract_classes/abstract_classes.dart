abstract class Shape {
  void draw(); // abstract method
}

class Circle extends Shape {
  @override
  void draw() {
    print("Drawing a Circle");
  }
}

class Square extends Shape {
  @override
  void draw() {
    print("Drawing a Square");
  }
}

void main() {
  // Shape s = Shape(); // ❌ cannot instantiate abstract class
  List<Shape> shapes = [Circle(), Square()];

  for (var shape in shapes) {
    shape.draw(); // each subclass provides implementation
  }
}
