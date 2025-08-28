import 'dart:convert';

class Product {
  final String product;
  final double price;
  Product(this.product, this.price);
  factory Product.fromMap(Map<String, dynamic> m) =>
      Product(m['product'], (m['price'] as num).toDouble());
  Map<String, dynamic> toMap() => {'product': product, 'price': price};
}

void main() {
  var s = '{"product":"pen","price":1.5}';
  Map<String, dynamic> m = jsonDecode(s);
  var p = Product.fromMap(m);
  print(p.product); // pen

  var out = jsonEncode(p.toMap());
  print(out); // {"product":"pen","price":1.5}
}
