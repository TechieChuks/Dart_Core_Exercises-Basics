void main() {
  var fruits = ['Apple', 'Banana'];
  fruits.add('Mango');
  fruits.insert(1, 'Orange');
  fruits.remove('Banana');
  print(fruits); // [Apple, Orange, Mango]
}
