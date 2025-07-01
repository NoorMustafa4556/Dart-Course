// Assignment 6:
// Write a Dart program that takes a day of the week as input and displays whether it is a weekday or a weekend day. Use a switch statement to implement this.
import 'dart:io';

void main(List<String> args) {
  stdout.write("enter your number :");
  String day = stdin.readLineSync()!;

  switch (day) {
    case 'sunday':
    case 'saturday':
      print('weekend day ');
      break;
    case 'monday':
      print('no weekend day');
      break;
    case 'tuesday':
      print('no weekened day');
      break;
    case 'wednesday':
      print('no weekened day');
      break;
    case 'thursday':
      print('no weekened day');
      break;
    case 'friday':
      print('no weekened day');
      break;

    default:
      print("invalid day!");
  }
}
