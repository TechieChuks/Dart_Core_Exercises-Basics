class Rectangle {
  double _length;
  double _width;

  Rectangle(this._length, this._width);

  // Getter
  double get length => _length;
  double get width => _width;

  // Setter with validation
  set length(double value) {
    if (value > 0)
      _length = value;
    else
      print("Length must be positive!");
  }

  set width(double value) {
    if (value > 0)
      _width = value;
    else
      print("Width must be positive!");
  }

  // Method
  double area() => _length * _width;
  double perimeter() => 2 * (_length + _width);
}

void main() {
  var rect = Rectangle(5, 3);

  print("Area: ${rect.area()}");
  print("Perimeter: ${rect.perimeter()}");

  rect.length = -2; // invalid
  rect.width = 10; // valid

  print("Updated Area: ${rect.area()}");
}
