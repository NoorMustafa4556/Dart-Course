// Assignment 4:
// Write a Dart program that takes a color (red, blue, green, or yellow) as input and displays a message indicating its meaning. For example, if the color is 'red', the program should print "Stop!". Use a switch statement to implement this.
import 'dart:io';

void main(List<String> args) {
  stdout.write("enter your color :");
  String color = stdin.readLineSync()!;

  switch (color) {
    case 'red':
      print('stop');
      break;
    case 'blue':
      print('continue');
      break;
    case 'green':
      print('keep trying');
      break;
    case 'yellow':
      print('keep struggling');
      break;

    default:
      print("you enter invalid color!");
  }
}
