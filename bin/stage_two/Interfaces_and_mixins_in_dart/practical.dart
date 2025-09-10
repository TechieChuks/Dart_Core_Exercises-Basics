// Interface
abstract class Flyable {
  void fly();
}

// Mixin
mixin LoggerMixin {
  void log(String message) {
    print("Log: $message");
  }
}

// Class implementing interface and using mixin
class Bird with LoggerMixin implements Flyable {
  String name;
  Bird(this.name);

  @override
  void fly() {
    log("$name is flying!"); // mixin logging
  }
}

void main() {
  var sparrow = Bird("Sparrow");
  sparrow.fly();
}
