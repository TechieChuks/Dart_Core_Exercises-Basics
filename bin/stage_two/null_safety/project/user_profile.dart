class User {
  String? name;
  String? email;
  User({this.name, this.email});
}

void main() {
  User? user = User(name: null, email: "test@mail.com");

  // Safe access with defaults
  print("Name: ${user?.name ?? "No Name"}");
  print("Email: ${user?.email ?? "No Email"}");

  // Using null-coalescing assignment
  user.name ??= "Guest";
  print("Updated Name: ${user.name}");

  // Cascade null-aware
  user
    ?..email = "new@mail.com"
    ..name = user.name ?? "Unknown";

  print("Final Name: ${user?.name}");
  print("Final Email: ${user?.email}");
}
