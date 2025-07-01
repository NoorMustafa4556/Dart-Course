// // Assignment 1:
// // Write a Dart program that takes a month number (1-12) as input
//  and displays the number of days in that month. Use a switch statement to implement this.
import 'dart:io';

void main(List<String> args) {
  stdout.write('enter your month :');

  String month = stdin.readLineSync()!;

  switch (month) {
    case 'january':
      print('this month contains  31 days');
      break;
    case 'february':
      print('this month contains 28 days (29 days in a leap year)');
      break;
    case 'march':
      print('this month contains 31 days');
      break;
    case 'april':
      print('this month contains  30 days');
      break;
    case 'may':
      print('this month contains  31 days');
      break;
    case 'june':
      print('this month contains 30 days');
      break;
    case 'july':
      print('this month contains  31 days');
      break;
    case 'august':
      print('this month contains 30 days');
      break;
    case 'september':
      print('this month contains 31 days');
      break;
    case 'octuber':
      print('this month contains 30 days');
      break;
    case 'november':
      print('this month contains 31 days');
      break;
    case 'december':
      print('this month contains 31 days ');
      break;
    default:
      print('Selected month is unknown');
  }
}
