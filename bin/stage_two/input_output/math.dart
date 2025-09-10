import 'dart:math';

void main() {
  print("Pi: $pi");
  print("Square root of 16: ${sqrt(16)}");

  var random = Random();
  print("Random integer 0-99: ${random.nextInt(100)}");
  print("Random double 0-1: ${random.nextDouble()}");
}
