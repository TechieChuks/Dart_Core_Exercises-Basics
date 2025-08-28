void main() {
  var ages = {'Alice': 30, 'Bob': 25, 'Carol': 28};
  print(ages['Bob']); // 25

  ages.update('Alice', (v) => v + 1);
  print(ages['Alice']); // 31
}
