class Config {
  static const String appName = 'MyApp';
  static final DateTime buildTime = DateTime.now();
}

void main() {
  print(Config.appName);
  print(Config.buildTime);
}
