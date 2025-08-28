void main() {
  var a = {'x': 1, 'y': 2};
  var b = {'y': 20, 'z': 30};
  a.addAll(b);
  print(a); // {x:1, y:20, z:30}
}
