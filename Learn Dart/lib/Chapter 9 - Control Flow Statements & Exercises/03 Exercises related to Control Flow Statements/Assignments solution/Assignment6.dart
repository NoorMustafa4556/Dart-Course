// Number Summation: Write a Dart program that prompts the user to enter a series of numbers and calculates the sum of all the numbers. Use control flow statements and a loop to iterate over the numbers and calculate the sum.
import 'dart:io';

void main(List<String> args) {
  //ask from user to enter the length of series

  stdout.write("enter the length of your series:");

  //store the length in lenght variable

  int lenght = int.parse(stdin.readLineSync()!);

  //initialze a variable for counting the wholw series

  int count = 0;

  //ask user to enter the element of series one by one

  print("enter the series of numbers one by one :");

  //for loop for getting the elements in the series

  for (int i = 0; i < lenght; i++) {
    int a = int.parse(stdin.readLineSync()!);

    //every time the elements will add in the count variable

    count += a;

    //print the sum of all the series that you enter

    print("the sum of your series is :${count}");
  }
}
