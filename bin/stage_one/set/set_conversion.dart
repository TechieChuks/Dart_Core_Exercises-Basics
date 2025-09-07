void main() {
  var list = [1, 2, 2, 3];
  var set = list.toSet(); // remove duplicates
  print(set); // {1,2,3}

  var backToList = set
      .toList(); // list of unique values (order depends on set impl)
  print(backToList);

  // create map with value -> index
  var map = {for (var i = 0; i < backToList.length; i++) backToList[i]: i};
  print(map); // e.g. {1:0, 2:1, 3:2}
}
