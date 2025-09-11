import 'dart:convert';
import 'dart:io';

class Question {
  String question;
  List<String> options;
  int answerIndex;

  Question(this.question, this.options, this.answerIndex);

  factory Question.fromJson(Map<String, dynamic> json) {
    return Question(
      json['question'],
      List<String>.from(json['options']),
      json['answerIndex'],
    );
  }

  Map<String, dynamic> toJson() => {
    'question': question,
    'options': options,
    'answerIndex': answerIndex,
  };
}

// ✅ Hardcoded JSON data as a Dart string
const String questionsJson = '''
[
  {
    "question": "What is the capital of France?",
    "options": ["London", "Berlin", "Paris", "Rome"],
    "answerIndex": 2
  },
  {
    "question": "Which language is used for Flutter development?",
    "options": ["Java", "Dart", "Kotlin", "Swift"],
    "answerIndex": 1
  },
  {
    "question": "2 + 2 * 2 = ?",
    "options": ["6", "8", "4", "10"],
    "answerIndex": 0
  }
]
''';

// ✅ Load questions directly from the string
Future<List<Question>> loadQuestions() async {
  List<dynamic> data = jsonDecode(questionsJson);
  return data.map((q) => Question.fromJson(q)).toList();
}

Future<void> runQuiz(List<Question> questions) async {
  if (questions.isEmpty) {
    print("No questions available.");
    return;
  }

  int score = 0;

  for (int i = 0; i < questions.length; i++) {
    Question q = questions[i];
    print("\nQuestion ${i + 1}: ${q.question}");
    for (int j = 0; j < q.options.length; j++) {
      print("${j + 1}. ${q.options[j]}");
    }

    stdout.write("Your answer (1-${q.options.length}): ");
    String? input = stdin.readLineSync();
    int? choice = int.tryParse(input ?? '');

    if (choice != null && choice - 1 == q.answerIndex) {
      print("Correct!");
      score++;
    } else {
      print("Wrong! Correct answer: ${q.options[q.answerIndex]}");
    }
  }

  print("\nQuiz Completed! Your score: $score / ${questions.length}");
}

void main() async {
  List<Question> questions = await loadQuestions();

  print("=== Welcome to the CLI Quiz App ===");
  await runQuiz(questions);

  print("\nThank you for playing!");
}
