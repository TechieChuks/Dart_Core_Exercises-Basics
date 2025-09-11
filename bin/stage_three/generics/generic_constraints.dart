class Shape {
  void draw() => print("Drawing shape");
}

class Circle extends Shape {}

class Drawer<T extends Shape> {
  void drawShape(T shape) {
    shape.draw();
  }
}

void main() {
  Drawer<Circle> drawer = Drawer();
  drawer.drawShape(Circle()); // Output: Drawing shape
}
