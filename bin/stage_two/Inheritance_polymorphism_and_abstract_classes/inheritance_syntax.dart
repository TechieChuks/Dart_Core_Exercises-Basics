class Vehicle {
  String brand;

  Vehicle(this.brand);

  void start() {
    print("$brand is starting.");
  }
}

class Car extends Vehicle {
  int doors;

  Car(super.brand, this.doors); // Call parent constructor

  void honk() {
    print("$brand honks: Beep beep!");
  }
}

void main() {
  var myCar = Car("Toyota", 4);
  myCar.start(); // inherited from Vehicle
  myCar.honk(); // defined in Car
}
