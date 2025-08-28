class Person {
  final String name;
  final String city;
  Person(this.name, this.city);
  @override
  String toString() => name;
}

Map<K, List<T>> groupBy<T, K>(Iterable<T> items, K Function(T) f) {
  var out = <K, List<T>>{};
  for (var it in items) out.putIfAbsent(f(it), () => []).add(it);
  return out;
}

void main() {
  var people = [
    Person('Alice', 'Lagos'),
    Person('Bob', 'Abuja'),
    Person('Eve', 'Lagos'),
  ];
  var byCity = groupBy(people, (p) => p.city);
  print(byCity); // {Lagos: [Alice, Eve], Abuja: [Bob]}
}
