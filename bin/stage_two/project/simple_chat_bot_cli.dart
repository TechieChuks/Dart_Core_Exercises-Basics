import 'dart:io';
import 'dart:math';

class ChatbotService {
  // ✅ Hardcoded responses directly in the class
  Map<String, List<String>> responses = {
    "hello": ["Hi there!", "Hello!", "Hey! How can I help you?"],
    "how are you": ["I'm a bot, but I'm doing fine!", "All good here!"],
    "bye": ["Goodbye!", "See you later!", "Bye! Have a great day!"],
  };

  String getResponse(String input) {
    String normalized = input.toLowerCase();

    for (var pattern in responses.keys) {
      if (normalized.contains(pattern)) {
        List<String> possibleResponses = responses[pattern]!;
        // ✅ Randomly pick a response instead of using timestamp modulus
        return possibleResponses[Random().nextInt(possibleResponses.length)];
      }
    }

    return "I'm not sure how to respond to that.";
  }
}

void main() {
  ChatbotService bot = ChatbotService();

  print("=== Simple CLI Chatbot ===");
  print("Type 'exit' to quit.\n");

  while (true) {
    stdout.write("You: ");
    String? input = stdin.readLineSync();

    if (input == null) continue;
    if (input.toLowerCase() == 'exit') {
      print("Chatbot: Goodbye!");
      break;
    }

    String response = bot.getResponse(input);
    print("Chatbot: $response");
  }
}
