import 'dart:io';

void displayUserInfo(String name, int age) {
  print('Name: $name');
  print('Age: $age');
}
void main() {
  print('Enter your name:');
  String? name = stdin.readLineSync();

  print('Enter your age:');
  int? age = int.tryParse(stdin.readLineSync()!);

  if (name != null && age != null) {
    displayUserInfo(name, age);
  } else {
    print('Invalid input!');
  }
}