String expensive(String k) {
  print('computing $k');
  return 'value-$k';
}

void main() {
  var cache = <String, String>{};

  // first call computes and caches
  var a = cache.putIfAbsent('k1', () => expensive('k1'));
  // second call returns stored value (no re-compute)
  var b = cache.putIfAbsent('k1', () => expensive('k1'));

  print(cache); // {k1: value-k1}
  print(a);
  print(b);
}
