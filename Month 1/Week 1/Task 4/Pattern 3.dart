import 'dart:io';

void main() {
  for (int i = 1; i <= 5; i++) {
    int stars = 2 * i - 1;

    for (int j = 1; j <= stars; j++) {
      stdout.write('*');
    }
    stdout.writeln(); 
  }
}
