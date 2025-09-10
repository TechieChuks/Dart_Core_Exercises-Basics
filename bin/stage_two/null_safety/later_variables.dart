late String userToken;

void main() {
  // userToken is declared but not initialized yet
  userToken = "abc123"; // must be set before use
  print(userToken); // safe
}
