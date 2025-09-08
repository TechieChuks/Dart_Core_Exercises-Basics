import 'dart:io';

void main() {
  stdout.write("Enter command (start/stop/pause): ");
  String cmd = stdin.readLineSync()!;

  switch (cmd) {
    case "start":
      print("🚀 System starting...");
      break;
    case "stop":
      print("🛑 System stopped.");
      break;
    case "pause":
      print("⏸ System paused.");
      break;
    default:
      print("❌ Unknown command.");
  }
}
