import 'dart:io';

void main() {
  stdout.write("Enter number of apples: ");
  int apples = int.parse(stdin.readLineSync()!);

  stdout.write("Enter price per apple: ");
  double price = double.parse(stdin.readLineSync()!);

  double total = apples * price;

  print("Total = \$${total.toStringAsFixed(2)}");
}
