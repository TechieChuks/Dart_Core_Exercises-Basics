// Interface
class Logger {
  void log(String message) {
    // TODO: implement log
  } // method to implement
}

// Class implementing the interface
class ConsoleLogger implements Logger {
  @override
  void log(String message) {
    print("Console: $message");
  }
}

class FileLogger implements Logger {
  @override
  void log(String message) {
    // pretend to write to a file
    print("File: $message");
  }
}

void main() {
  List<Logger> loggers = [ConsoleLogger(), FileLogger()];
  for (var logger in loggers) {
    logger.log("Hello, Dart!"); // polymorphism via interface
  }
}
