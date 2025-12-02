import 'dart:io';

void main() {
  print('Enter a number:');
  String input = stdin.readLineSync()!; 
  int number = int.parse(input);        

  if ((number % 3 == 0) && (number % 5 == 0)) {
    print('FizzBuzz');
  } else if (number % 3 == 0) {
    print('Fizz');
  } else if (number % 5 == 0) {
    print('Buzz');
  } else {
    print('Not divisible by neither');
  }
}
   
