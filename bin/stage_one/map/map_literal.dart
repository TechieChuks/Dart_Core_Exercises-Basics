void main() {
  // literal map, typed by inference
  var ages = {'Alice': 30, 'Bob': 25};
  print(ages); // {Alice: 30, Bob: 25}

  // typed literal
  Map<String, int> scores = {'alice': 100, 'bob': 80};
  print(scores['alice']); // 100
}
