import 'dart:io';

class Rectangle {
  double length;
  double width;

  Rectangle(this.length, this.width);

  double area() => length * width;
  double perimeter() => 2 * (length + width);
}

void main() {
  List<Rectangle> rectangles = [];
  bool running = true;

  print("=== Rectangle Manager ===");

  while (running) {
    print("\nCommands: add, list, area, perimeter, exit");
    stdout.write("Enter command: ");
    String? command = stdin.readLineSync()?.toLowerCase();

    switch (command) {
      case "add":
        stdout.write("Enter length: ");
        double? length = double.tryParse(stdin.readLineSync()!);
        stdout.write("Enter width: ");
        double? width = double.tryParse(stdin.readLineSync()!);
        if (length != null && width != null) {
          rectangles.add(Rectangle(length, width));
          print("Rectangle added!");
        } else {
          print("Invalid input.");
        }
        break;

      case "list":
        if (rectangles.isEmpty)
          print("No rectangles.");
        else {
          for (int i = 0; i < rectangles.length; i++) {
            print(
              "${i + 1}. Length: ${rectangles[i].length}, Width: ${rectangles[i].width}",
            );
          }
        }
        break;

      case "area":
        for (int i = 0; i < rectangles.length; i++) {
          print("Rectangle ${i + 1} area: ${rectangles[i].area()}");
        }
        break;

      case "perimeter":
        for (int i = 0; i < rectangles.length; i++) {
          print("Rectangle ${i + 1} perimeter: ${rectangles[i].perimeter()}");
        }
        break;

      case "exit":
        running = false;
        print("Exiting Rectangle Manager.");
        break;

      default:
        print("Invalid command.");
    }
  }
}
