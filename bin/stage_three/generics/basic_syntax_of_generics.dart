class Box<T> {
  T content;

  Box(this.content);

  void showContent() {
    print(content);
  }
}

void main() {
  Box booleanBox = Box(true);
  Box integerBox = Box(90);
  print(booleanBox.content);
  print(integerBox.content);
  print(integerBox.runtimeType);
  booleanBox.showContent();
  integerBox.showContent();
}
