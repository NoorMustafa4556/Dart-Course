// Assignment 3:
// Write a Dart program that takes a grade (A, B, C, D, or F) as input and displays a message based on the grade. For example, if the grade is 'A', the program should print "Excellent!". Use a switch statement to implement this.
import 'dart:io';

void main(List<String> args) {
  stdout.write("enter your grade :");
  String grade = stdin.readLineSync()!;

  switch (grade) {
    case 'A+':
      print('excellent!');
      break;
    case 'A':
      print('very good');
      break;
    case 'B':
      print('good');
      break;
    case 'C':
      print('bad');
      break;
    case 'D':
      print('very bad');
      break;

    default:
      print("you enter invalid grade!");
  }
}
