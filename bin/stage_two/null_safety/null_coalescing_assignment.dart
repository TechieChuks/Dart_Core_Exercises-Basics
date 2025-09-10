void main() {
  String? user;
  String? user2;
  String? user3;

  user ??= "Guest"; // user is null, so assign "Guest"
  print(user); // ✅ Prints: Guest
  user2 ??= null;
  print(user2); // ✅ Prints: Guest
  user3 ??= "Client";
  print(user3); // ✅ Prints: Guest
}
