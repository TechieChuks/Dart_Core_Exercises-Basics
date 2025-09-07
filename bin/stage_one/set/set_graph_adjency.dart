void main() {
  Map<int, Set<int>> graph = {};
  void addEdge(int u, int v) {
    graph.putIfAbsent(u, () => <int>{}).add(v);
    graph.putIfAbsent(v, () => <int>{}).add(u);
  }

  addEdge(1, 2);
  addEdge(1, 3);
  addEdge(1, 2); // duplicate edge ignored
  print(graph); // {1: {2,3}, 2: {1}, 3: {1}}
}
