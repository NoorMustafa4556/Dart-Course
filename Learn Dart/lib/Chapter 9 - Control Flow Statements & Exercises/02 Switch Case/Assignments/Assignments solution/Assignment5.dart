// Assignment 5:
// Write a Dart program that takes a number as input and determines its classification as positive, negative, or zero. Display an appropriate message using a switch statement.
import 'dart:io';

void main(List<String> args) {
  stdout.write("enter your number :");
  int number = int.parse(stdin.readLineSync()!);

  switch (number) {
    case 1:
      print('positive ');
      break;
    case -1:
      print('negative');
      break;
    case 0:
      print('zero');
      break;

    default:
      print("invalid input!");
  }
}
