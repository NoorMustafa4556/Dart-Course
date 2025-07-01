/*

  Project 4: Fibonacci Sequence

  You are tasked with generating a Fibonacci sequence using Dart lists. Implement the following tasks:

  1. Create an empty list called fibonacciSequence.

  2. Prompt the user to enter the length of the Fibonacci sequence they want to generate.

  3. Generate the Fibonacci sequence up to the specified length and store it in the fibonacciSequence list.

  4. Display the generated Fibonacci sequence to the user.

  5. Calculate the sum of all the numbers in the Fibonacci sequence.

  6. Find the maximum and minimum values in the Fibonacci sequence.

  7. Sort the fibonacciSequence list in ascending order.

  8. Display the sorted fibonacciSequence list.

*/

import 'dart:io';

void main(List<String> args) {
  //Create an empty list .

  List<dynamic> fibiconiSequence = [];

  //ask user to enter the size of list

  stdout.write("ENTER THE SIZE OF YOUR LIST :");
  //the length will store in the variable called a

  int a = int.parse(stdin.readLineSync()!);

  // if  this condition meets then add 0
  if (a > 0) {
    //adding in the list
    fibiconiSequence.add(0);
  }
  // if this condition meets then add 1 in the list

  if (a > 1) {
    //adding in the list
    fibiconiSequence.add(1);
  }
//for loop to enter the remaining items in the list

  for (int i = 2; i < a; i++) {
    //enter the fibiconi items in the list one by one

    fibiconiSequence.add(fibiconiSequence[i - 1] + fibiconiSequence[i - 2]);
  }
  //print out your fibiconi list

  print("THE FIBBICONI LIST  OF LENGTH ${a}:${fibiconiSequence}");
  //finding the sum of fibiconi sequence list
  num sumOfFiboconi =
      fibiconiSequence.fold(0, (previous, next) => previous + next);

  //simply printing the sum of fibiconi sequence list

  print("THE SUM OF FIBICONI SEQUENCE LIST IS :${sumOfFiboconi}");
  //finding the maximum value in the fibiconi sequence list
  print(
      "THE MAXIMUM VALUE IN THE FIBICONI SEQUENCE LIST IS :${fibiconiSequence[fibiconiSequence.length - 1]}");
  //finding the minimum value in the fibiconi sequence list

  print("THE MINIMUM VALUE IN THE FIBICONI LIST IS :${fibiconiSequence[0]}");

  //sorting fibiconi sequences list

  fibiconiSequence.sort();

  print("THE SORTED FIBICONI SEQUENCE LIST IS :${fibiconiSequence}");

  //printing the final fibiconi sequence list

  print("THE FINAL FIBICONI SEQUENCE LIST IS :${fibiconiSequence}");
}
