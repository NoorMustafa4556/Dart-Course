// Prime Number Checker: Create a Dart program that asks the user to enter a number and determines whether it is a prime number or not. Use control flow statements to check the divisibility of the number by all numbers less than it and display the result.
import 'dart:io';

void main(List<String> args) {
  //create an empty list in which you add all the divisible of your number

  List divisibleList = [];

  //ask the user to enter a number

  stdout.write(
      "enter a number that you want to check whether if is prime or not: ");

  //your number will store in the variable

  int number = int.parse(stdin.readLineSync()!);

  //condition to check whether the number is prime or not

  if (number % 2 == 1 && number % number == 0) {
    //print if the number is prime

    print("number that you enter is prime. ");
  } else {
    //print if the numebr is not prime

    print("number that you enter is not prime.");

    //for loop for checking all the divisibel list of that number that you enter

    for (int i = 1; i <= number; i++) {
      //condition to express the all divisible of your number

      if (number % i == 0) {
        divisibleList.add(i);
      }
    }
    //print the list of all divisible of your number

    print("the divisible list of your number is:${divisibleList}");
  }
}
