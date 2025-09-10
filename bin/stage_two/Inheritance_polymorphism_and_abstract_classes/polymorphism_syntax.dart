class Animal {
  void speak() {
    print("Some generic sound");
  }
}

class Dog extends Animal {
  @override
  void speak() {
    print("Woof! Woof!");
  }
}

class Cat extends Animal {
  @override
  void speak() {
    print("Meow!");
  }
}

void main() {
  List<Animal> animals = [Dog(), Cat()];

  for (var animal in animals) {
    animal.speak(); // polymorphism in action
  }
}
