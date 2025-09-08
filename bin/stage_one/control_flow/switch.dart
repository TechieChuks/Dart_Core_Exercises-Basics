void main() {
  String command = 'start';
  switch (command) {
    case 'start':
      print('Starting');
      break;
    case 'stop':
      print('Stopping');
      break;
    default:
      print('Unknown command');
  }
}
