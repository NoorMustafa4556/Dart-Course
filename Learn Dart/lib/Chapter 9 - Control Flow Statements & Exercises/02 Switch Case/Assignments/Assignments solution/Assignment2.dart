// Assignment 2:
// Write a Dart program that takes a day number (1-7) as input and displays the corresponding day of the week. Use a switch statement to implement this.
import 'dart:io';

void main() {
  stdout.write("enter a number:");
  int day = int.parse(stdin.readLineSync()!);

  switch (day) {
    case 1:
      print('Today is Monday');
      break;
    case 2:
      print('Today is Tuesday');
      break;
    case 3:
      print('Today is Wednesday');
      break;
    case 4:
      print('Today is Thursday');
      break;
    case 5:
      print('Today is Friday');
      break;
    case 6:
      print('Today is Saturday');
      break;
    case 7:
      print('Today is Sunday');
      break;
    default:
      print('Invalid number!');
  }
}
