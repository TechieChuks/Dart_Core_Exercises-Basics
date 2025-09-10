class User {
  String? name;
  String? email;

  User({this.name, this.email});

  void displayProfile() {
    print("=== User Profile ===");
    print("Name: ${name ?? "Guest"}"); // ?? gives fallback
    print("Email: ${email ?? "Not Provided"}");
  }
}

//Auth System
class AuthSystem {
  User? _user; // Nullable because user might not exist yet

  void register({String? name, String? email}) {
    _user = User(name: name, email: email);
    print("✅ User registered successfully!");
  }

  void login(String email) {
    if (_user?.email == email) {
      // ?. safely checks if _user is not null
      print("✅ Login successful for ${_user?.name ?? "Guest"}");
    } else {
      print("❌ Login failed. No matching user.");
    }
  }

  void updateProfile({String? newName, String? newEmail}) {
    _user
      ?..name =
          newName ??
          _user
              ?.name // ?.. cascade safely
      ..email = newEmail ?? _user?.email;
    print("✅ Profile updated.");
  }

  void showProfile() {
    _user?.displayProfile(); // ?. avoids crash if no user
  }
}

//Main method Implementation
void main() {
  AuthSystem auth = AuthSystem();

  // Trying to show profile before registration
  print("\n--- Before registration ---");
  auth.showProfile(); // Safe: no crash, prints nothing

  // Register a user
  print("\n--- Registering user ---");
  auth.register(name: null, email: "alice@mail.com"); // Name missing (null)

  // Show profile after registration
  print("\n--- Profile after registration ---");
  auth.showProfile();

  // Login attempts
  print("\n--- Login attempts ---");
  auth.login("wrong@mail.com"); // ❌ Fail
  auth.login("alice@mail.com"); // ✅ Success

  // Update profile safely
  print("\n--- Updating profile ---");
  auth.updateProfile(newName: "Alice Wonderland");
  auth.showProfile();
}
