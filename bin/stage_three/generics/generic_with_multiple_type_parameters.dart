class Pair<K, V> {
  K key;
  V value;

  Pair(this.key, this.value);

  void showPair() {
    print("$key -> $value");
  }
}

void main() {
  Pair<String, int> pair1 = Pair("Age", 25);
  Pair<int, String> pair2 = Pair(1, "One");
  Pair<dynamic, dynamic> pair3 = Pair(1, true);

  pair1.showPair(); // Age -> 25
  pair2.showPair(); // 1 -> One
  pair3.showPair(); // 1 -> true
}
