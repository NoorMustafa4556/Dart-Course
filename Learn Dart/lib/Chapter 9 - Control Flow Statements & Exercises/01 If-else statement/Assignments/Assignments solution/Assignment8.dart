// Unique Numbers: Develop a Dart program that prompts the user to enter a series of numbers and stores them in a set. Check if the entered numbers are unique (i.e., not repeated). If there are any duplicate numbers, remove them from the set. Use if-else statements to perform the necessary checks and modifications.

import 'dart:io';

void main(List<String> args) {
  Set mySet = {};
  print("enter number in your set one by one :");

  for (int i = 0; i < 4; i++) {
    int number = int.parse(stdin.readLineSync()!);

    mySet.add(number);
  }
  print(mySet);
}
