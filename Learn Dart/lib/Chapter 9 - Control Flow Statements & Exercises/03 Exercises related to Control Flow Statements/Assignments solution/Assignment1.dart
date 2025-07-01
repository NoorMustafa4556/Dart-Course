// Fibonacci Sequence: Write a Dart program that prompts the user to enter a number and then generates the Fibonacci sequence up to that number. Use a loop and control flow statements (if, else) to calculate and display the sequence.
import 'dart:io';

void main(List<String> args) {
  //create a list to create a fibonacci sequence

  List fibonacciSequence = [];

  //ask the user to enter a number at which fiboncci sequence will create

  stdout.write(
      "enter a number to create the fibonacci sequence to this number: ");

  //store a number at which fibonacci sequence create

  int number = int.parse(stdin.readLineSync()!);

  //condition to inset 0 in the sequence at first

  if (number > 0) {
    fibonacciSequence.add(0);
  }

  //another condition to inset 1 in the sequence

  if (number > 1) {
    fibonacciSequence.add(1);
  }
  //for loop for inserting more elements in the fiboncci sequence

  for (int i = 2; i < number; i++) {
    //add elements in the fibonacci sequence one by one

    fibonacciSequence.add(fibonacciSequence[i - 1] + fibonacciSequence[i - 2]);

    //condition if sequence reach at this number of which you enter

    if (fibonacciSequence[fibonacciSequence.length - 1] == number) {
      //if condition reaches the loop will

      break;
    }
  }
  //print the fibonacci sequence at that number level that you enter

  print("your fibonacciSequence is :${fibonacciSequence}");
}
