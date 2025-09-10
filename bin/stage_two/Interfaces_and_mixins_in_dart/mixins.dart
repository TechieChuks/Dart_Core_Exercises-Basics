mixin LoggerMixin {
  void log(String message) {
    print("Log: $message");
  }
}

class Vehicle {
  String brand;
  Vehicle(this.brand);
}

class Car extends Vehicle with LoggerMixin {
  Car(String brand) : super(brand);

  void start() {
    log("$brand is starting"); // using mixin method
  }
}

void main() {
  var myCar = Car("Toyota");
  myCar.start();
}
