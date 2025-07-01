// Set Membership Checker:

// Develop a Dart program that checks if a given element belongs to a set. Ask the user to input a set of values and a value to be checked for membership. Display a message in the console indicating whether the value is present in the set or not.

// hint

// 1. Prompt the user to input a set of values (e.g., 1 2 3).
// 2. Parse the input set and ask the user to enter a value to check for membership.
// 3. Check if the entered value is present in the set and display a corresponding message in the console.

import 'dart:io';

void main(List<String> args) {
//taking length of a set

  stdout.write("enter the length of a set: ");

  int a = int.parse(stdin.readLineSync()!);

  //initializing an empty set

  Set<int> set = {};

  //print this message before the adding element in a set

  print("enter element of set one by one:");

  for (int i = 0; i < a; i++) {
    int n = int.parse(stdin.readLineSync()!);

    //adding the elements in the set one by one

    set.add(n);
  }
  //simply printing your set

  print("your set is :${set}");

  //taking a number that you want to match your prevoius set

  stdout
      .write("enter a value that checks if it is presant in the previous set:");

  //this number will store in the variable number

  int number = int.parse(stdin.readLineSync()!);

  //condition for checking is number availabel in your previous set

  if (set.contains(number)) {
    print("your number that you enter is already presant in the your set ");
  } else {
    print("your number that you enter is not presant in your set ");
  }
}
