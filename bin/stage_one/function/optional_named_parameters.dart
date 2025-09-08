void personInfo({required String name, int? age, String city = 'Unknown'}) {
  // 'name' is required, 'age' optional (nullable), city has default
  print('$name, age: ${age ?? "N/A"}, city: $city');
}

void main() {
  personInfo(name: 'Alice'); // name required
  personInfo(name: 'Bob', age: 30, city: 'Lagos');
}
