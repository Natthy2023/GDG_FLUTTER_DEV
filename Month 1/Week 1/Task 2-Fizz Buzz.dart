import 'dart:io';

void main() {
  stdout.write('Enter a number: ');
  String? input = stdin.readLineSync();

  if (input == null) {
    print('No input provided.');
    return;
  }

  int number = int.parse(input);

  if (number % 3 == 0 && number % 5 == 0) {
    print('FizzBuzz');
  } else if (number % 3 == 0) {
    print('Fizz');
  } else if (number % 5 == 0) {
    print('Buzz');
  } else {
    print('Not divisible by 3 or 5');
  }
}
