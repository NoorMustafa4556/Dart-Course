// Factorial Calculator: Develop a Dart program that prompts the user to enter a positive integer and calculates its factorial. Use control flow statements and a loop to perform the factorial calculation and display the result.
import 'dart:io';

void main(List<String> args) {
  //ask the user to enter a number
  stdout.write("enter a number :");
  //store the number into  the container number
  int number = int.parse(stdin.readLineSync()!);
  //initializd the variable factorial for finding factorial
  int factorial = 1;
  //for loop for getting the factorial
  for (int i = 1; i <= number; i++) {
    factorial = factorial * i;
  }
  //print the final result
  print("the factorial of $number is :${factorial}");
}
