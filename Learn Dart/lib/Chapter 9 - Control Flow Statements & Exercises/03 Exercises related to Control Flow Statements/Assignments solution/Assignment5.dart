// Guessing Game: Create a Dart program that generates a random number between 1 and 100 and asks the user to guess the number. Provide hints (e.g., "Too high" or "Too low") based on the user's guess. Use control flow statements and loops to compare the user's guess with the random number and guide them towards the correct answer.

import 'dart:io';

void main(List<String> args) {
  //initializing a random number
  int? number = 45;
  //asking user to enter a number
  stdout.write("please guess a number :");
  //store into the variable a
  int a = int.parse(stdin.readLineSync()!);
  //conditions
  if (a >= 50 && a <= 100) {
    print("too heigh");
  } else if (a >= 0 && a <= 40) {
    print("too low");
  } else if (a <= 44 && a >= 40) {
    print("low");
    //condition if the number will match
  } else if (a >= 46 && a <= 50) {
    print("heigh");
  } else if (a == number) {
    print("you enter the correct number");
  } else {
    print("invalid number");
  }
}
