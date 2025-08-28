void main() {
  // Map literal (inferred types)
  var ages = {'Alice': 30, 'Bob': 25};

  // Typed Map
  Map<String, int> scores = {'alice': 100, 'bob': 80};

  print(ages['Alice']); // 30
  scores['charlie'] = 90; // add/update
  print(scores); // {alice: 100, bob: 80, charlie: 90}
}
